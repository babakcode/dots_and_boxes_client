import 'package:dots_boxes_game/core/blocs/socket/socket_bloc.dart';
import 'package:dots_boxes_game/core/ui_components/widgets/container_gradient.dart';
import 'package:dots_boxes_game/features/game/presentation/blocs/game/room_game_cubit.dart';
import 'package:dots_boxes_game/features/game/presentation/blocs/count_down/timer_count_down_bloc.dart';
import 'package:dots_boxes_game/features/game/presentation/widgets/game_room_player_left.dart';
import 'package:dots_boxes_game/features/game/presentation/widgets/game_room_player_right.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/entity/game_level_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'game_dots_boxes_page.dart';

class GameRoomPage extends StatefulWidget {
  final GameLevelEntity level;
  final String roomId;

  const GameRoomPage({
    super.key,
    required this.level,
    required this.roomId,
  });

  @override
  State<GameRoomPage> createState() => _GameRoomPageState();
}

class _GameRoomPageState extends State<GameRoomPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () {
        if (!mounted) {
          return;
        }
        context.read<SocketBloc>().add(SocketEvent.joinRoom(widget.roomId));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SocketBloc, SocketState>(
      listener: (context, state) {
        state.whenOrNull(
          startGame: (starter, players) {
            /// init users
            context.read<RoomGameCubit>().initUsers(players, starter);
            context.read<TimerCountDownBloc>().add(
                const TimerCountDownEvent.introCountDownStart(duration: 3));

          },
        );
      },
      child: ContainerGradient(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: BlocBuilder<RoomGameCubit, RoomGameState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: state.maybeMap(
                          orElse: () => [
                            const GameRoomPlayerLeft()
                          ],
                          players: (value) {
                            if (value.players.length == 2) {
                              return [
                                GameRoomPlayerLeft(
                                  player: value.players[0],
                                )
                              ];
                            }

                            return [
                              GameRoomPlayerLeft(
                                player: value.players[0],
                              ),
                              GameRoomPlayerRight(
                                player: value.players[2],
                              ),
                            ];
                          },
                        )),
                    Expanded(
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: [
                          Card(
                            margin: EdgeInsets.zero,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Theme.of(context).colorScheme.surface,
                            child: InteractiveViewer(
                                minScale: 0.1,
                                maxScale: 4.0,
                                boundaryMargin: const EdgeInsets.all(16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: GameDotsBoxesPage(
                                      level: widget.level,
                                    roomId: widget.roomId,
                                  ),
                                )),
                          ),
                          BlocConsumer<TimerCountDownBloc, TimerCountDownState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                completeIntro: () => const SizedBox(),
                                inProgressIntro: (duration) {
                                  return Align(
                                    alignment: Alignment.center,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Theme.of(context).colorScheme.primary,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(32)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Text(
                                          duration.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge?.copyWith(
                                            fontSize: 42
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                orElse: () => const SizedBox(),
                              );
                            },
                            listener: (context, state) {
                              state.whenOrNull(
                                completeIntro: () {
                                  context.read<TimerCountDownBloc>().add(
                                        const TimerCountDownEvent.userTurnStart(
                                          duration: 15,
                                        ),
                                      );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: state.maybeMap(
                          orElse: () => [
                            const GameRoomPlayerLeft()
                          ],
                          players: (value) {
                            if (value.players.length == 2) {
                              return [
                                GameRoomPlayerLeft(
                                  player: value.players[1],
                                )
                              ];
                            }

                            return [
                              GameRoomPlayerLeft(
                                player: value.players[1],
                              ),
                              GameRoomPlayerRight(
                                player: value.players[3],
                              ),
                            ];
                          },
                        )),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
