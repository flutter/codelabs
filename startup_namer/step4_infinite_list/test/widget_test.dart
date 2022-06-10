// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Basic Flutter widget test. Learn more at https://flutter.dev/docs/testing

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:startup_namer/main.dart';

void main() {
  testWidgets('Codelab smoke test', (tester) async {
    await tester.pumpWidget(const MyApp());

    final textWidgets = tester.widgetList<Text>(find.byType(Text));
    expect(textWidgets.length, greaterThan(2));

    expect(textWidgets.last.data, 'Startup Name Generator');

    final wordPairRegExp = RegExp(r'^[A-Z]\w*[A-Z]\w*$');
    final isWordPair = predicate<String>((s) => wordPairRegExp.hasMatch(s));
    for (final widget in textWidgets.take(textWidgets.length - 1)) {
      expect(widget.data, isWordPair);
    }
  });
}
