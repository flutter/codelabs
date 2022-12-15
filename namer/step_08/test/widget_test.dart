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
      final wordPairTextWidget = tester.widget<Text>(find.descendant(
        of: find.byType(BigCard),
        matching: find.byType(Text),
      ));
      return wordPairTextWidget.data!;
    }

    // Tap several times and keep a list of word pair values.
    const tryCount = 5;
    final pairs = <String>[
      findWordPair(),
    ];
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
      reason: 'After clicking $tryCount times, '
          'the app should have generated at least two different word pairs. '
          'Instead, the app showed these: $pairs. '
          'That almost certainly means that the word pair is not being '
          'randomly generated at all. The button does not work.',
    );
  });

  testWidgets('Tapping "Like" changes icon', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    Finder findElevatedButtonByIcon(IconData icon) {
      return find.descendant(
        of: find.bySubtype<ElevatedButton>(),
        matching: find.byIcon(icon),
      );
    }

    // At start: an outlined heart icon.
    expect(findElevatedButtonByIcon(Icons.favorite_border), findsOneWidget);
    expect(findElevatedButtonByIcon(Icons.favorite), findsNothing);

    await tester.tap(find.text('Like'));
    await tester.pumpAndSettle();

    // After tap: a full heart icon.
    expect(findElevatedButtonByIcon(Icons.favorite_border), findsNothing);
    expect(findElevatedButtonByIcon(Icons.favorite), findsOneWidget);
  });

  testWidgets('Liked word pair shows up in Favorites',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Find the currently shown word pair.
    final wordPairTextWidget = tester.widget<Text>(find.descendant(
      of: find.byType(BigCard),
      matching: find.byType(Text),
    ));
    final current = wordPairTextWidget.data!;

    // Go to the Favorites page.
    await tester.tap(find.descendant(
      of: find.byType(NavigationRail),
      matching: find.byIcon(Icons.favorite),
    ));
    await tester.pumpAndSettle();

    // Not there yet.
    expect(find.text(current), findsNothing);

    // Go back to the Generator page.
    await tester.tap(find.descendant(
      of: find.byType(NavigationRail),
      matching: find.byIcon(Icons.home),
    ));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Like'));

    // Go to Favorites page once again.
    await tester.tap(find.descendant(
      of: find.byType(NavigationRail),
      matching: find.byIcon(Icons.favorite),
    ));
    await tester.pumpAndSettle();

    // Should be there.
    expect(find.text(current), findsOneWidget);
  });
}
