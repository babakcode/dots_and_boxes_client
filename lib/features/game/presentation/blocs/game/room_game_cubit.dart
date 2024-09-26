import 'package:bloc/bloc.dart';
import 'package:dots_boxes_game/core/entities/user_player_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_game_state.dart';

part 'room_game_cubit.freezed.dart';

class RoomGameCubit extends Cubit<RoomGameState> {
  RoomGameCubit() : super(const RoomGameState.initial());

  void initUsers(List<UserPlayer> players, String starter) {
    emit(
      RoomGameState.players(
        players: players,
        userTurn: players.firstWhere((element) => element.id == starter),
      ),
    );
  }

  void changeUserTurn(String nextUserId) {
    final players = state.maybeWhen(
      orElse: () => <UserPlayer>[],
      players: (players, userTurn) => players,
    );

    final index = players.indexWhere((element) => element.id == nextUserId);
    if (index == -1) {
      return;
    }

    emit(RoomGameState.players(
      players: players,
      userTurn: players.elementAt(index),
    ));
  }
}
