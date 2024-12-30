import 'package:dots_boxes_game/core/network_clients/interfaces/socket.dart';
import 'package:flutter/foundation.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class AppSocketIOClientImpl implements AppSocketClient{

  final io.Socket _socket;

  AppSocketIOClientImpl(this.socketBaseUrl) :
      _socket =  io.io(socketBaseUrl,
          io.OptionBuilder()
              .setTransports(['websocket'])
              .setPath('/win-wealth/')
              .disableAutoConnect()
              .build()
      ){
    print('start connecting to socket');
    _socket.onConnect((data) {
      print('[Socket]: connected');
      onConnect?.call();
    },);

    _socket.onConnectError((data) {
      print('[Socket-onConnectError]: $data');
      onConnectError?.call(data);
    },);

    _socket.onError((data) {
      print('[Socket-onError]: $data');
      onConnectError?.call(data);
    },);
  }

  @override
  String socketBaseUrl;

  @override
  void emit(String e, dynamic data) {
    _socket.emit(e, data);
  }

  @override
  void emitWithAck(String e, dynamic data, ValueSetter ack) {
    _socket.emitWithAck(e, data, ack: (data){
      ack.call(data);
    });
  }

  @override
  void on(String e, ValueSetter data) {
    _socket.on(e, (onData) {
      data.call(onData);
    });
  }

  @override
  void connect() {
    _socket.connect();
  }

  @override
  void setAuthHeaders(Map<String, String> header) {
    _socket.auth = header;
  }

  @override
  VoidCallback? onConnect;

  @override
  ValueSetter? onConnectError;

  @override
  void off(String e) {
    print('[Socket]: off($e)');
    _socket.off(e);
  }
}