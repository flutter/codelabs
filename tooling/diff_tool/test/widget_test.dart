// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:diff_tool/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Counter increments smoke test',
    (tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const DiffTool());

      expect(find.byKey(beforeKey), findsOneWidget);
      await tester.tap(find.byKey(beforeKey));
      await tester.enterText(find.byKey(beforeKey), 'this is some text');

      expect(find.byKey(afterKey), findsOneWidget);
      await tester.tap(find.byKey(afterKey));
      await tester.enterText(find.byKey(afterKey), 'this is some ALTERED text');

      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(
        tester.widget(find.byKey(outputKey)),
        isA<SelectableText>().having((t) {
          return t.data;
        }, 'Output content', equals('''
@@ -6,12 +6,20 @@
 is some 
+ALTERED 
 text
''')),
      );
    },
  );
}
