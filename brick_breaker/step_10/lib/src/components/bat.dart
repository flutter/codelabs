import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

import '../brick_breaker.dart';
import '../config.dart';

class Bat extends PositionComponent
    with DragCallbacks, HasGameReference<BrickBreaker> {
  Bat()
      : super(
          size: Vector2(batWidth, batHeight),
          anchor: Anchor.center,
          children: [RectangleHitbox()],
        );

  final _paint = Paint()
    ..color = const Color(0xff1e6091)
    ..style = PaintingStyle.fill;

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
          Offset.zero & size.toSize(),
          const Radius.circular(ballRadius / 2),
        ),
        _paint);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    super.onDragUpdate(event);
    final cameraZoom = game.camera.viewfinder.zoom;
    var dx = (event.delta / cameraZoom).x;
    position.x =
        (position.x + dx).clamp(batWidth / 2, gameWidth - batWidth / 2);
  }

  void moveBy(double dx) {
    add(MoveToEffect(
      Vector2(
        (position.x + dx).clamp(batWidth / 2, gameWidth - batWidth / 2),
        position.y,
      ),
      EffectController(duration: 0.1),
    ));
  }
}
