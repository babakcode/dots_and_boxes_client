import 'package:dots_boxes_game/core/env/env.dart';
import 'package:dots_boxes_game/features/home/presentation/view/home_view.dart';
import 'package:dots_boxes_game/features/splash/presentation/bloc/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/my_app.dart';
import 'core/blocs/socket/socket_bloc.dart';
import 'core/blocs/user_player/user_player_cubit.dart';
import 'core/di/di.dart';
import 'core/exceptions/app_gql_exception.dart';
import 'main.dart';

void main() => bootstrapStage(EnvMode.stage);

void bootstrapStage(EnvMode mode) async {
  WidgetsFlutterBinding.ensureInitialized();
  Env.init(mode);
  await setupDI();
  runApp(const Providers(child: MyApp(
    stageWidget: _StageMockWidget(),
  )));
}


class _StageMockWidget extends StatefulWidget {
  const _StageMockWidget();

  @override
  State<_StageMockWidget> createState() => _StageMockWidgetState();
}

class _StageMockWidgetState extends State<_StageMockWidget> {
  @override
  void initState() {
    super.initState();

    _verifyDotsBoxes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<SocketBloc, SocketState>(
          listener: (_, state) {
            state.maybeWhen(
              connectedToSocket: (connected, error) {
                print(error);
                if (connected) {
                  _getPlayerInfo();
                } else if (error != null) {
                  context
                      .read<SplashCubit>()
                      .changeProgressStatus(error);
                }
              },
              playerInfo: (user) {
                print('user $user');
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
        ),
      ),
    );
  }

  Future<void> _verifyDotsBoxes() async {
    await context
        .read<SplashCubit>()
        .verifyDotsBoxes(
      platform: 'weba',
      initData:
      'user=%7B%22id%22%3A31000032%2C%22first_name%22%3A%22BabakTest%22%2C%22last_name%22%3A%22Gahremanzadeh%22%2C%22username%22%3A%22BabakCode%22%2C%22language_code%22%3A%22en%22%2C%22allows_write_to_pm%22%3Atrue%7D&chat_instance=338584334934182876&chat_type=sender&auth_date=1726927328&hash=fae02085891486658f9e89eac9f5775ec5ef9bd9a5f80aab3edf724a81b2129b',
    )
        .then(
          (value) {
            print('verifyDotsBoxes $value');
        if (value) {
          _canAccess();
        } else {
          print('Platform not supported!');
        }
      },
    ).catchError((e) {
      print('e $e');
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
          print('Action required for validation');
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
