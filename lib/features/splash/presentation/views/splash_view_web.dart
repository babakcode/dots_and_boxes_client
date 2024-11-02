import 'package:dots_boxes_game/core/blocs/socket/socket_bloc.dart';
import 'package:dots_boxes_game/core/blocs/user_player/user_player_cubit.dart';
import 'package:dots_boxes_game/core/exceptions/app_gql_exception.dart';
import 'package:dots_boxes_game/core/ui_components/widgets/container_gradient.dart';
import 'package:dots_boxes_game/features/auth/presentation/views/login_view.dart';
import 'package:dots_boxes_game/features/home/presentation/view/home_view.dart';
import 'package:dots_boxes_game/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:dots_boxes_game/features/splash/presentation/views/splash_view_stub.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashViewState extends SplashViewStateStub {


  @override
  void initState() {
    super.initState();

    /// test
    context.read<SplashCubit>().getTelegramAppInfo().then(
          (value) {
        _verifyDotsBoxes();
      },
    ).catchError((e) {
      ///_showDialog('Cannot read data', 'Please refresh application');
      if(!mounted){
        return;
      }
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginView()),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ContainerGradient(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                      maxWidth: 350,
                      maxHeight: 300,
                      minHeight: 300,
                      minWidth: 350),
                  child: Image.asset(
                    'assets/images/dot_splash.png',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Dots and Boxes',
                  style: TextStyle(fontFamily: 'snak', fontSize: 42),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 160,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.blueGrey.shade500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocListener<SocketBloc, SocketState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      connectedToSocket: (connected, error) {
                        if (connected) {
                          _getPlayerInfo();
                        } else if (error != null) {
                          context
                              .read<SplashCubit>()
                              .changeProgressStatus(error);
                        }
                      },
                      playerInfo: (user) {
                        context.read<UserPlayerCubit>().setUserPlayer = user;
                        _navigateToHomePage();
                      },
                      orElse: () {},
                    );
                  },
                  child: BlocBuilder<SplashCubit, SplashState>(
                    builder: (context, state) {
                      return Text(state.progressStatus ?? 'Loading',
                          style: Theme.of(context).textTheme.bodySmall);
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }

  void _showDialog(String header, String des) {
    showDialog(
        context: context,
        builder: (context) => Dialog(
              // backgroundColor: Colors.grey.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
                // side: BorderSide(color: Colors.grey.shade700),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      header,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      des,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ));
  }

  void _verifyDotsBoxes({String? initData, String? platform}) {
    context
        .read<SplashCubit>()
        .changeProgressStatus('Get user information ...');
    context.read<SplashCubit>().verifyDotsBoxes(
      initData: initData,
      platform: platform,
    ).then(
      (value) {
        if (value) {
          _canAccess();
        } else {
          _showDialog(
            'Platform not supported!',
            'It seems like you try to load this game outside of '
                'Telegram application. Please Load it from Telegram.',
          );
        }
      },
    ).catchError((e) {
      if (e is AppGraphQLException) {
        _showDialog('Something went wrong!', 'Error: ${e.message}');
      }
    });
  }

  void _canAccess() {
    context
        .read<SplashCubit>()
        .changeProgressStatus('Request to validate user data ...');
    context.read<SplashCubit>().canAccess().then((value) {
      _connectToSocket();
    }).catchError((e) {
      if (e is AppGraphQLException) {
        if (e.message == 'REFRESH_TOKEN_REQUIRED') {
          _refreshToken();
          return null;
        } else if (e.message == 'NOT_FOUND_ID') {
          _removeAccessToken();
          return null;
        } else if (e.message == 'ACTION_REQUIRED_FOR_ACTIVATION') {
          _showDialog(
            'Action required for validation',
            'User is not active, Please talk to @BabakCode to fix this problem.',
          );
          return null;
        }
      }
      return null;
    });
  }

  void _refreshToken() {
    context.read<SplashCubit>().changeProgressStatus('Refresh token ...');
    context.read<SplashCubit>().refreshToken().then(
      (value) {
        _connectToSocket();
      },
    ).catchError((e) {
      if (e is AppGraphQLException) {
        if (e.message == 'LOGIN_AGAIN') {
          _removeAccessToken();
          return;
        }
      }
      throw e;
    });
  }

  void _connectToSocket() {
    context.read<SplashCubit>().changeProgressStatus('Connecting to game...');
    context.read<SocketBloc>().add(const SocketEvent.initConnect());
  }

  void _removeAccessToken() async {
    await context.read<SplashCubit>().removeAccessToken();
    if (!mounted) {
      return;
    }
    _verifyDotsBoxes();
  }

  void _navigateToHomePage() async {
    context
        .read<SplashCubit>()
        .changeProgressStatus('Connected to game successfully.');
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) {
      return;
    }
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeView()));
  }

  void _getPlayerInfo() {
    context.read<SplashCubit>().changeProgressStatus('Get player info...');
    context.read<SocketBloc>().add(const SocketEvent.getPlayerInfo());
  }

}