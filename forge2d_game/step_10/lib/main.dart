import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:forge2d_game/components/game.dart';

void main() {
  runApp(GameWidget.controlled(gameFactory: PhysicsGame.new));
}
