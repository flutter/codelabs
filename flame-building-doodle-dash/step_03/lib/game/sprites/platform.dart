// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import '../doodle_dash.dart';

/// The supertype for all Platforms, including Enemies
/// This class adds a hitbox and Collision Callbacks to all subtypes,
/// It also allows the platform to move, if it wants to. All platforms
/// know how to move, and have a 20% chance of being a moving platform
///
/// [T] should be an enum that is used to Switch between spirtes, if necessary
/// Many platforms only need one Sprite, so [T] will be an enum that looks
/// something like: `enum { only }`

abstract class Platform<T> extends SpriteGroupComponent<T>
    with HasGameRef<DoodleDash>, CollisionCallbacks {
  final hitbox = RectangleHitbox();
  bool isMoving = false;

  Platform({
    super.position,
  }) : super(
          size: Vector2.all(100),
          priority: 2, // Ensures platform is always behind Dash
        );

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    // Add collision detection logic
    await add(hitbox);
  }
}


// Add platforms: Add NormalPlatformState Enum

// Add platforms: Add NormalPlatform class
