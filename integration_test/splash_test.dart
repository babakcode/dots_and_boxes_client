import 'package:dots_boxes_game/app/my_app.dart';
import 'package:dots_boxes_game/core/network_clients/interfaces/socket.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([AppSocketClient])
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();


  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
            (tester) async {

          // Load app widget.
          await tester.pumpWidget(const MyApp());

          // Verify the counter starts at 0.
          expect(find.text('Loading'), findsOneWidget);
        });
  });
}