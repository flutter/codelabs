// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';

import './doodle_dash.dart';

class World extends ParallaxComponent<DoodleDash> {
  @override
  Future<void> onLoad() async {
    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData('game/background/06_Background_Solid.png'),
        ParallaxImageData('game/background/05_Background_Small_Stars.png'),
        ParallaxImageData('game/background/04_Background_Big_Stars.png'),
        ParallaxImageData('game/background/02_Background_Orbs.png'),
        ParallaxImageData('game/background/03_Background_Block_Shapes.png'),
        ParallaxImageData('game/background/01_Background_Squiggles.png'),
      ],
      fill: LayerFill.width,
      repeat: ImageRepeat.repeat,
      baseVelocity: Vector2(0, -5),
      velocityMultiplierDelta: Vector2(0, 1.2),
    );
  }
}
