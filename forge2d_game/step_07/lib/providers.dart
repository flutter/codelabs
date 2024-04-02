// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'game.dart';

part 'providers.g.dart';

/// The resettable game instance.
@riverpod
class Forge2dGame extends _$Forge2dGame {
  var _game = Forge2DExample();

  @override
  Forge2DExample build() => _game;

  void reset() {
    _game = Forge2DExample();
    ref.invalidateSelf();
  }
}

/// An on tap callback.
@riverpod
class OnTap extends _$OnTap {
  int _counter = 0;

  @override
  int build() => _counter;

  void increment() {
    _counter++;
    ref.invalidateSelf();
  }
}

/// The number of balls to have on screen
@riverpod
class BallCount extends _$BallCount {
  int _count = 1;

  @override
  int build() => _count;

  addBall() {
    _count++;
    ref.invalidateSelf();
  }

  removeBall() {
    _count--;
    ref.invalidateSelf();
  }
}
