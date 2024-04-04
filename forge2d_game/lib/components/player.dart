import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/foundation.dart';

import '../utils.dart';
import 'game.dart';

const playerSize = 19.0;
const playerImageSize = 70.0;

class Player extends BodyComponent with ContactCallbacks, DragCallbacks {
  Player(this.playerPosition);

  Vector2 playerPosition;

  @override
  Body createBody() {
    final body = world.createBody(
      BodyDef()
        ..position = playerPosition
        ..type = BodyType.static
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
      sprite: (game as PhysicsGame).aliens.getSprite('alienGreen_round.png'),
      size: Vector2(playerSize, playerSize),
      position: Vector2(0, 0),
    ));
    return body;
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
}
