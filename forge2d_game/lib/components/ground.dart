import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'game.dart';

const groundSize = 21.0;
const groundImageSize = 70.0;

class Ground extends BodyComponent {
  Ground(this.groundPosition);

  final Vector2 groundPosition;

  @override
  Body createBody() {
    add(SpriteComponent(
      anchor: Anchor.center,
      scale: Vector2.all(groundSize / groundImageSize),
      sprite: (game as PhysicsGame).tiles.getSprite('grass.png'),
      size: Vector2(groundSize, groundSize),
      position: Vector2(0, 0),
    ));
    return world.createBody(
      BodyDef()
        ..position = groundPosition
        ..type = BodyType.static,
    )..createFixture(FixtureDef(
        PolygonShape()..setAsBox(3, 3, Vector2.zero(), 0),
        friction: 0.3,
      ));
  }
}
