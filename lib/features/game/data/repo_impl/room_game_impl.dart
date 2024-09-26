import 'dart:async';
import 'dart:math';
import 'package:dots_boxes_game/core/network_clients/interfaces/socket.dart';
import 'package:dots_boxes_game/features/game/domain/repo/room_game_repo.dart';
import 'package:flutter/foundation.dart';

class RoomGameImpl implements RoomGameRepo {
  final AppSocketClient _socketClient;

  const RoomGameImpl(AppSocketClient socketClient)
      : _socketClient = socketClient;

  @override
  void joinRoom(String roomId) {
    _socketClient.emit('joinRoom', roomId);
  }

  @override
  Stream onRoomGameEvents(ValueSetter onData) {

    // completer for asynchronous;
    StreamController controller = StreamController.broadcast();

    _socketClient.on(
      'roomGame',
      (value) {
        try {
          if (value['type'] == 'gameOver') {
            _socketClient.off('roomGame');
          }
          onData.call(value);
          controller.add(value);
        } catch (e) {
          print(e);
        }
      },
    );
    return controller.stream;
  }

  @override
  Stream playerClickLine(
      {required Point<int> p1,
      required Point<int> p2,
      required String room,
      required ValueSetter ack,
        ValueSetter? onError,
      })  {

    // completer for asynchronous;
    StreamController controller = StreamController.broadcast();

    _socketClient.emitWithAck(
        'playerClickLine',
        {
          'p1': {
            'x': p1.x,
            'y': p1.y,
          },
          'p2': {
            'x': p2.x,
            'y': p2.y,
          },
          'room': room,
        },
        (value) {
          try {
            if (value['res']) {
              ack.call(value);
            }else{
              onError?.call(value['msg']);
            }
            controller.add(value);
          } catch (e) {
            print(e);
          }
        },);

    return controller.stream;
  }
}
