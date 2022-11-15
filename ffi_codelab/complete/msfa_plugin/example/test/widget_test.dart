import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:msfa_plugin_example/main.dart';

void main() {
  testWidgets('main screen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyApp(),
    );

    // check for expected progress message
    final initMessage = find.text('MSFA Engine Init: loading...');
    expect(initMessage, findsOneWidget);
  });
}
