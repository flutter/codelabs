import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

import './world.dart';
import 'managers/managers.dart';

enum Character { dash, sparky }

// TODO: Step 2 - This class, and the methods that don't have a TODO comment
// TODO contd - will be included in the starter code.
// TODO contd - pieces of code that aren't commented with a TODO can be ignored
// TODO contd - the TODOS indicate that the code should be explained, even if its in
// TODO contd - the starter code
class DoodleDash extends FlameGame
    with HasKeyboardHandlerComponents, HasCollisionDetection {
  DoodleDash({super.children});

  // TODO: Step 2 - These exist in starter code
  final World _world = World();
  LevelManager levelManager = LevelManager();
  GameManager gameManager = GameManager();
  int screenBufferSpace = 300;
  ObjectManager objectManager = ObjectManager();


  // TODO: Step 3
  // late Player player;


  // TODO: Step 2 - this will be in the starter code. It'll be important to explain
  // TODO contd - the "onLoad" and "add" methods somewhere
  // TODO contd - (doesn't necessarily have to be here, could be in the Player class or elsewhere)
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

    // TODO: Step 07
    // stop updating in between games
    // if (gameManager.isGameOver) {
    //   return;
    // }

    // TODO: Step 2 - in starter code, overlays should be mentioned
    // show the main menu when the game launches
    // And return so the engine doesn't  update as long as the menu is up.
    if (gameManager.isIntro) {
      overlays.add('mainMenuOverlay');
      return;
    }

    if (gameManager.isPlaying) {
      // TODO: STEP 5
      // final Rect worldBounds = Rect.fromLTRB(
      //   0,
      //   camera.position.y - screenBufferSpace,
      //   camera.gameSize.x,
      //   camera.position.y + _world.size.y,
      // );
      // camera.worldBounds = worldBounds;

      // TODO: Step 2 - in starter code, can be ignored
      checkLevelUp();

      // TODO: Step 5
      // Camera should only follow Dash when she's moving up, if she's following down
      // the camera should stay where it is and NOT follow her down.
      // if (player.isMovingDown) {
      //   camera.worldBounds = worldBounds;
      // }

      // TODO: Step 5
      // Camera should only follow Dash when she's moving up, if she's falling down
      // the camera should stay where it is and NOT follow her down.
      // var isInTopHalfOfScreen = player.position.y <= (_world.size.y / 2);
      // if (!player.isMovingDown && isInTopHalfOfScreen) {
      //   camera.followComponent(player);
      // }

      // TODO: step 07
      // if Dash falls off screen, game over!
      // if (player.position.y >
      //     camera.position.y +
      //         _world.size.y +
      //         player.size.y +
      //         screenBufferSpace) {
      //   onLose();
      // }
    }
  }

  // TODO: Step 2 - can be ignored in codelab
  @override
  Color backgroundColor() {
    return const Color.fromARGB(255, 241, 247, 249);
  }

  // TODO: Step 2 -- the code that is included here isn't Flame specific
  // This method sets (or resets) the camera, dash and platform manager.
  // It is called when you start a game. Resets game state
  void initializeGameStart() {

    //reset score
    gameManager.reset();

    // remove platform if necessary, because a new one is made each time a new
    // game is started.
    if (children.contains(objectManager)) objectManager.removeFromParent();

    levelManager.reset();

    // TODO: Step 5
    // player.reset();
    //
    // Setting the World Bounds for the camera will allow the camera to "move up"
    // but stay fixed horizontally, allowing Dash to go out of camera on one side,
    // and re-appear on the other side.
    // camera.worldBounds = Rect.fromLTRB(
    //   0,
    //   -_world.size.y, // top of screen is 0, so negative is already off screen
    //   camera.gameSize.x,
    //   _world.size.y +
    //       screenBufferSpace, // makes sure bottom bound of game is below bottom of screen
    // );
    // camera.followComponent(player);
    //

    // TODO Step 3
    // move dash back to the start
    // player.position = Vector2(
    //   // The total world size divided by 2 is the center, but the player size
    //   // needs to be accounted for
    //   (_world.size.x - player.size.x) / 2,
    //   (_world.size.y - player.size.y) / 2,
    // );

    // reset the the platforms
    objectManager = ObjectManager(
        minVerticalDistanceToNextPlatform: levelManager.minDistance,
        maxVerticalDistanceToNextPlatform: levelManager.maxDistance);

    add(objectManager);

    objectManager.configure(levelManager.level, levelManager.difficulty);
  }

  // void setCharacter() {
  //   player = Player(character: gameManager.character);
  //   player.setJumpSpeed(levelManager.jumpSpeed);
  //   add(player);
  // }

  void startGame() {
    // TODO: Step 3
    // setCharacter();

    initializeGameStart();
    gameManager.state = GameState.playing;
    overlays.remove('mainMenuOverlay');
  }

  void resetGame() {
    startGame();
    overlays.remove('gameOverOverlay');
  }

  // TODO: step 07
  // void onLose() {
  //   gameManager.state = GameState.gameOver;
  //   player.removeFromParent();
  //   overlays.add('gameOverOverlay');
  // }

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

      // Change config for player jump speed

      // TODO: Step 5 - can be glossed over
      // player.setJumpSpeed(levelManager.jumpSpeed);
    }
  }
}
