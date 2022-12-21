// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../doodle_dash.dart';

// It won't be a detailed section of the codelab, as its not Flame specific
class GameManager extends Component with HasGameRef<DoodleDash> {
  GameManager();

  Character character = Character.dash;
  ValueNotifier<int> score = ValueNotifier(0);
  GameState state = GameState.intro;

  bool get isPlaying => state == GameState.playing;
  bool get isGameOver => state == GameState.gameOver;
  bool get isIntro => state == GameState.intro;

  void reset() {
    score.value = 0;
    state = GameState.intro;
  }

  void increaseScore() {
    score.value++;
  }

  void selectCharacter(Character selectedCharacter) {
    character = selectedCharacter;
  }
}

enum GameState { intro, playing, gameOver }
