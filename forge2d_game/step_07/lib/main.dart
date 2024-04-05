// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'components/game.dart';

void main() {
  runApp(GameWidget.controlled(gameFactory: MyPhysicsGame.new));
}
