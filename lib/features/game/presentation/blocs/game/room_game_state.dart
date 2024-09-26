part of 'room_game_cubit.dart';

@freezed
class RoomGameState with _$RoomGameState {
  const factory RoomGameState.initial() = _Initial;

  const factory RoomGameState.players({
    required List<UserPlayer> players,
    required UserPlayer userTurn
  }) = _Players;
}
