// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'game.dart';
import 'providers.dart';

void main() {
  runApp(
    ProviderScope(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameHolderWidget(),
      ),
    )),
  );
}

final key = GlobalKey<RiverpodAwareGameWidgetState<Forge2DExample>>(
    debugLabel: 'GameHolderWidgetKey');

class GameHolderWidget extends ConsumerWidget {
  const GameHolderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(forge2dGameProvider);
    return RiverpodAwareGameWidget(
      game: game,
      loadingBuilder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
      errorBuilder: (context, error) => Center(
        child: Text('Error: $error'),
      ),
      key: key,
    );
  }
}
