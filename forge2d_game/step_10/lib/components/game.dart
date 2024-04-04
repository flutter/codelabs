import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/services.dart';

import '../utils.dart';
import 'background.dart';
import 'ground.dart';
import 'player.dart';

class PhysicsGame extends Forge2DGame {
  PhysicsGame() : super(gravity: Vector2(0, 10));

  bool _imagesLoaded = false;
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
    _imagesLoaded = true;
    await addGround();

    await world.addAll([
      Background(sprite: Sprite(loadedImages[0])),
      Player(
        Vector2(camera.visibleWorldRect.left * 2 / 3,
            camera.visibleWorldRect.top / 3),
      ),
    ]);

    return super.onLoad();
  }

  Future<void> addGround() async {
    world.removeAll(world.children.whereType<Ground>());
    final grounds = <Ground>[];
    final groundHeight = camera.visibleWorldRect.height / 2 - 3;
    for (var x = camera.visibleWorldRect.left;
        x < camera.visibleWorldRect.right + 6.3;
        x += 6.3) {
      grounds.add(Ground(Vector2(x, groundHeight)));
    }
    return world.addAll(grounds);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    if (_imagesLoaded) {
      addGround();
    }
  }
}
