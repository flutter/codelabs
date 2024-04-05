// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'game.dart';

const groundSize = 21.0;
const groundImageSize = 70.0;

class Ground extends BodyComponent {
  Ground(Vector2 position)
      : _initialPosition = position,
        super(renderBody: false);

  final Vector2 _initialPosition;

  @override
  Body createBody() {
    add(SpriteComponent(
      anchor: Anchor.center,
      scale: Vector2.all(groundSize / groundImageSize),
      sprite: (game as MyPhysicsGame).tiles.getSprite('grass.png'),
      size: Vector2(groundSize, groundSize),
      position: Vector2(0, 0),
    ));
    return world.createBody(
      BodyDef()
        ..position = _initialPosition
        ..type = BodyType.static,
    )..createFixture(FixtureDef(
        PolygonShape()..setAsBox(3, 3, Vector2.zero(), 0),
        friction: 0.3,
      ));
  }
}
