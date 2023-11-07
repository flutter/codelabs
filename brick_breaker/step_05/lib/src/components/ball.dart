import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../brick_breaker.dart';
import '../config.dart';

class Ball extends CircleComponent
    with CollisionCallbacks, HasGameRef<BrickBreaker> {
  Ball()
      : super(
            radius: ballRadius,
            anchor: Anchor.center,
            paint: Paint()
              ..color = const Color(0xff1e6091)
              ..style = PaintingStyle.fill);

  final velocity = Vector2.zero();

  @override
  onLoad() async {
    await super.onLoad();
    add(CircleHitbox(radius: ballRadius));
  }

  @override
  void update(double dt) {
    super.update(dt);
    position += velocity * dt;
  }
}
