import 'package:dots_boxes_game/core/blocs/socket/socket_bloc.dart';
import 'package:dots_boxes_game/core/blocs/user_player/user_player_cubit.dart';
import 'package:dots_boxes_game/core/ui_components/widgets/container_gradient.dart';
import 'package:dots_boxes_game/features/game/presentation/pages/game_room_page.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/entity/game_level_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WaitingRoomView extends StatefulWidget {
  final GameLevelEntity gameLevel;

  const WaitingRoomView(this.gameLevel, {super.key});

  @override
  State<WaitingRoomView> createState() => _WaitingRoomViewState();
}

class _WaitingRoomViewState extends State<WaitingRoomView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      if(!mounted){
        return;
      }
      context
          .read<SocketBloc>()
          .add(SocketEvent.joinWaitRoom(level: widget.gameLevel.level));
    },);
  }

  @override
  void dispose() {
    context
        .read<SocketBloc>()
        .add(SocketEvent.leaveWaitRoom(level: widget.gameLevel.level));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ContainerGradient(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Center(
            child: BlocListener<SocketBloc, SocketState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  waitingRoom: (roomId, res, error) {
                    if (roomId != null) {

                      context.read<UserPlayerCubit>().decreaseUserCoins = widget.gameLevel.fee;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GameRoomPage(
                            level: widget.gameLevel,
                            roomId: roomId,
                          ),
                        ),
                      );
                    }
                  },
                );
              },
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
                  Text(
                    'Waiting ...',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge?.copyWith(
                        fontSize: 42
                    ),
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
                  // BlocListener<SocketBloc, SocketState>(
                  //   listener: (context, state) {
                  //     if (state.connected) {
                  //       context.read<SplashCubit>().changeProgressStatus('Connected to game');
                  //       return _navigateToHomePage();
                  //     }else if(state.error != null){
                  //       context.read<SplashCubit>().changeProgressStatus(state.error!);
                  //     }
                  //   },
                  //   child: BlocBuilder<SplashCubit, SplashState>(
                  //     builder: (context, state) {
                  //       return Text(state.progressStatus ?? 'Loading',
                  //           style: Theme.of(context).textTheme.bodySmall);
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
          )),
    );
  }
}
