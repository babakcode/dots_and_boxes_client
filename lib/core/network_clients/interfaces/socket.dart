import 'package:flutter/material.dart';

abstract interface class AppSocketClient{
  late String socketBaseUrl;
  void connect();
  void emit(String e, dynamic data);
  void emitWithAck(String e, dynamic data, ValueSetter ack);
  void on(String e, ValueSetter data);
  void off(String e);
  void setAuthHeaders(Map<String, String> header);
  VoidCallback? onConnect;
  ValueSetter? onConnectError;
}