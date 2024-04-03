// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'game.dart';

part 'providers.g.dart';

/// The game instance.
@riverpod
Forge2DExample forge2dGame(Forge2dGameRef ref) => Forge2DExample();

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
