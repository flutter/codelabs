import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/services.dart';
import 'package:forge2d_game/components/brick.dart';

import '../utils.dart';
import 'background.dart';
import 'ground.dart';
import 'player.dart';

class PhysicsGame extends Forge2DGame {
  PhysicsGame()
      : super(
          gravity: Vector2(0, 10),
          cameraComponent:
              CameraComponent.withFixedResolution(width: 800, height: 600),
        );

  late final XmlSpriteSheet aliens;
  late final XmlSpriteSheet elements;
  late final XmlSpriteSheet tiles;

  @override
  FutureOr<void> onLoad() async {
    final loadedImages = await Future.wait([
      images.load('colored_grass.png'),
      images.load('spritesheet_aliens.png'),
      images.load('spritesheet_elements.png'),
      images.load('spritesheet_tiles.png'),
    ]);
    aliens = XmlSpriteSheet(loadedImages[1],
        await rootBundle.loadString('assets/spritesheet_aliens.xml'));
    elements = XmlSpriteSheet(loadedImages[2],
        await rootBundle.loadString('assets/spritesheet_elements.xml'));
    tiles = XmlSpriteSheet(loadedImages[3],
        await rootBundle.loadString('assets/spritesheet_tiles.xml'));

    await world.add(Background(sprite: Sprite(loadedImages[0])));
    await addGround();
    await addPlayer();
    await addBricks();

    return super.onLoad();
  }

  Future<void> addGround() async {
    final grounds = <Ground>[];
    final groundHeight = camera.visibleWorldRect.height / 2 - 3;
    for (var x = camera.visibleWorldRect.left;
        x < camera.visibleWorldRect.right + 6.3;
        x += 6.3) {
      grounds.add(Ground(Vector2(x, groundHeight)));
    }
    return world.addAll(grounds);
  }

  Future<void> addPlayer() async => world.add(
        Player(
          Vector2(
            camera.visibleWorldRect.left * 2 / 3,
            camera.visibleWorldRect.top / 3,
          ),
          color: PlayerColor.randomColor,
        ),
      );

  Future<void> addBricks() async {
    return world.add(
      Brick(
        type: BrickType.metal,
        size: BrickSize.size70x70,
        damage: BrickDamage.some,
        position: Vector2(
          camera.visibleWorldRect.right * 2 / 3,
          camera.visibleWorldRect.bottom / 3,
        ),
      ),
    );
  }

  @override
  update(dt) {
    super.update(dt);
    if (isMounted && world.children.whereType<Player>().isEmpty) {
      addPlayer();
    }
  }
}
