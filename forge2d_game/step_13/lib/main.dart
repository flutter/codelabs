// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameWidget.controlled(
          gameFactory: Forge2DExample.new,
          loadingBuilder: (context) => Center(
            child: CircularProgressIndicator(),
          ),
          errorBuilder: (context, error) => Center(
            child: Text('Error: $error'),
          ),
        ),
      ),
    ),
  );
}

class Forge2DExample extends Forge2DGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    camera.viewport.add(
      BottomRightFpsTextComponent(),
    );
  }
}

class BottomRightFpsTextComponent extends FpsTextComponent {
  BottomRightFpsTextComponent() : super(anchor: Anchor.bottomRight);

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    position = size - Vector2(12, 10);
  }
}
