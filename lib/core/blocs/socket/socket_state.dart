part of 'socket_bloc.dart';

@freezed
class SocketState with _$SocketState {

  const factory SocketState.unknown({
    dynamic data,
}) = _Unknown;

  const factory SocketState.connectedToSocket({
    required bool connected,
    String? error,
  }) = _SocketStateConnectedToSocket;

  const factory SocketState.playerInfo(UserPlayer player) = _SocketStatePlayerInfo;
  const factory SocketState.waitingRoom({
    String? roomId,
    String? res,
    String? error,
  }) = _SocketStateWatingRoom;

  const factory SocketState.startGame({
    required String starter,
    required List<UserPlayer> players,
  }) = _StartGame;

  const factory SocketState.playerClickLine({
    required LineEntity line,
    required String nextUserId,
  }) = _PlayerClickLine;

  const factory SocketState.gameOver({
    required String? winnerId,
  }) = _GameOver;

}
