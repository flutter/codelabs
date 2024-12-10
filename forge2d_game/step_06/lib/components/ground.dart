// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

const groundSize = 7.0;

class Ground extends BodyComponent {
  Ground(Vector2 position, Sprite sprite)
    : super(
        renderBody: false,
        bodyDef:
            BodyDef()
              ..position = position
              ..type = BodyType.static,
        fixtureDefs: [
          FixtureDef(
            PolygonShape()..setAsBoxXY(groundSize / 2, groundSize / 2),
            friction: 0.3,
          ),
        ],
        children: [
          SpriteComponent(
            anchor: Anchor.center,
            sprite: sprite,
            size: Vector2.all(groundSize),
            position: Vector2(0, 0),
          ),
        ],
      );
}
