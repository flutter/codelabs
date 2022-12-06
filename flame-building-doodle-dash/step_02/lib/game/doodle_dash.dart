import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

import './world.dart';
import 'managers/managers.dart';

enum Character { dash, sparky }

class DoodleDash extends FlameGame
    with HasKeyboardHandlerComponents, HasCollisionDetection {
  DoodleDash({super.children});

  final World _world = World();
  LevelManager levelManager = LevelManager();
  GameManager gameManager = GameManager();
  int screenBufferSpace = 300;
  ObjectManager objectManager = ObjectManager();

  @override
  Future<void> onLoad() async {
    await add(_world);

    // add Game Manager
    await add(gameManager);

    // add the pause button and score keeper
    overlays.add('gameOverlay');

    // add level/difficulty manager
    await add(levelManager);
  }

  @override
  void update(double dt) {
    super.update(dt);

    // show the main menu when the game launches
    // And return so the engine doesn't  update as long as the menu is up.
    if (gameManager.isIntro) {
      overlays.add('mainMenuOverlay');
      return;
    }

    if (gameManager.isPlaying) {
      checkLevelUp();
    }
  }

  @override
  Color backgroundColor() {
    return const Color.fromARGB(255, 241, 247, 249);
  }

  // This method sets (or resets) the camera, dash and platform manager.
  // It is called when you start a game. Resets game state
  void initializeGameStart() {
    //reset score
    gameManager.reset();

    // remove platform if necessary, because a new one is made each time a new
    // game is started.
    if (children.contains(objectManager)) objectManager.removeFromParent();

    levelManager.reset();

    // reset the the platforms
    objectManager = ObjectManager(
        minVerticalDistanceToNextPlatform: levelManager.minDistance,
        maxVerticalDistanceToNextPlatform: levelManager.maxDistance);

    add(objectManager);

    objectManager.configure(levelManager.level, levelManager.difficulty);
  }

  void startGame() {
    initializeGameStart();
    gameManager.state = GameState.playing;
    overlays.remove('mainMenuOverlay');
  }

  void resetGame() {
    startGame();
    overlays.remove('gameOverOverlay');
  }

  void togglePauseState() {
    if (paused) {
      resumeEngine();
    } else {
      pauseEngine();
    }
  }

  void checkLevelUp() {
    if (levelManager.shouldLevelUp(gameManager.score.value)) {
      levelManager.increaseLevel();

      // Change config for how platforms are generated
      objectManager.configure(levelManager.level, levelManager.difficulty);
    }
  }
}
