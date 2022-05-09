import 'package:flutter_test/flutter_test.dart';
import 'package:tfserving_flutter/main.dart';

void main() {
  testWidgets(' smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TFServingDemo());

    // Verify that our counter starts at 0.
    expect(find.text('Classify'), findsOneWidget);
    expect(find.text('Reset'), findsOneWidget);
  });
}
