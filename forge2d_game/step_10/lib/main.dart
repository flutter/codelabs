import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:forge2d_game/components/game.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: PhysicsGameWidget(),
      ),
    );
  }
}

class PhysicsGameWidget extends StatefulWidget {
  const PhysicsGameWidget({super.key});

  @override
  State<PhysicsGameWidget> createState() => _PhysicsGameWidgetState();
}

class _PhysicsGameWidgetState extends State<PhysicsGameWidget> {
  final game = PhysicsGame();
  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}
