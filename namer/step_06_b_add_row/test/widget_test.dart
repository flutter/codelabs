import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:namer_app/main.dart';

void main() {
  testWidgets('App starts', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Next'), findsOneWidget);
  });

  testWidgets('Tapping button changes word pair', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    String findWordPair() {
      final wordPairTextWidget = tester.widget<Text>(
        find.descendant(of: find.byType(BigCard), matching: find.byType(Text)),
      );
      return wordPairTextWidget.data!;
    }

    // Tap several times and keep a list of word pair values.
    const tryCount = 5;
    final pairs = <String>[findWordPair()];
    for (var i = 1; i < tryCount; i++) {
      await tester.tap(find.text('Next'));
      await tester.pumpAndSettle();
      pairs.add(findWordPair());
    }

    expect(
      // Converting the list to a set to remove duplicates.
      pairs.toSet(),
      // An occassional duplicate word pair is okay and expected.
      // We only fail this test when there is zero variance - all the
      // word pairs are the same, even though we clicked 'Next' several times.
      hasLength(greaterThan(1)),
      reason:
          'After clicking $tryCount times, '
          'the app should have generated at least two different word pairs. '
          'Instead, the app showed these: $pairs. '
          'That almost certainly means that the word pair is not being '
          'randomly generated at all. The button does not work.',
    );
  });
}
