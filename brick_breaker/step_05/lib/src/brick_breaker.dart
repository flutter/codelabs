import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'components/components.dart';
import 'config.dart';

class BrickBreaker extends FlameGame {
  BrickBreaker()
      : super(
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  final rand = math.Random();
  final width = gameWidth;
  final height = gameHeight;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;

    world.add(PlayArea());

    world.add(Ball(
        radius: ballRadius,
        position: size / 2,
        velocity:
            Vector2((rand.nextDouble() - 0.5) * gameWidth, gameHeight * 0.2)));

    debugMode = true;
  }
}
