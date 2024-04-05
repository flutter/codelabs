// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:characters/characters.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/foundation.dart';

import 'game.dart';

const playerSize = 19.0;
const playerImageSize = 70.0;

enum PlayerColor {
  pink,
  blue,
  green,
  yellow;

  static PlayerColor get randomColor =>
      PlayerColor.values[Random().nextInt(PlayerColor.values.length)];

  String get fileName =>
      'alien${toString().split('.').last.capitalize()}_round.png';
}

class Player extends BodyComponent with ContactCallbacks, DragCallbacks {
  Player(Vector2 position, {this.color = PlayerColor.pink})
      : _initialPosition = position,
        super(renderBody: false);

  final Vector2 _initialPosition;
  final PlayerColor color;

  @override
  Body createBody() {
    final body = world.createBody(
      BodyDef()
        ..position = _initialPosition
        ..type = BodyType.static
        ..angularDamping = 0.1
        ..linearDamping = 0.1
        ..userData = this,
    )..createFixture(
        FixtureDef(CircleShape()..radius = 2.5)
          ..restitution = 0.4
          ..density = 1
          ..friction = 0.5,
      );

    add(SpriteComponent(
      anchor: Anchor.center,
      scale: Vector2.all(playerSize / playerImageSize),
      sprite: (game as MyPhysicsGame).aliens.getSprite(color.fileName),
      size: Vector2(playerSize, playerSize),
      position: Vector2(0, 0),
    ));
    return body;
  }

  @override
  update(double dt) {
    super.update(dt);
    if (!body.isAwake) {
      // TODO: Add some animation before removing the player.
      removeFromParent();
    }

    if (position.y > camera.visibleWorldRect.bottom + 10 ||
        position.x > camera.visibleWorldRect.right + 10 ||
        position.x < camera.visibleWorldRect.left - 10) {
      removeFromParent();
    }
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    debugPrint('Dragged from ${event.localStartPosition.label} '
        'to ${event.localEndPosition.label}');
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    body.setType(BodyType.dynamic);
    body.applyLinearImpulse(Vector2(250, -250));
  }

  @override
  void beginContact(Object other, Contact contact) {
    super.beginContact(other, contact);
    debugPrint('$contact');
    if (other is BodyComponent) {
      debugPrint('Player began contact with ${other.runtimeType}');
    }
  }
}

extension Vector2Label on Vector2 {
  String get label => '(${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})';
}

extension CapitalizeString on String {
  String capitalize() =>
      characters.first.toUpperCase() + characters.skip(1).toLowerCase().join();
}
