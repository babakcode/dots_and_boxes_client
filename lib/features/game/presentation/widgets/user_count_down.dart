import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:dots_boxes_game/features/game/presentation/blocs/count_down/timer_count_down_bloc.dart';
import 'package:dots_boxes_game/features/game/presentation/blocs/game/room_game_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCountDown extends StatelessWidget {
  final UserPlayer player;

  const UserCountDown({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomGameCubit, RoomGameState>(
      builder: (context, roomState) {
        return Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: roomState.mapOrNull(
                players: (value) =>
                    value.userTurn == player ? Colors.white : Colors.transparent,
              ),
              radius: 4,
            ),
            BlocBuilder<TimerCountDownBloc, TimerCountDownState>(
              builder: (context, state) {
                return CircularProgressIndicator(
                  value: roomState.maybeMap(
                    orElse: () => 0,
                    players: (value) => value.userTurn == player
                        ? state.maybeMap(
                            orElse: () => 0,
                            inProgressUserTurn: (value) =>
                                value.duration /
                                TimerCountDownBloc.userTurnDuration)
                        : 0,
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }
}
