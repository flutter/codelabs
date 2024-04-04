import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'components/game.dart';

void main() {
  runApp(GameWidget.controlled(gameFactory: MyPhysicsGame.new));
}
