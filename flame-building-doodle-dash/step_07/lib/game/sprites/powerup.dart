// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import '../doodle_dash.dart';

abstract class PowerUp extends SpriteComponent
    with HasGameRef<DoodleDash>, CollisionCallbacks {
  final hitbox = RectangleHitbox();
  double get jumpSpeedMultiplier;

  PowerUp({
    super.position,
  }) : super(
          size: Vector2.all(50),
          priority: 2,
        );

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    await add(hitbox);
  }
}

// Powerups: Add Rocket class

// Powerups: Add NooglerHat class
