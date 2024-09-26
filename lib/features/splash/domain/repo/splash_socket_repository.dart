import 'package:flutter/foundation.dart';

abstract interface class SplashSocketRepo{
  Future<void> connect(VoidCallback onConnect, {required ValueSetter onError});
  Future<void> getPlayerInfo(ValueSetter onData, {required ValueSetter onError});
}