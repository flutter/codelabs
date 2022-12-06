import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import './player.dart';
import '../doodle_dash.dart';

abstract class PowerUp extends SpriteComponent
    with HasGameRef<DoodleDash>, CollisionCallbacks {
  final hitbox = RectangleHitbox();
  double get jumpSpeedMultiplier;

  PowerUp({
    super.position,
  }) : super(
          size: Vector2.all(50),
          priority: 2, // Ensures platform is always behind Dash
        );

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    // collision detection logic
    await add(hitbox);
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Player && !other.isInvincible && !other.isWearingHat) {
      removeFromParent();
    }
    super.onCollision(intersectionPoints, other);
  }
}

class Rocket extends PowerUp {
  @override
  double get jumpSpeedMultiplier => 3.5;

  Rocket({
    super.position,
  });

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite('game/rocket_1.png');
    size = Vector2(50, 70);
  }
}

class NooglerHat extends PowerUp {
  @override
  double get jumpSpeedMultiplier => 2.5;

  NooglerHat({
    super.position,
  });

  final int activeLengthInMS = 5000;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite('game/noogler_hat.png');
    size = Vector2(75, 50);
  }
}
