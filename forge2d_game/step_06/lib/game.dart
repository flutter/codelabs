// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flame_riverpod/flame_riverpod.dart';

import 'providers.dart';

class Forge2DExample extends Forge2DGame with RiverpodGameMixin {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    await camera.viewport
        .addAll([BottomRightFpsTextComponent(), TapCountComponent()]);
    world.add(Ball());
    await world.addAll(createBoundaries());
  }

  List<Component> createBoundaries() =>
      [for (final position in WallPosition.values) Wall(position)];

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    world.removeAll(world.children.whereType<Wall>());
    world.addAll(createBoundaries());
  }
}

class BottomRightFpsTextComponent extends FpsTextComponent {
  BottomRightFpsTextComponent() : super(anchor: Anchor.bottomRight);

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    position = size - Vector2(12, 10);
  }
}

class Ball extends BodyComponent with TapCallbacks, RiverpodComponentMixin {
  Ball()
      : super(
          fixtureDefs: [
            FixtureDef(
              CircleShape()..radius = 5,
              restitution: 0.8,
              friction: 0.4,
            ),
          ],
          bodyDef: BodyDef(
            angularDamping: 0.8,
            position: Vector2.zero(),
            type: BodyType.dynamic,
          ),
        );

  @override
  void onTapDown(event) {
    ref.read(onTapProvider.notifier).increment();
    body.applyLinearImpulse(Vector2.random() * 5000);
  }
}

enum WallPosition {
  top(label: 'Top'),
  right(label: 'Right'),
  bottom(label: 'Bottom'),
  left(label: 'Left');

  final String label;

  const WallPosition({required this.label});
}

class Wall extends BodyComponent {
  final WallPosition wallPosition;

  Wall(this.wallPosition) : super(bodyDef: BodyDef(position: Vector2.zero()));

  @override
  Body createBody() {
    final visibleRect = game.camera.visibleWorldRect;
    final shape = switch (wallPosition) {
      WallPosition.top => EdgeShape()
        ..set(
          visibleRect.topLeft.toVector2(),
          visibleRect.topRight.toVector2(),
        ),
      WallPosition.right => EdgeShape()
        ..set(
          visibleRect.topRight.toVector2(),
          visibleRect.bottomRight.toVector2(),
        ),
      WallPosition.bottom => EdgeShape()
        ..set(
          visibleRect.bottomLeft.toVector2(),
          visibleRect.bottomRight.toVector2(),
        ),
      WallPosition.left => EdgeShape()
        ..set(
          visibleRect.topLeft.toVector2(),
          visibleRect.bottomLeft.toVector2(),
        ),
    };
    final fixtureDef = FixtureDef(shape, friction: 0.3);
    final bodyDef = BodyDef(
      position: Vector2.zero(),
    );

    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}

class TapCountComponent extends PositionComponent
    with RiverpodComponentMixin, HasGameRef<Forge2DExample> {
  TextComponent? textComponent;
  int currentValue = 0;

  String get _description => 'Taps: $currentValue';

  @override
  void onMount() {
    addToGameWidgetBuild(() {
      ref.listen(onTapProvider, (prev, next) {
        currentValue = next;
        textComponent?.text = _description;
      });
    });
    super.onMount();
    add(textComponent = TextComponent(
      position: Vector2(game.size.x - 10, 10),
      anchor: Anchor.topRight,
      text: _description,
    ));
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    textComponent?.position = Vector2(game.size.x - 10, 10);
  }
}
