import 'dart:math';
import 'package:flutter/foundation.dart';

abstract interface class RoomGameRepo {
  void joinRoom(String roomId);

  Stream onRoomGameEvents(ValueSetter onData);

  Stream playerClickLine(
      {required Point<int> p1,
      required Point<int> p2,
      required String room,
      required ValueSetter ack,
        ValueSetter? onError,
      });
}
