// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

const playerSize = 5.0;

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
  Player(Vector2 position, Sprite sprite)
      : _initialPosition = position,
        _sprite = sprite,
        super(renderBody: false);

  final Vector2 _initialPosition;
  final Sprite _sprite;

  @override
  Body createBody() {
    addAll([
      CustomPainterComponent(
        painter: _DragPainter(this),
        anchor: Anchor.center,
        size: Vector2(playerSize, playerSize),
        position: Vector2(0, 0),
      ),
      SpriteComponent(
        anchor: Anchor.center,
        sprite: _sprite,
        size: Vector2(playerSize, playerSize),
        position: Vector2(0, 0),
      )
    ]);

    return world.createBody(
      BodyDef()
        ..position = _initialPosition
        ..type = BodyType.static
        ..angularDamping = 0.1
        ..linearDamping = 0.1
        ..userData = this,
    )..createFixture(
        FixtureDef(CircleShape()..radius = playerSize / 2)
          ..restitution = 0.4
          ..density = 0.75
          ..friction = 0.5,
      );
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

  Vector2 _dragStart = Vector2.zero();
  Vector2 _dragDelta = Vector2.zero();
  Vector2 get dragDelta => _dragDelta;

  @override
  void onDragStart(DragStartEvent event) {
    super.onDragStart(event);
    _dragStart = event.localPosition;
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    _dragDelta = event.localEndPosition - _dragStart;
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    children.whereType<CustomPainterComponent>().first.removeFromParent();
    body.setType(BodyType.dynamic);
    body.applyLinearImpulse(_dragDelta * -50);
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

extension on String {
  String capitalize() =>
      characters.first.toUpperCase() + characters.skip(1).toLowerCase().join();
}

class _DragPainter extends CustomPainter {
  _DragPainter(this.player);

  final Player player;

  @override
  void paint(Canvas canvas, Size size) {
    if (player.dragDelta != Vector2.zero()) {
      var center = size.center(Offset.zero);
      canvas.drawLine(
          center,
          center + (player.dragDelta * -1).toOffset(),
          Paint()
            ..color = Colors.orange.withOpacity(0.7)
            ..strokeWidth = 0.4
            ..strokeCap = StrokeCap.round);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
