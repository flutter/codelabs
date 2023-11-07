import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'components/components.dart';
import 'config.dart';

class BrickBreaker extends FlameGame {
  BrickBreaker()
      : super(
            camera: CameraComponent.withFixedResolution(
                width: gameWidth, height: gameHeight));

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    camera.viewfinder.position = Vector2(0, 0);
    camera.viewfinder.anchor = Anchor.topLeft;

    world.add(PlayArea());
  }
}
