// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flame/components.dart';

import './managers.dart';
import '../doodle_dash.dart';
import '../sprites/sprites.dart';
import '../util/util.dart';

final Random _rand = Random();

class ObjectManager extends Component with HasGameRef<DoodleDash> {
  ObjectManager({
    this.minVerticalDistanceToNextPlatform = 200,
    this.maxVerticalDistanceToNextPlatform = 300,
  });

  double minVerticalDistanceToNextPlatform;
  double maxVerticalDistanceToNextPlatform;
  final probGen = ProbabilityGenerator();
  final double _tallestPlatformHeight = 50;
  final List<Platform> _platforms = [];

  @override
  void onMount() {
    super.onMount();

    // The X that will be used for the next platform.
    // The initial X is the middle of the screen.
    var currentX = (gameRef.size.x.floor() / 2).toDouble() - 50;

    // The first platform will always be in the bottom third of the initial screen
    var currentY =
        gameRef.size.y - (_rand.nextInt(gameRef.size.y.floor()) / 3) - 50;

    // Generate 10 Platforms at random x, y positions and add to list of platforms
    // to be populated in the game.
    for (var i = 0; i < 9; i++) {
      if (i != 0) {
        currentX = _generateNextX(100);
        currentY = _generateNextY();
      }

      // Add platforms: Generate & add semi-random platform to Flame tree
    }
  }

  // this method adds new platforms continually, and determines when to remove
  // platforms that are no longer needed.
  @override
  void update(double dt) {
    // Adding Platform Height will ensure that 2 platforms don't overlap.
    final topOfLowestPlatform =
        _platforms.first.position.y + _tallestPlatformHeight;

    final screenBottom = gameRef.player.position.y +
        (gameRef.size.x / 2) +
        gameRef.screenBufferSpace;

    // When the lowest platform is offscreen, it can be removed and a new platform
    // should be added
    if (topOfLowestPlatform > screenBottom) {
      // Generate and add the next platform to the game
      var newPlatY = _generateNextY();
      var newPlatX = _generateNextX(100);

      // Add platforms: Generate & add semi-random platform to Flame tree

      // increase score whenever "Dash passes a platform"
      // Really, increase score when a platform passes off the screen
      // It's the simplest way to do it
      gameRef.gameManager.increaseScore();

      // Removes platforms from the game when they've moved out of view
      _cleanupPlatforms();
      // Losing the game: Add call to_maybeAddEnemy();
      // Powerups: Add call to _maybeAddPowerup();
    }

    super.update(dt);
  }

  final Map<String, bool> specialPlatforms = {
    'spring': true, // level 1
    'broken': false, // level 2
    'noogler': false, // level 3
    'rocket': false, // level 4
    'enemy': false, // level 5
  };

  void _cleanupPlatforms() {
    // remove the lowest platform
    // Remove platforms that have gone out of view
    final lowestPlat = _platforms.removeAt(0);

    // remove component from game
    lowestPlat.removeFromParent();
  }

  void enableSpecialty(String specialty) {
    specialPlatforms[specialty] = true;
  }

  void enableLevelSpecialty(int level) {
    // More on Platforms: Add switch statement to enable SpringBoard for
    // level 1 and BrokenPlatform for level 2
  }

  void resetSpecialties() {
    for (var key in specialPlatforms.keys) {
      specialPlatforms[key] = false;
    }
  }

  // Exposes a way for the DoodleDash component to change difficulty mid-game
  void configure(int nextLevel, Difficulty config) {
    minVerticalDistanceToNextPlatform = gameRef.levelManager.minDistance;
    maxVerticalDistanceToNextPlatform = gameRef.levelManager.maxDistance;

    for (int i = 1; i <= nextLevel; i++) {
      enableLevelSpecialty(i);
    }
  }

  // This method calculates the X-position for the next platform
  // It ensures that platforms don't overlap, populate outside the bounds of the game
  // or generate too far apart
  double _generateNextX(int platformWidth) {
    // Used to ensure that the next platform doesn't overlap
    final previousPlatformXRange = Range(
      _platforms.last.position.x,
      _platforms.last.position.x + platformWidth,
    );

    // -50 (width of platform) ensures the platform doesn't populate outside
    // right bound of game
    // Anchor is topLeft by default, so this X is the left most point of the platform
    // Platform width should always be 50 regardless of which platform.
    double nextPlatformAnchorX;

    // If the previous platform and next overlap, try a new random X
    do {
      nextPlatformAnchorX =
          _rand.nextInt(gameRef.size.x.floor() - platformWidth).toDouble();
    } while (previousPlatformXRange.overlaps(
        Range(nextPlatformAnchorX, nextPlatformAnchorX + platformWidth)));

    return nextPlatformAnchorX;
  }

  // This method determines where the next platform should be placed
  // It calculates a random distance between the minVerticalDistanceToNextPlatform
  // and the maxVerticalDistanceToNextPlatform, and returns a Y coordinate that is
  // that distance above the current highest platform
  double _generateNextY() {
    // Adding platformHeight prevents platforms from overlapping.
    final currentHighestPlatformY =
        _platforms.last.center.y + _tallestPlatformHeight;

    final distanceToNextY = minVerticalDistanceToNextPlatform.toInt() +
        _rand
            .nextInt((maxVerticalDistanceToNextPlatform -
                    minVerticalDistanceToNextPlatform)
                .floor())
            .toDouble();

    return currentHighestPlatformY - distanceToNextY;
  }

  // Add platforms: Add _semiRandomPlatform method

  // Losing the game: Add enemy code

  // Powerups: Add Power-Up code
}
