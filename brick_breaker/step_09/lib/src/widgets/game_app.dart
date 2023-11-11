import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../brick_breaker.dart';
import '../config.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final BrickBreaker game;

  @override
  void initState() {
    super.initState();
    game = BrickBreaker();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.pressStart2pTextTheme().apply(
          bodyColor: const Color(0xff184e77),
          displayColor: const Color(0xff184e77),
        ),
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffa9d6e5),
                Color(0xfff2e8cf),
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: FittedBox(
                  child: SizedBox(
                    width: gameWidth,
                    height: gameHeight,
                    child: GameWidget(
                      game: game,
                      overlayBuilderMap: {
                        PlayState.welcome.name: (context, game) => Center(
                              child: Text(
                                'TAP TO PLAY',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                        PlayState.gameOver.name: (context, game) => Center(
                              child: Text(
                                'G A M E   O V E R',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                        PlayState.won.name: (context, game) => Center(
                              child: Text(
                                'Y O U   W O N ! ! !',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
