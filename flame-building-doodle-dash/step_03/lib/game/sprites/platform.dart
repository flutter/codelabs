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

  double direction = 1;
  final Vector2 _velocity = Vector2.zero();
  double speed = 35;

  Platform({
    super.position,
  }) : super(
          size: Vector2.all(100),
          priority: 2,
        );

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    await add(hitbox);

    // More on Platforms: Set isMoving
  }

  // More on Platforms: Add _move method

  // More on Platforms: Override update method
}

// Add platforms: Add NormalPlatformState Enum

// Add platforms: Add NormalPlatform class

// More on Platforms: Add BrokenPlatform State Enum

// More on Platforms: Add BrokenPlatform class

// More on Platforms: Add Add Spring State Enum

// More on Platforms: Add SpringBoard Platform class

// Losing the game: Add EnemyPlatformState Enum

// Losing the game: Add EnemyPlatform class
