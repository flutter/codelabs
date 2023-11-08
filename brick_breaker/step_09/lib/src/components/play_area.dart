import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../config.dart';

class PlayArea extends RectangleComponent {
  PlayArea()
      : super(
          size: Vector2(gameWidth, gameHeight),
          anchor: Anchor.topLeft,
          paint: Paint()..color = const Color(0xfff2e8cf),
          children: [RectangleHitbox()],
        );
}
