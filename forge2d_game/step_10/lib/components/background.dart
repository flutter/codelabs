import 'dart:math';

import 'package:flame/components.dart';

import 'game.dart';

class Background extends SpriteComponent with HasGameReference<MyPhysicsGame> {
  Background({required super.sprite})
      : super(
          anchor: Anchor.center,
          position: Vector2(0, 0),
          size: Vector2(100, 100),
        );

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    this.size = Vector2.all(max(
      game.camera.visibleWorldRect.width,
      game.camera.visibleWorldRect.height,
    ));
  }
}
