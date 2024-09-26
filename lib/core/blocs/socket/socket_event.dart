part of 'socket_bloc.dart';

@freezed
class SocketEvent with _$SocketEvent {
  const factory SocketEvent.initConnect() = _SocketEventInitConnect;
  const factory SocketEvent.getPlayerInfo() = _SocketEventGetPlayerInfo;

  const factory SocketEvent.joinWaitRoom({
    required String level,
  }) = _SocketEventJoinWaitRoom;

  const factory SocketEvent.leaveWaitRoom({
    required String level,
  }) = _SocketEventLeaveWaitRoom;

  const factory SocketEvent.joinRoom(String roomId) = _SocketEventJoinRoom;

  const factory SocketEvent.playerClickLine({
    required Point<int> p1,
    required Point<int> p2,
    required String room,
  }) = _SocketEventPlayerClickLine;
}
