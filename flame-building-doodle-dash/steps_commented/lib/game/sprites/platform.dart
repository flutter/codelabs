// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:math';
//
// import 'package:flame/collisions.dart';
// import 'package:flame/components.dart';
// import 'package:flutter/widgets.dart';
//
// import '../doodle_dash.dart';

/// The supertype for all Platforms, including Enemies
/// This class adds a hitbox and Collision Callbacks to all subtypes,
/// It also allows the platform to move, if it wants to. All platforms
/// know how to move, and have a 20% chance of being a moving platform
///
/// [T] should be an enum that is used to Switch between spirtes, if necessary
/// Many platforms only need one Sprite, so [T] will be an enum that looks
/// something like: `enum { only }`
// TODO: Step 4
// abstract class Platform<T> extends SpriteGroupComponent<T>
//     with HasGameRef<DoodleDash>, CollisionCallbacks {
//   final hitbox = RectangleHitbox();
//   bool isMoving = false;
//
//   Platform({
//     super.position,
//   }) : super(
//           size: Vector2.all(100),
//           priority: 2, // Ensures platform is always behind Dash
//         );
//
//   @override
//   Future<void>? onLoad() async {
//     await super.onLoad();
//
//     // Add collision detection logic
//     await add(hitbox);
//
//     // TODO: STEP 6
//     // 1/5 times make this platform move
//     // final int rand = Random().nextInt(100);
//     // if (rand > 80) isMoving = true;
//   }
//
//   // TODO: STEP 6
//   // These variables and the _move method all the platform for _move
//   // Platforms have a 20% chance of being a moving platform
//   // All platforms _can_ move.
//   // double direction = 1;
//   // final Vector2 _velocity = Vector2.zero();
//   // double speed = 35;
//   //
//   // void _move(double dt) {
//   //   if (!isMoving) return;
//   //
//   //   final double gameWidth = gameRef.size.x;
//   //
//   //   if (position.x <= 0) {
//   //     direction = 1;
//   //   } else if (position.x >= gameWidth - size.x) {
//   //     direction = -1;
//   //   }
//   //
//   //   _velocity.x = direction * speed;
//   //
//   //   position += _velocity * dt;
//   // }
//
//   // TODO: STEP 6
//   // @mustCallSuper
//   // @override
//   // void update(double dt) {
//   //   // _move(dt);
//   //   super.update(dt);
//   // }
// }

// TODO: STEP 4
// enum NormalPlatformState { only }
//
// class NormalPlatform extends Platform<NormalPlatformState> {
//   NormalPlatform({super.position});
//
//   final Map<String, Vector2> spriteOptions = {
//     'platform_monitor': Vector2(115, 84),
//     'platform_phone_center': Vector2(100, 55),
//     'platform_terminal': Vector2(110, 83),
//     'platform_laptop': Vector2(100, 63),
//   };
//
//   @override
//   Future<void>? onLoad() async {
//     var randSpriteIndex = Random().nextInt(spriteOptions.length);
//
//     String randSprite = spriteOptions.keys.elementAt(randSpriteIndex);
//
//     sprites = {
//       NormalPlatformState.only: await gameRef.loadSprite('game/$randSprite.png')
//     };
//
//     current = NormalPlatformState.only;
//
//     size = spriteOptions[randSprite]!;
//     await super.onLoad();
//   }
// }

// TODO: STEP 6
// enum BrokenPlatformState { cracked, broken }
//
// class BrokenPlatform extends Platform<BrokenPlatformState> {
//   BrokenPlatform({super.position});
//
//   @override
//   Future<void>? onLoad() async {
//     await super.onLoad();
//
//     sprites = <BrokenPlatformState, Sprite>{
//       BrokenPlatformState.cracked:
//           await gameRef.loadSprite('game/platform_cracked_monitor.png'),
//       BrokenPlatformState.broken:
//           await gameRef.loadSprite('game/platform_monitor_broken.png'),
//     };
//
//     current = BrokenPlatformState.cracked;
//     size = Vector2(115, 84);
//   }
//
//   void breakPlatform() {
//     current = BrokenPlatformState.broken;
//   }
// }
//
// enum SpringState { down, up }
//
// // Once we have other component assets, they can be built in similar manner
// class SpringBoard extends Platform<SpringState> {
//   SpringBoard({
//     super.position,
//   });
//
//   @override
//   Future<void>? onLoad() async {
//     await super.onLoad();
//
//     sprites = <SpringState, Sprite>{
//       SpringState.down:
//           await gameRef.loadSprite('game/platform_trampoline_down.png'),
//       SpringState.up:
//           await gameRef.loadSprite('game/platform_trampoline_up.png'),
//     };
//
//     current = SpringState.up;
//
//     size = Vector2(100, 45);
//   }
//
//   @override
//   void onCollisionStart(
//       Set<Vector2> intersectionPoints, PositionComponent other) {
//     super.onCollisionStart(intersectionPoints, other);
//
//     bool isCollidingVertically =
//         (intersectionPoints.first.y - intersectionPoints.last.y).abs() < 5;
//
//     if (isCollidingVertically) {
//       current = SpringState.down;
//     }
//   }
//
//   @override
//   void onCollisionEnd(PositionComponent other) {
//     super.onCollisionEnd(other);
//
//     current = SpringState.up;
//   }
// }


// TODO: Step 07
// enum EnemyPlatformState { only }
//
// Enemies are just Platforms that you shouldn't touch
// class EnemyPlatform extends Platform<EnemyPlatformState> {
//   EnemyPlatform({super.position});
//
//   @override
//   Future<void>? onLoad() async {
//     var randBool = Random().nextBool();
//     var enemySprite = randBool ? 'enemy_trash_can' : 'enemy_error';
//
//     sprites = <EnemyPlatformState, Sprite>{
//       EnemyPlatformState.only:
//           await gameRef.loadSprite('game/$enemySprite.png'),
//     };
//
//     current = EnemyPlatformState.only;
//
//     return super.onLoad();
//   }
// }
