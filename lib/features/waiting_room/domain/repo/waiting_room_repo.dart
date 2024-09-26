import 'package:flutter/foundation.dart';

abstract interface class WaitingRoomRepository{
  Future<void> joinWaitRoom(String roomLevel, ValueSetter onJoinRoom,
      {
    required ValueSetter onError,
    ValueSetter? onResponse,
  });
  void leaveWaitingRoom([String? roomLevel]);
}