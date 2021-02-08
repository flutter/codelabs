// This is a basic Flutter integration test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_app/main.dart';

void main() {
  group('Testing App Performance Tests', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
        as IntegrationTestWidgetsFlutterBinding;

    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Scrolling test', (tester) async {
      await tester.pumpWidget(TestingApp());

      final listFinder = find.byType(ListView);
      final scroller = tester.widget<ListView>(listFinder).controller;

      await binding.traceAction(() async {
        await binding.watchPerformance(() async {
          await scroller.animateTo(
            7000,
            duration: const Duration(seconds: 1),
            curve: Curves.linear,
          );
          await tester.pumpAndSettle();

          await scroller.animateTo(
            -7000,
            duration: const Duration(seconds: 1),
            curve: Curves.linear,
          );
          await tester.pumpAndSettle();
        }, reportKey: 'scrolling_summary');
      }, reportKey: 'scrolling_timeline');
    });

    testWidgets('Favorites operations test', (tester) async {
      await tester.pumpWidget(TestingApp());

      await binding.traceAction(() async {
        await binding.watchPerformance(() async {
          final iconKeys = [
            'icon_0',
            'icon_1',
            'icon_2',
          ];

          for (var icon in iconKeys) {
            await tester.tap(find.byKey(ValueKey(icon)));
            await tester.pumpAndSettle();

            expect(find.text('Added to favorites.'), findsOneWidget);
          }

          await tester.tap(find.text('Favorites'));
          await tester.pumpAndSettle();

          final removeIconKeys = [
            'remove_icon_0',
            'remove_icon_1',
            'remove_icon_2',
          ];

          for (final iconKey in removeIconKeys) {
            await tester.tap(find.byKey(ValueKey(iconKey)));
            await tester.pumpAndSettle();

            expect(find.text('Removed from favorites.'), findsOneWidget);
          }
        }, reportKey: 'favorites_operations_summary');
      }, reportKey: 'favorites_operations_timeline');
    });
  });
}
