// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import 'widgets/crossword_generator_app.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        title: 'Crossword Builder',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: Colors.blueGrey,
          brightness: Brightness.light,
        ),
        home: CrosswordGeneratorApp(),
      ),
    ),
  );
}
