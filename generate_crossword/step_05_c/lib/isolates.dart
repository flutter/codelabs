// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';

import 'model.dart';
import 'utils.dart';

final _random = Random();

Stream<Crossword> exploreCrosswordSolutions({
  required Crossword crossword,
  required BuiltSet<String> wordList,
}) async* {
  while (crossword.characters.length <
      crossword.width * crossword.height * 0.8) {
    final word = wordList.randomElement();
    final direction = _random.nextBool() ? Direction.across : Direction.down;
    final location = Location.at(
      _random.nextInt(crossword.width),
      _random.nextInt(crossword.height),
    );
    try {
      var candidate = await compute(((String, Direction, Location) wordToAdd) {
        final (word, direction, location) = wordToAdd;
        return crossword.addWord(
          word: word,
          direction: direction,
          location: location,
        );
      }, (word, direction, location));

      if (candidate != null) {
        crossword = candidate;
        yield crossword;
      }
    } catch (e) {
      debugPrint('Error running isolate: $e');
    }
  }
}
