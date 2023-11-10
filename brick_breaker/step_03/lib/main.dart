import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final game = FlameGame();
  runApp(GameWidget(game: game));
}
