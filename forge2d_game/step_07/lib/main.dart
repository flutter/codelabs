// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'game.dart';
import 'providers.dart';
import 'ticker_builder.dart';

void main() {
  runApp(
    ProviderScope(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameHolderWidget(),
      ),
    )),
  );
}

final key = GlobalKey<RiverpodAwareGameWidgetState<Forge2DExample>>(
    debugLabel: 'GameHolderWidgetKey');

class GameHolderWidget extends ConsumerWidget {
  const GameHolderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(forge2dGameProvider);
    return Row(
      children: [
        Expanded(
          child: RiverpodAwareGameWidget(
            game: game,
            loadingBuilder: (context) => Center(
              child: CircularProgressIndicator(),
            ),
            errorBuilder: (context, error) => Center(
              child: Text('Error: $error'),
            ),
            key: key,
          ),
        ),
        SizedBox(
          width: 350,
          child: GameComponentsList(),
        ),
      ],
    );
  }
}

class GameComponentsList extends ConsumerWidget {
  const GameComponentsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(forge2dGameProvider);
    return TickerBuilder(
      builder: (context) => ListView(
        children: [
          ListTile(
            title: Center(
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                ElevatedButton(
                  child: Text('Add ball'),
                  onPressed: () =>
                      ref.read(ballCountProvider.notifier).addBall(),
                ),

                SizedBox(width: 16), // Add some space between the buttons
                ElevatedButton(
                  onPressed: switch (ref.read(ballCountProvider)) {
                    0 => null,
                    _ => () =>
                        ref.read(ballCountProvider.notifier).removeBall(),
                  },
                  child: Text('Remove ball'),
                ),
              ]),
            ),
          ),
          ListTile(
            title: Center(
              child: ElevatedButton(
                child: Text('Reset Game'),
                onPressed: () => ref.read(forge2dGameProvider.notifier).reset(),
              ),
            ),
          ),
          for (final (index, ball)
              in game.world.children.whereType<Ball>().indexed)
            ListTile(
              title: Text('Ball ${index + 1}'),
              subtitle: Text('Position: ${ball.body.position.label}'),
            ),
          for (final wall in game.world.children.whereType<Wall>())
            _WallListTile(wall),
        ],
      ),
    );
  }
}

extension Vector2Label on Vector2 {
  String get label {
    final fmt = NumberFormat('##0.0#');
    return '(${fmt.format(x)}, ${fmt.format(y)})';
  }
}

class _WallListTile extends StatelessWidget {
  const _WallListTile(this.wall);
  final Wall wall;

  @override
  Widget build(BuildContext context) {
    final edgeShape = wall.body.fixtures.first.shape as EdgeShape;

    return ListTile(
      title: Text('${wall.wallPosition.label} Wall'),
      subtitle: Text('Position: ${edgeShape.vertex1.label} '
          '${edgeShape.vertex2.label}'),
    );
  }
}
