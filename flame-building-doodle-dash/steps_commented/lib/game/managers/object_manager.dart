// ignore_for_file: unnecessary_overrides
import 'package:flame/components.dart';
import './managers.dart';
import '../doodle_dash.dart';
import '../util/util.dart';

// TODO: Step 2 - This class will exist in starter code, and be pretty empty to start
class ObjectManager extends Component with HasGameRef<DoodleDash> {
  ObjectManager({
    this.minVerticalDistanceToNextPlatform = 200,
    this.maxVerticalDistanceToNextPlatform = 300,
  });

  double minVerticalDistanceToNextPlatform;
  double maxVerticalDistanceToNextPlatform;
  final probGen = ProbabilityGenerator();
  // ignore: unused_field
  final double _tallestPlatformHeight = 50;


  // TODO: Step 4
  // final List<Platform> _platforms = [];

  // TODO: Step 4
  // @override
  // void onMount() {
  //   super.onMount();
  //
  //   // The X that will be used for the next platform.
  //   // The initial X is the middle of the screen.
  //   var currentX = (gameRef.size.x.floor() / 2).toDouble() - 50;
  //
  //   // The first platform will always be in the bottom third of the initial screen
  //   var currentY =
  //       gameRef.size.y - (_rand.nextInt(gameRef.size.y.floor()) / 3) - 50;
  //
  //   // Generate 10 Platforms at random x, y positions and add to list of platforms
  //   // to be populated in the game.
  //   for (var i = 0; i < 9; i++) {
  //     if (i != 0) {
  //       currentX = _generateNextX(100);
  //       currentY = _generateNextY();
  //     }
  //     _platforms.add(
  //       _semiRandomPlatform(
  //         Vector2(
  //           currentX,
  //           currentY,
  //         ),
  //       ),
  //     );
  //
  //     // Add Component to Flame tree
  //     add(_platforms[i]);
  //   }
  // }

  @override
  void update(double dt) {
    // Adding Platform Height will ensure that 2 platforms don't overlap.
    // TODO: STEP 4
    // final topOfLowestPlatform =
    //     _platforms.first.position.y + _tallestPlatformHeight;

    // TODO: Step 6
    // final screenBottom = gameRef.player.position.y +
    //     (gameRef.size.x / 2) +
    //     gameRef.screenBufferSpace;
    //
    // When the lowest platform is offscreen, it can be removed and a new platform
    // should be added
    // if (topOfLowestPlatform > screenBottom) {
    //   // Generate and add the next platform to the game
    //   var newPlatY = _generateNextY();
    //   var newPlatX = _generateNextX(100);
    //   final nextPlat = _semiRandomPlatform(Vector2(newPlatX, newPlatY));
    //   add(nextPlat);
    //
    //   _platforms.add(nextPlat);
    //
    //   // increase score whenever "Dash passes a platform"
    //   // Really, increase score when a platform passes off the screen
    //   // It's the simplest way to do it
    //   gameRef.gameManager.increaseScore();
    //
    //   // TODO: Step 6
    //   // Removes platforms from the game when they've moved out of view
    //   // _cleanupPlatforms();
    //
    //   // TODO: Step 7
    //   // _maybeAddEnemy();
    //
    //   // TODO: step 8
    //   // _maybeAddPowerup();
    // }

    super.update(dt);
  }
  // TODO: Step 6
  // final Map<String, bool> specialPlatforms = {
  //   'spring': true, // level 1
  //   'broken': false, // level 2
  //   'noogler': false, // level 3
  //   'rocket': false, // level 4
  //   'enemy': false, // level 5
  // };

  // TODO: Step 4
  // void _cleanupPlatforms() {
  //   // remove the lowest platform
  //   // Remove platforms that have gone out of view
  //   final lowestPlat = _platforms.removeAt(0);
  //
  //   // remove component from game
  //   lowestPlat.removeFromParent();
  // }

  // TODO Step 6
  // void enableSpecialty(String specialty) {
  //   specialPlatforms[specialty] = true;
  // }

  // TODO Step 6
  // void enableLevelSpecialty(int level) {
  //   switch (level) {
  //     case 1:
  //       enableSpecialty('spring');
  //       break;
  //     case 2:
  //       enableSpecialty('broken');
  //       break;
  //     case 3:
  //       enableSpecialty('noogler');
  //       break;
  //     case 4:
  //       enableSpecialty('rocket');
  //       break;
  //     case 5:
  //       enableSpecialty('enemy');
  //       break;
  //   }
  // }

  // TODO Step 6
  // void resetSpecialties() {
  //   for (var key in specialPlatforms.keys) {
  //     specialPlatforms[key] = false;
  //   }
  // }


  // TODO: Step 2 - this exists, but I don't think the codelab will get into
  // TODO: contd - setting the difficulty
  // Exposes a way for the DoodleDash component to change difficulty mid-game
  void configure(int nextLevel, Difficulty config) {
    minVerticalDistanceToNextPlatform = gameRef.levelManager.minDistance;
    maxVerticalDistanceToNextPlatform = gameRef.levelManager.maxDistance;

    // TODO: Step 6
    // for (int i = 1; i <= nextLevel; i++) {
    //   enableLevelSpecialty(i);
    // }
  }

  // TODO: Step 3
  // This method calculates the X-position for the next platform
  // It ensures that platforms don't overlap, populate outside the bounds of the game
  // or generate too far apart
  // double _generateNextX(int platformWidth) {
  //   // Used to ensure that the next platform doesn't overlap
  //   final previousPlatformXRange = Range(
  //     _platforms.last.position.x,
  //     _platforms.last.position.x + platformWidth,
  //   );
  //
  //   // -50 (width of platform) ensures the platform doesn't populate outside
  //   // right bound of game
  //   // Anchor is topLeft by default, so this X is the left most point of the platform
  //   // Platform width should always be 50 regardless of which platform.
  //   double nextPlatformAnchorX;
  //
  //   // If the previous platform and next overlap, try a new random X
  //   do {
  //     nextPlatformAnchorX =
  //         _rand.nextInt(gameRef.size.x.floor() - platformWidth).toDouble();
  //   } while (previousPlatformXRange.overlaps(
  //       Range(nextPlatformAnchorX, nextPlatformAnchorX + platformWidth)));
  //
  //   return nextPlatformAnchorX;
  // }

  // TODO: Step 3
  // This method determines where the next platform should be placed
  // It calculates a random distance between the minVerticalDistanceToNextPlatform
  // and the maxVerticalDistanceToNextPlatform, and returns a Y coordinate that is
  // that distance above the current highest platform
  // double _generateNextY() {
  //   // Adding platformHeight prevents platforms from overlapping.
  //   final currentHighestPlatformY =
  //       _platforms.last.center.y + _tallestPlatformHeight;
  //
  //   final distanceToNextY = minVerticalDistanceToNextPlatform.toInt() +
  //       _rand
  //           .nextInt((maxVerticalDistanceToNextPlatform -
  //                   minVerticalDistanceToNextPlatform)
  //               .floor())
  //           .toDouble();
  //
  //   return currentHighestPlatformY - distanceToNextY;
  // }


  // TODO: Step 4 - This code isn't relevant until Step 6,
  // TODO contd - but will be need to be included in step 4. In the code lab in step 4
  // TODO contd - I think it will be okay to say "You'll return to this in a later step
  // TODO contd - but for now its enough to know that it returns a platform object"
  // Return a platform.
  // The percent chance of any given platform is NOT equal
  // Platform _semiRandomPlatform(Vector2 position) {
  //
  //   // TODO: Step 6
  //   // if (specialPlatforms['spring'] == true &&
  //   //     probGen.generateWithProbability(15)) {
  //   //   // 15% chance of getting springboard
  //   //   return SpringBoard(position: position);
  //   // }
  //   //
  //   // if (specialPlatforms['broken'] == true &&
  //   //     probGen.generateWithProbability(10)) {
  //   //   // 10% chance of getting springboard
  //   //   return BrokenPlatform(position: position);
  //   // }
  //
  //   // defaults to a normal platform
  //   return NormalPlatform(position: position);
  // }

  // TODO: Step 07
  // final List<EnemyPlatform> _enemies = [];
  // void _maybeAddEnemy() {
  //   // checks if we should add enemies at the current level
  //   if (specialPlatforms['enemy'] != true) {
  //     return;
  //   }
  //   if (probGen.generateWithProbability(20)) {
  //     var enemy = EnemyPlatform(
  //       position: Vector2(_generateNextX(100), _generateNextY()),
  //     );
  //     add(enemy);
  //     _enemies.add(enemy);
  //     _cleanup();
  //   }
  // }

  // TODO: Step 07
  // Because powerups and enemies rely on probability to be generated
  // There is no exact best moment to remove them from the game
  // So, we periodically check if there are any that can be removed.
  // void _cleanupEnemies() {
  //   final screenBottom = gameRef.player.position.y +
  //       (gameRef.size.x / 2) +
  //       gameRef.screenBufferSpace;
  //
  //   while (_enemies.isNotEmpty && _enemies.first.position.y > screenBottom) {
  //     remove(_enemies.first);
  //     _enemies.removeAt(0);
  //   }
  //  _cleanupPowerups();
  //}

  // TODO: Remove for step 08
  // final List<PowerUp> _powerups = [];

  // TODO: Remove for Step 08
  // void _maybeAddPowerup() {
  //   // there is a 20% chance to add a Noogler Hat
  //   if (specialPlatforms['noogler'] == true &&
  //       probGen.generateWithProbability(20)) {
  //     // generate powerup
  //     var nooglerHat = NooglerHat(
  //       position: Vector2(_generateNextX(75), _generateNextY()),
  //     );
  //     add(nooglerHat);
  //     _powerups.add(nooglerHat);
  //     return; // return early if we already add a noogler hat, no need to add a rocket
  //   }
  //
  //   // There is a 15% chance to add a jetpack
  //   if (specialPlatforms['rocket'] == true &&
  //       probGen.generateWithProbability(15)) {
  //     var rocket = Rocket(
  //       position: Vector2(_generateNextX(50), _generateNextY()),
  //     );
  //     add(rocket);
  //     _powerups.add(rocket);
  //   }
  // }

  // TODO: remove for step 08
  // ALSO FYI for codelab... if the powerup step is getting too long
  // this is something that can be mentioned without being explained
  // void _cleanupPowerups() {
  // final screenBottom = gameRef.player.position.y +
  //     (gameRef.size.x / 2) +
  //     gameRef.screenBufferSpace;
  // while (_powerups.isNotEmpty && _powerups.first.position.y > screenBottom) {
  //   if (_powerups.first.parent != null) {
  //     remove(_powerups.first);
  //   }
  //   _powerups.removeAt(0);
  // }
  // }

}
