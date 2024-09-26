import 'package:flutter_test/flutter_test.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;


void main() {
  testWidgets('Connect socket test', (WidgetTester tester) async {
    final io.Socket socket = io.io('http://localhost:2002/dots-boxes',
        io.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build()
    )
      ..connect();

    expect(socket.connected, false);
  });
}