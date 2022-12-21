// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';

import 'package:star_counter/main.dart';

void main() {
  testWidgets('smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StarCounterApp());

    // Verify that our counter starts at 0.
    expect(find.text('GitHub Star Counter'), findsOneWidget);
    expect(find.text('Not present'), findsNothing);
  });
}
