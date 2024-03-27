// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:worker_manager/worker_manager.dart';

import 'model.dart' as model;
import 'utils.dart';

part 'providers.g.dart';

/// A provider for the wordlist to use when generating the crossword.
@riverpod
Future<BuiltSet<String>> wordList(WordListRef ref) async {
  // This codebase requires that all words consist of lowercase characters
  // in the range 'a'-'z'. Words containing uppercase letters will be
  // lowercased, and words containing runes outside this range will
  // be removed.

  final re = RegExp('^[a-z]+\$');
  final str = await rootBundle.loadString('assets/words.txt');
  return str.split('\n').toBuiltSet().rebuild((b) => b
    ..map((str) => str.toLowerCase().trim())
    ..removeWhere((str) => str.length < 3)
    ..removeWhere((str) => re.stringMatch(str) == null));
}

/// An enumeration for different sizes of [Crossword]s.
enum CrosswordSize {
  small(width: 20, height: 11),
  medium(width: 40, height: 22),
  large(width: 80, height: 44),
  xlarge(width: 160, height: 88),
  xxlarge(width: 500, height: 500);

  const CrosswordSize({
    required this.width,
    required this.height,
  });

  final int width;
  final int height;
  String get label => '$width x $height';
}

/// A provider that holds the current size of the crossword to generate.
@Riverpod(keepAlive: true)
class Size extends _$Size {
  var _size = CrosswordSize.medium;

  @override
  CrosswordSize build() => _size;

  void setSize(CrosswordSize size) {
    _size = size;
    ref.invalidateSelf();
  }
}

@riverpod
Stream<model.Crossword> crossword(CrosswordRef ref) async* {
  final size = ref.watch(sizeProvider);
  final wordListAsync = ref.watch(wordListProvider);

  yield* wordListAsync.when(
    data: (wordList) async* {
      final start = DateTime.now();
      var workQueue = model.WorkQueue.from(
        crossword:
            model.Crossword.crossword(width: size.width, height: size.height),
        candidateWords: wordList,
        startLocation: model.Location.at(0, 0),
      );
      while (!workQueue.isCompleted) {
        final location =
            workQueue.locationsToTry.keys.toBuiltSet().randomElement();

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
                model.Direction.across => workQueue.crossword.addWord(
                    direction: model.Direction.across,
                    location: location.leftOffset(index),
                    word: word),
                model.Direction.down => workQueue.crossword.addWord(
                    direction: model.Direction.down,
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
      }
      debugPrint(
          'Crossword generated in ${DateTime.now().difference(start).formatted}');
    },
    error: (error, stackTrace) async* {
      yield model.Crossword.crossword(width: size.width, height: size.height);
    },
    loading: () async* {
      yield model.Crossword.crossword(width: size.width, height: size.height);
    },
  );
}
