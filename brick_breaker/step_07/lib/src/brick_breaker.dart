import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/components.dart';
import 'config.dart';

class BrickBreaker extends FlameGame
    with HasCollisionDetection, KeyboardEvents {
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

    final bat = Bat();
    bat.position = Vector2(gameWidth / 2, gameHeight * 0.95);
    world.add(bat);

    debugMode = true;
  }

  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    super.onKeyEvent(event, keysPressed);
    switch (event.logicalKey) {
      case LogicalKeyboardKey.arrowLeft:
        world.children.whereType<Bat>().first.moveBy(-batStep);
      case LogicalKeyboardKey.arrowRight:
        world.children.whereType<Bat>().first.moveBy(batStep);
    }
    return KeyEventResult.handled;
  }
}
