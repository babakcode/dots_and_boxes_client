import 'dart:async';

import 'package:dots_boxes_game/core/network_clients/interfaces/socket.dart';
import 'package:dots_boxes_game/features/splash/data/repo/token_service.dart';
import 'package:dots_boxes_game/features/splash/domain/repo/splash_socket_repository.dart';
import 'package:flutter/foundation.dart';

class SplashSocketImpl implements SplashSocketRepo {
  final AppSocketClient _socketClient;
  final TokenService _tokenService;


  const SplashSocketImpl(
      {required AppSocketClient socketPlugin,
      required TokenService tokenService})
      : _socketClient = socketPlugin,
        _tokenService = tokenService;


  @override
  Future<void> connect(VoidCallback onConnect, {required ValueSetter onError}) async {
    final Completer completer = Completer();

    final accessToken = await _tokenService.getAccessToken();
    _socketClient
      ..setAuthHeaders(
          {'token': 'Bearer $accessToken'})
      ..onConnect = () {
        onConnect.call();
        completer.complete();
      }
      ..onConnectError = (data) {
        onError.call(data);
        completer.complete();
      }
      ..connect();

    return completer.future;
  }

  @override
  Future<void> getPlayerInfo(ValueSetter onData, {required ValueSetter onError}) async {
    final Completer completer = Completer();

    _socketClient.emitWithAck('getPlayerInfo', 'My info', (value) {
      onData.call(value);
      completer.complete();
    },);

    return completer.future;
  }
}
