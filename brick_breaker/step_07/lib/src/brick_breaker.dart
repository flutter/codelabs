import 'dart:async';
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
  final width = gameWidth;
  final height = gameHeight;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;

    world.add(PlayArea());

    world.add(Ball(
        batWidth: batWidth,
        radius: ballRadius,
        position: size / 2,
        velocity:
            Vector2((rand.nextDouble() - 0.5) * gameWidth, gameHeight * 0.2)));

    world.add(Bat(
        size: Vector2(batWidth, batHeight),
        cornerRadius: const Radius.circular(ballRadius / 2),
        position: Vector2(gameWidth / 2, gameHeight * 0.95)));

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
