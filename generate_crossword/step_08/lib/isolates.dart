// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:worker_manager/worker_manager.dart';

import 'model.dart';
import 'utils.dart';

Stream<Crossword> exploreCrosswordSolutions({
  required Crossword crossword,
  required BuiltSet<String> wordList,
}) async* {
  final start = DateTime.now();
  var workQueue = WorkQueue.from(
    crossword: crossword,
    candidateWords: wordList,
    startLocation: Location.at(0, 0),
  );
  while (!workQueue.isCompleted) {
    final location = workQueue.locationsToTry.keys.toBuiltSet().randomElement();
    try {
      final crossword = await workerManager.execute(() {
        final direction = workQueue.locationsToTry[location]!;
        final target = workQueue.crossword.characters[location];
        if (target == null) {
          return workQueue.crossword.addWord(
            direction: direction,
            location: location,
            word: workQueue.candidateWords.randomElement(),
          );
        }
        var words = workQueue.candidateWords.toBuiltList().rebuild((b) => b
          ..where((b) => b.characters.contains(target.character))
          ..shuffle());
        int tryCount = 0;
        for (final word in words) {
          tryCount++;
          for (final (index, character) in word.characters.indexed) {
            if (character != target.character) continue;

            final candidate = switch (direction) {
              Direction.across => workQueue.crossword.addWord(
                  direction: Direction.across,
                  location: location.leftOffset(index),
                  word: word),
              Direction.down => workQueue.crossword.addWord(
                  direction: Direction.down,
                  location: location.upOffset(index),
                  word: word)
            };
            if (candidate != null) {
              return candidate;
            }
          }
          if (tryCount > 1000) {
            break;
          }
        }
      });
      if (crossword != null) {
        workQueue = workQueue.updateFrom(crossword);
        yield crossword;
      } else {
        workQueue = workQueue.remove(location);
      }
    } catch (e) {
      debugPrint('Error running isolate: $e');
    }
  }
  debugPrint(
      'Crossword generated in ${DateTime.now().difference(start).formatted}');
}
