import 'package:flutter_test/flutter_test.dart';
import 'package:pesto_example/main.dart';

void main() {
  testWidgets('Smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());
  });
}
