import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'components/components.dart';
import 'config.dart';

class BrickBreaker extends FlameGame with HasCollisionDetection {
  BrickBreaker()
      : super(
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  final rand = math.Random();

  @override
  onLoad() {
    super.onLoad();

    camera.viewfinder.position = Vector2(0, 0);
    camera.viewfinder.anchor = Anchor.topLeft;

    world.add(PlayArea());

    final ball = Ball();
    ball.position = size / 2;
    ball.velocity.setValues(
      (rand.nextDouble() - 0.5) * gameWidth,
      gameHeight * 0.2,
    );
    world.add(ball);

    debugMode = true;
  }
}
