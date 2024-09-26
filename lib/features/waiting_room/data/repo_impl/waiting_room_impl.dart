import 'dart:async';
import 'dart:developer';

import 'package:dots_boxes_game/core/network_clients/interfaces/socket.dart';
import 'package:dots_boxes_game/features/waiting_room/domain/repo/waiting_room_repo.dart';
import 'package:flutter/foundation.dart';

class WaitingRoomImpl implements WaitingRoomRepository {
  final AppSocketClient _socketClient;

  WaitingRoomImpl(AppSocketClient socketClient)
      : _socketClient = socketClient;

  // completer for asynchronous;
  Completer completer = Completer();

  @override
  Future<void> joinWaitRoom(
    String level,
    ValueSetter onData, {
    required ValueSetter onError,
    ValueSetter? onResponse,
  }) {
    completer = Completer();

    // ✅ This event calls to join the game
    _socketClient.on('joinRoom', (value) {
      onData.call(value);
      completer.complete();
    },);

    // 👋 Emit that you want to join the game
    _socketClient.emitWithAck(
      'joinWaitRoom',
      {
        "level": level,
      },
      // Function callback 🔙 (ack)
      (value) {
        print('[joinWaitRoom] ack: $value');
        try {
          if (value['success']) {
            onResponse?.call(value['room']);
            return;
          }

          onError.call(value['msg']);
        } catch (e) {
          // ☹️ unexpected error
          log('joinWaitRoom', error: e);
          print('joinWaitRoom error $e');
          onError.call('Unexpected error!');
          completer.complete();
        }
      },
    );

    return completer.future;
  }

  @override
  void leaveWaitingRoom([String? roomLevel]) {
    _socketClient.off('joinRoom');

    if (roomLevel != null) {
      _socketClient.emit("leaveWaitRoom", {
        "level": roomLevel,
      });
      completer.complete(null);
    }
  }
}
