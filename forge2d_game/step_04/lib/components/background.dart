// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'package:flame/components.dart';
import 'game.dart';

class Background extends SpriteComponent with HasGameReference<MyPhysicsGame> {
  Background({required super.sprite})
    : super(anchor: Anchor.center, position: Vector2(0, 0));

  @override
  void onMount() {
    super.onMount();

    size = Vector2.all(
      max(
        game.camera.visibleWorldRect.width,
        game.camera.visibleWorldRect.height,
      ),
    );
  }
}
