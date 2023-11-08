import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../brick_breaker.dart';
import '../config.dart';
import 'play_area.dart';

class Ball extends CircleComponent
    with CollisionCallbacks, HasGameReference<BrickBreaker> {
  Ball()
      : super(
            radius: ballRadius,
            anchor: Anchor.center,
            paint: Paint()
              ..color = const Color(0xff1e6091)
              ..style = PaintingStyle.fill,
            children: [CircleHitbox(radius: ballRadius)]);

  final velocity = Vector2.zero();

  @override
  void update(double dt) {
    super.update(dt);
    position += velocity * dt;
  }

  @override
  void onCollisionStart(
      Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollisionStart(intersectionPoints, other);
    if (other is PlayArea) {
      if (intersectionPoints.first.y <= 0) {
        if (velocity.y < 0) velocity.y = -velocity.y;
      } else if (intersectionPoints.first.x <= 0) {
        if (velocity.x < 0) velocity.x = -velocity.x;
      } else if (intersectionPoints.first.x >= gameWidth) {
        if (velocity.x > 0) velocity.x = -velocity.x;
      } else if (intersectionPoints.first.y >= gameHeight) {
        game.world.remove(this);
      }
    } else {
      debugPrint('collision with $other');
    }
  }
}
