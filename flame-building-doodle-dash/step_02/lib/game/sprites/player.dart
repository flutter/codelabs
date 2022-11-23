// TODO: Step 3
// import 'dart:async';
//
// import 'package:flame/collisions.dart';
// import 'package:flame/components.dart';
// import 'package:flutter/services.dart';
//
// import '../doodle_dash.dart';
// import 'sprites.dart';

// TODO: Step 3
// enum PlayerState {
//   left,
//   right,
//   center,
//   rocket,
//   nooglerCenter,
//   nooglerLeft,
//   nooglerRight
// }

// TODO: Step 3
// class Player extends SpriteGroupComponent<PlayerState>
//     with HasGameRef<DoodleDash>, KeyboardHandler, CollisionCallbacks {
//   Player({
//     super.position,
//     required this.character,
//     this.jumpSpeed = 600,
//   })
//       : super(
//           size: Vector2(79, 109),
//           anchor: Anchor.center,
//           priority: 1,
//         );


  // TODO: STEP 3
  // used to calculate if the user is moving Dash left (-1) or right (1)
  // When moving left, the x-axis velocity is multiplied by -1, resulting in a negative number
  // The numbers on the x-axis increase from left to right, so a negative number moves toward the left.
  // When moving right, the result will be a positive number
  // If the number is 0, Dash is moving vertically
  // int _hAxisInput = 0;
  // final int movingLeftInput = -1;
  // final int movingRightInput = 1;
  // Vector2 _velocity = Vector2.zero();
  // bool get isMovingDown => _velocity.y > 0;

  // TODO: Step 3
  // Character character;

  // TODO: Step 5
  // TODO: cont'd -- this will exist at step 3 to make the compiler happy, but doesn't get used until Step 5
  // used to calculate the horizontal movement speed
  // final double _gravity = 9; // acceleration pulling Dash down
  // double jumpSpeed; // vertical travel speed

  // TODO: STEP 3
  // @override
  // Future<void> onLoad() async {
  //   await super.onLoad();
  //
  //   // Add collision detection on Dash
  //   await add(CircleHitbox());
  //
  //   await _loadCharacterSprites();
  //   current = PlayerState.center;
  // }


  // TODO: STEP 03 - This method will be added in Step 3,
  // TODO: cont'd - but it will be added to throughout the steps
  // @override
  // void update(double dt) {
  //   if (gameRef.gameManager.isIntro || gameRef.gameManager.isGameOver) return;
  //
  //   // TODO Step 03
  //   // Dash's horizontal velocity
  //   // _velocity.x = _hAxisInput * jumpSpeed;
  //
  //   // TODO: Step 03
  //   // final double dashHorizontalCenter = size.x / 2;
  //
  //   // TODO: Step 03
  //   // infinite side boundaries if Dash's body is off the screen (position is from center)
  //   // if (position.x < dashHorizontalCenter) {
  //   //   position.x = gameRef.size.x - (dashHorizontalCenter);
  //   // }
  //   // if (position.x > gameRef.size.x - (dashHorizontalCenter)) {
  //   //   position.x = dashHorizontalCenter;
  //   // }
  //
  //   // TODO Step 05
  //   // Gravity is always acting on Dash's vertical velocity
  //   // _velocity.y += _gravity;
  //
  //   // TODO: Step 03
  //   // Calculate Dash's current position based on her velocity over elapsed time
  //   // since last update cycle
  //   // position += _velocity * dt;
  //   super.update(dt);
  // }

  // TODO: Step 03
  // When arrow keys are pressed, change Dash's travel direction + sprite
  // @override
  // bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
  //   _hAxisInput = 0; // by default not going left or right
  //
  //   // Player going left
  //   if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
  //     // TODO: Step 08
  //     // if (isWearingHat) {
  //     //   current = PlayerState.nooglerLeft;
  //     // } else if (!hasPowerup) {
  //     //   current = PlayerState.left;
  //     // }
  //
  //     // TODO: REMOVE NEXT LINE WHEN WE GET TO STEP 08!
  //     current = PlayerState.left;
  //
  //     _hAxisInput += movingLeftInput;
  //   }
  //
  //   // Player going right
  //   if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
  //     // TODO: Step 08
  //     // if (isWearingHat) {
  //     //   current = PlayerState.nooglerRight;
  //     // } else if (!hasPowerup) {
  //     //   current = PlayerState.right;
  //     // }
  //
  //     // TODO: REMOVE NEXT LINE WHEN WE GET TO STEP 08!
  //     current = PlayerState.right;
  //     _hAxisInput += movingRightInput;
  //   }
  //
  //   // During development, its useful to "cheat"
  //   if (keysPressed.contains(LogicalKeyboardKey.arrowUp)) {
  //     // jump();
  //   }
  //
  //   return true;
  // }

  // TODO: Step 08
  // bool get hasPowerup =>
  //     current == PlayerState.rocket ||
  //     current == PlayerState.nooglerLeft ||
  //     current == PlayerState.nooglerRight ||
  //     current == PlayerState.nooglerCenter;
  //
  // bool get isInvincible => current == PlayerState.rocket;
  //
  // bool get isWearingHat =>
  //     current == PlayerState.nooglerLeft ||
  //     current == PlayerState.nooglerRight ||
  //     current == PlayerState.nooglerCenter;

  // TODO: Step 5
  // Callback for Dash colliding with another component in the game
  // @override
  // void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
  //   super.onCollision(intersectionPoints, other);
  //   // TODO: Step 07
  //   // if (other is EnemyPlatform && !isInvincible) {
  //   //   gameRef.onLose();
  //   //   return;
  //   // }
  //
  //   // Check if Dash is moving down and collides with a platform from the top
  //   // this allows Dash to move up _through_ platforms without collision
  //   bool isCollidingVertically =
  //       (intersectionPoints.first.y - intersectionPoints.last.y).abs() < 5;
  //
  //   // TODO: step 08
  //   // bool enablePowerUp = false;
  //
  //   // TODO: step 08
  //   // if (!hasPowerup && (other is Rocket || other is NooglerHat)) {
  //   //   enablePowerUp = true;
  //   // }
  //
  //   // Only want Dash to  “jump” when she is falling + collides with the top of a platform
  //   if (isMovingDown && isCollidingVertically) {
  //     current = PlayerState.center;
  //     if (other is NormalPlatform) {
  //       jump();
  //       return;
  //     } else if (other is SpringBoard) {
  //       jump(specialJumpSpeed: jumpSpeed * 2);
  //       return;
  //     } else if (other is BrokenPlatform &&
  //         other.current == BrokenPlatformState.cracked) {
  //       jump();
  //       other.breakPlatform();
  //       return;
  //     }
  //
  //     // TODO: remove for step 08
  //     // if (other is Rocket || other is NooglerHat) {
  //     //   enablePowerUp = true;
  //     // }
  //   }
  //
  //   // TODO: remove for step 08
  //   // if (!enablePowerUp) return;
  //
  //   // TODO: remove for step 08
  //   // if (other is Rocket) {
  //   //   current = PlayerState.rocket;
  //   //   jump(specialJumpSpeed: jumpSpeed * other.jumpSpeedMultiplier);
  //   //   return;
  //   // } else if (other is NooglerHat) {
  //   //   if (current == PlayerState.center) current = PlayerState.nooglerCenter;
  //   //   if (current == PlayerState.left) current = PlayerState.nooglerLeft;
  //   //   if (current == PlayerState.right) current = PlayerState.nooglerRight;
  //   //   _removePowerupAfterTime(other.activeLengthInMS);
  //   //   jump(specialJumpSpeed: jumpSpeed * other.jumpSpeedMultiplier);
  //   //   return;
  //   // }
  // }

  // TODO: remove for step 08
  // void _removePowerupAfterTime(int ms) {
  //   Future.delayed(Duration(milliseconds: ms), () {
  //     current = PlayerState.center;
  //   });
  // }

  // TODO: Step 05
  // void jump({double? specialJumpSpeed}) {
  //   // Top left is 0,0 so going "up" is negative
  //   _velocity.y = specialJumpSpeed != null ? -specialJumpSpeed : -jumpSpeed;
  // }

  // TODO Step 3 -- This might not need to be mentioned at all
  // void setJumpSpeed(double newJumpSpeed) {
  //   jumpSpeed = newJumpSpeed;
  // }

  // TODO: Step 03 - This will be in the starter code, and might not even need to be mentioned.
  // void reset() {
  //   _velocity = Vector2.zero();
  //   current = PlayerState.center;
  // }

  // TODO Step 3
  // Future<void> _loadCharacterSprites() async {
  //   // Load & configure sprite assets
  //   final left = await gameRef.loadSprite('game/${character.name}_left.png');
  //   final right = await gameRef.loadSprite('game/${character.name}_right.png');
  //   final center =
  //       await gameRef.loadSprite('game/${character.name}_center.png');
  //   final rocket = await gameRef.loadSprite('game/rocket_4.png');
  //   final nooglerCenter =
  //       await gameRef.loadSprite('game/${character.name}_hat_center.png');
  //   final nooglerLeft =
  //       await gameRef.loadSprite('game/${character.name}_hat_left.png');
  //   final nooglerRight =
  //       await gameRef.loadSprite('game/${character.name}_hat_right.png');
  //
  //   sprites = <PlayerState, Sprite>{
  //     PlayerState.left: left,
  //     PlayerState.right: right,
  //     PlayerState.center: center,
  //     PlayerState.rocket: rocket,
  //     PlayerState.nooglerCenter: nooglerCenter,
  //     PlayerState.nooglerLeft: nooglerLeft,
  //     PlayerState.nooglerRight: nooglerRight,
  //   };
  // }

// TODO: Step 3
// }
