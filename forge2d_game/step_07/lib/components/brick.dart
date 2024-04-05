// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui' as ui;

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

import 'game.dart';

const playerSize = 19.0;

enum BrickType {
  explosive,
  glass,
  metal,
  stone,
  wood;
}

enum BrickSize {
  size70x70(ui.Size(70, 70)),
  size140x70(ui.Size(140, 70)),
  size220x70(ui.Size(220, 70)),
  size70x140(ui.Size(70, 140)),
  size140x140(ui.Size(140, 140)),
  size220x140(ui.Size(220, 140)),
  size140x220(ui.Size(140, 220)),
  size70x220(ui.Size(70, 220));

  final ui.Size size;

  const BrickSize(this.size);
}

enum BrickDamage { none, some, lots }

class Brick extends BodyComponent with ContactCallbacks {
  Brick(
      {required this.type,
      required this.size,
      required BrickDamage damage,
      required Vector2 position})
      : _damage = damage,
        _initialPosition = position,
        super(renderBody: false);

  late final SpriteComponent _spriteComponent;
  final Vector2 _initialPosition;
  final BrickType type;
  final BrickSize size;

  BrickDamage _damage;
  BrickDamage get damage => _damage;
  set damage(BrickDamage value) {
    _damage = value;
    final sprite = (game as MyPhysicsGame).elements.getSprite(
          _brickFileName(type, size, _damage),
        );
    _spriteComponent.sprite = sprite;
  }

  String _brickFileName(BrickType type, BrickSize size, BrickDamage damage) {
    return switch ((type, size, damage)) {
      (BrickType.explosive, BrickSize.size140x70, BrickDamage.none) =>
        'elementExplosive009.png',
      (BrickType.explosive, BrickSize.size140x70, BrickDamage.some) =>
        'elementExplosive012.png',
      (BrickType.explosive, BrickSize.size140x70, BrickDamage.lots) =>
        'elementExplosive050.png',
      (BrickType.glass, BrickSize.size140x70, BrickDamage.none) =>
        'elementGlass010.png',
      (BrickType.glass, BrickSize.size140x70, BrickDamage.some) =>
        'elementGlass013.png',
      (BrickType.glass, BrickSize.size140x70, BrickDamage.lots) =>
        'elementGlass048.png',
      (BrickType.metal, BrickSize.size140x70, BrickDamage.none) =>
        'elementMetal009.png',
      (BrickType.metal, BrickSize.size140x70, BrickDamage.some) =>
        'elementMetal012.png',
      (BrickType.metal, BrickSize.size140x70, BrickDamage.lots) =>
        'elementMetal050.png',
      (BrickType.stone, BrickSize.size140x70, BrickDamage.none) =>
        'elementStone009.png',
      (BrickType.stone, BrickSize.size140x70, BrickDamage.some) =>
        'elementStone012.png',
      (BrickType.stone, BrickSize.size140x70, BrickDamage.lots) =>
        'elementStone047.png',
      (BrickType.wood, BrickSize.size140x70, BrickDamage.none) =>
        'elementWood011.png',
      (BrickType.wood, BrickSize.size140x70, BrickDamage.some) =>
        'elementWood014.png',
      (BrickType.wood, BrickSize.size140x70, BrickDamage.lots) =>
        'elementWood054.png',
      (BrickType.explosive, BrickSize.size70x70, BrickDamage.none) =>
        'elementExplosive011.png',
      (BrickType.explosive, BrickSize.size70x70, BrickDamage.some) =>
        'elementExplosive014.png',
      (BrickType.explosive, BrickSize.size70x70, BrickDamage.lots) =>
        'elementExplosive049.png',
      (BrickType.glass, BrickSize.size70x70, BrickDamage.none) =>
        'elementGlass011.png',
      (BrickType.glass, BrickSize.size70x70, BrickDamage.some) =>
        'elementGlass012.png',
      (BrickType.glass, BrickSize.size70x70, BrickDamage.lots) =>
        'elementGlass046.png',
      (BrickType.metal, BrickSize.size70x70, BrickDamage.none) =>
        'elementMetal011.png',
      (BrickType.metal, BrickSize.size70x70, BrickDamage.some) =>
        'elementMetal014.png',
      (BrickType.metal, BrickSize.size70x70, BrickDamage.lots) =>
        'elementMetal049.png',
      (BrickType.stone, BrickSize.size70x70, BrickDamage.none) =>
        'elementStone011.png',
      (BrickType.stone, BrickSize.size70x70, BrickDamage.some) =>
        'elementStone014.png',
      (BrickType.stone, BrickSize.size70x70, BrickDamage.lots) =>
        'elementStone046.png',
      (BrickType.wood, BrickSize.size70x70, BrickDamage.none) =>
        'elementWood010.png',
      (BrickType.wood, BrickSize.size70x70, BrickDamage.some) =>
        'elementWood013.png',
      (BrickType.wood, BrickSize.size70x70, BrickDamage.lots) =>
        'elementWood045.png',
      (BrickType.explosive, BrickSize.size220x70, BrickDamage.none) =>
        'elementExplosive013.png',
      (BrickType.explosive, BrickSize.size220x70, BrickDamage.some) =>
        'elementExplosive016.png',
      (BrickType.explosive, BrickSize.size220x70, BrickDamage.lots) =>
        'elementExplosive051.png',
      (BrickType.glass, BrickSize.size220x70, BrickDamage.none) =>
        'elementGlass014.png',
      (BrickType.glass, BrickSize.size220x70, BrickDamage.some) =>
        'elementGlass017.png',
      (BrickType.glass, BrickSize.size220x70, BrickDamage.lots) =>
        'elementGlass049.png',
      (BrickType.metal, BrickSize.size220x70, BrickDamage.none) =>
        'elementMetal013.png',
      (BrickType.metal, BrickSize.size220x70, BrickDamage.some) =>
        'elementMetal016.png',
      (BrickType.metal, BrickSize.size220x70, BrickDamage.lots) =>
        'elementMetal051.png',
      (BrickType.stone, BrickSize.size220x70, BrickDamage.none) =>
        'elementStone013.png',
      (BrickType.stone, BrickSize.size220x70, BrickDamage.some) =>
        'elementStone016.png',
      (BrickType.stone, BrickSize.size220x70, BrickDamage.lots) =>
        'elementStone048.png',
      (BrickType.wood, BrickSize.size220x70, BrickDamage.none) =>
        'elementWood012.png',
      (BrickType.wood, BrickSize.size220x70, BrickDamage.some) =>
        'elementWood015.png',
      (BrickType.wood, BrickSize.size220x70, BrickDamage.lots) =>
        'elementWood047.png',
      (BrickType.explosive, BrickSize.size70x140, BrickDamage.none) =>
        'elementExplosive017.png',
      (BrickType.explosive, BrickSize.size70x140, BrickDamage.some) =>
        'elementExplosive022.png',
      (BrickType.explosive, BrickSize.size70x140, BrickDamage.lots) =>
        'elementExplosive052.png',
      (BrickType.glass, BrickSize.size70x140, BrickDamage.none) =>
        'elementGlass018.png',
      (BrickType.glass, BrickSize.size70x140, BrickDamage.some) =>
        'elementGlass023.png',
      (BrickType.glass, BrickSize.size70x140, BrickDamage.lots) =>
        'elementGlass050.png',
      (BrickType.metal, BrickSize.size70x140, BrickDamage.none) =>
        'elementMetal017.png',
      (BrickType.metal, BrickSize.size70x140, BrickDamage.some) =>
        'elementMetal022.png',
      (BrickType.metal, BrickSize.size70x140, BrickDamage.lots) =>
        'elementMetal052.png',
      (BrickType.stone, BrickSize.size70x140, BrickDamage.none) =>
        'elementStone017.png',
      (BrickType.stone, BrickSize.size70x140, BrickDamage.some) =>
        'elementStone022.png',
      (BrickType.stone, BrickSize.size70x140, BrickDamage.lots) =>
        'elementStone049.png',
      (BrickType.wood, BrickSize.size70x140, BrickDamage.none) =>
        'elementWood016.png',
      (BrickType.wood, BrickSize.size70x140, BrickDamage.some) =>
        'elementWood021.png',
      (BrickType.wood, BrickSize.size70x140, BrickDamage.lots) =>
        'elementWood048.png',
      (BrickType.explosive, BrickSize.size140x140, BrickDamage.none) =>
        'elementExplosive018.png',
      (BrickType.explosive, BrickSize.size140x140, BrickDamage.some) =>
        'elementExplosive023.png',
      (BrickType.explosive, BrickSize.size140x140, BrickDamage.lots) =>
        'elementExplosive053.png',
      (BrickType.glass, BrickSize.size140x140, BrickDamage.none) =>
        'elementGlass019.png',
      (BrickType.glass, BrickSize.size140x140, BrickDamage.some) =>
        'elementGlass024.png',
      (BrickType.glass, BrickSize.size140x140, BrickDamage.lots) =>
        'elementGlass051.png',
      (BrickType.metal, BrickSize.size140x140, BrickDamage.none) =>
        'elementMetal018.png',
      (BrickType.metal, BrickSize.size140x140, BrickDamage.some) =>
        'elementMetal023.png',
      (BrickType.metal, BrickSize.size140x140, BrickDamage.lots) =>
        'elementMetal053.png',
      (BrickType.stone, BrickSize.size140x140, BrickDamage.none) =>
        'elementStone018.png',
      (BrickType.stone, BrickSize.size140x140, BrickDamage.some) =>
        'elementStone023.png',
      (BrickType.stone, BrickSize.size140x140, BrickDamage.lots) =>
        'elementStone050.png',
      (BrickType.wood, BrickSize.size140x140, BrickDamage.none) =>
        'elementWood017.png',
      (BrickType.wood, BrickSize.size140x140, BrickDamage.some) =>
        'elementWood022.png',
      (BrickType.wood, BrickSize.size140x140, BrickDamage.lots) =>
        'elementWood049.png',
      (BrickType.explosive, BrickSize.size220x140, BrickDamage.none) =>
        'elementExplosive019.png',
      (BrickType.explosive, BrickSize.size220x140, BrickDamage.some) =>
        'elementExplosive024.png',
      (BrickType.explosive, BrickSize.size220x140, BrickDamage.lots) =>
        'elementExplosive054.png',
      (BrickType.glass, BrickSize.size220x140, BrickDamage.none) =>
        'elementGlass020.png',
      (BrickType.glass, BrickSize.size220x140, BrickDamage.some) =>
        'elementGlass025.png',
      (BrickType.glass, BrickSize.size220x140, BrickDamage.lots) =>
        'elementGlass052.png',
      (BrickType.metal, BrickSize.size220x140, BrickDamage.none) =>
        'elementMetal019.png',
      (BrickType.metal, BrickSize.size220x140, BrickDamage.some) =>
        'elementMetal024.png',
      (BrickType.metal, BrickSize.size220x140, BrickDamage.lots) =>
        'elementMetal054.png',
      (BrickType.stone, BrickSize.size220x140, BrickDamage.none) =>
        'elementStone019.png',
      (BrickType.stone, BrickSize.size220x140, BrickDamage.some) =>
        'elementStone024.png',
      (BrickType.stone, BrickSize.size220x140, BrickDamage.lots) =>
        'elementStone051.png',
      (BrickType.wood, BrickSize.size220x140, BrickDamage.none) =>
        'elementWood018.png',
      (BrickType.wood, BrickSize.size220x140, BrickDamage.some) =>
        'elementWood023.png',
      (BrickType.wood, BrickSize.size220x140, BrickDamage.lots) =>
        'elementWood050.png',
      (BrickType.explosive, BrickSize.size70x220, BrickDamage.none) =>
        'elementExplosive020.png',
      (BrickType.explosive, BrickSize.size70x220, BrickDamage.some) =>
        'elementExplosive025.png',
      (BrickType.explosive, BrickSize.size70x220, BrickDamage.lots) =>
        'elementExplosive055.png',
      (BrickType.glass, BrickSize.size70x220, BrickDamage.none) =>
        'elementGlass021.png',
      (BrickType.glass, BrickSize.size70x220, BrickDamage.some) =>
        'elementGlass026.png',
      (BrickType.glass, BrickSize.size70x220, BrickDamage.lots) =>
        'elementGlass053.png',
      (BrickType.metal, BrickSize.size70x220, BrickDamage.none) =>
        'elementMetal020.png',
      (BrickType.metal, BrickSize.size70x220, BrickDamage.some) =>
        'elementMetal025.png',
      (BrickType.metal, BrickSize.size70x220, BrickDamage.lots) =>
        'elementMetal055.png',
      (BrickType.stone, BrickSize.size70x220, BrickDamage.none) =>
        'elementStone020.png',
      (BrickType.stone, BrickSize.size70x220, BrickDamage.some) =>
        'elementStone025.png',
      (BrickType.stone, BrickSize.size70x220, BrickDamage.lots) =>
        'elementStone052.png',
      (BrickType.wood, BrickSize.size70x220, BrickDamage.none) =>
        'elementWood019.png',
      (BrickType.wood, BrickSize.size70x220, BrickDamage.some) =>
        'elementWood024.png',
      (BrickType.wood, BrickSize.size70x220, BrickDamage.lots) =>
        'elementWood051.png',
      (BrickType.explosive, BrickSize.size140x220, BrickDamage.none) =>
        'elementExplosive021.png',
      (BrickType.explosive, BrickSize.size140x220, BrickDamage.some) =>
        'elementExplosive026.png',
      (BrickType.explosive, BrickSize.size140x220, BrickDamage.lots) =>
        'elementExplosive056.png',
      (BrickType.glass, BrickSize.size140x220, BrickDamage.none) =>
        'elementGlass022.png',
      (BrickType.glass, BrickSize.size140x220, BrickDamage.some) =>
        'elementGlass027.png',
      (BrickType.glass, BrickSize.size140x220, BrickDamage.lots) =>
        'elementGlass054.png',
      (BrickType.metal, BrickSize.size140x220, BrickDamage.none) =>
        'elementMetal021.png',
      (BrickType.metal, BrickSize.size140x220, BrickDamage.some) =>
        'elementMetal026.png',
      (BrickType.metal, BrickSize.size140x220, BrickDamage.lots) =>
        'elementMetal056.png',
      (BrickType.stone, BrickSize.size140x220, BrickDamage.none) =>
        'elementStone021.png',
      (BrickType.stone, BrickSize.size140x220, BrickDamage.some) =>
        'elementStone026.png',
      (BrickType.stone, BrickSize.size140x220, BrickDamage.lots) =>
        'elementStone053.png',
      (BrickType.wood, BrickSize.size140x220, BrickDamage.none) =>
        'elementWood020.png',
      (BrickType.wood, BrickSize.size140x220, BrickDamage.some) =>
        'elementWood025.png',
      (BrickType.wood, BrickSize.size140x220, BrickDamage.lots) =>
        'elementWood052.png',
    };
  }

  @override
  Body createBody() {
    final body = world.createBody(
      BodyDef()
        ..position = _initialPosition
        ..type = BodyType.dynamic
        ..userData = this,
    )..createFixture(
        FixtureDef(
          PolygonShape()
            ..setAsBox(
                size.size.width / 20, size.size.height / 20, Vector2.zero(), 0),
        )
          ..restitution = 0.4
          ..density = 1
          ..friction = 0.5,
      );

    _spriteComponent = SpriteComponent(
      anchor: Anchor.center,
      scale: Vector2.all(1),
      sprite: (game as MyPhysicsGame).elements.getSprite(
            _brickFileName(type, size, _damage),
          ),
      size: size.size.toVector2() / 10,
      position: Vector2(0, 0),
    );
    add(_spriteComponent);
    return body;
  }
}
