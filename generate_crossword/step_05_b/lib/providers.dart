// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'model.dart' as model;
import 'utils.dart';

part 'providers.g.dart';

/// A provider for the wordlist to use when generating the crossword.
@riverpod
Future<BuiltSet<String>> wordList(Ref ref) async {
  // This codebase requires that all words consist of lowercase characters
  // in the range 'a'-'z'. Words containing uppercase letters will be
  // lowercased, and words containing runes outside this range will
  // be removed.

  final re = RegExp(r'^[a-z]+$');
  final words = await rootBundle.loadString('assets/words.txt');
  return const LineSplitter()
      .convert(words)
      .toBuiltSet()
      .rebuild(
        (b) =>
            b
              ..map((word) => word.toLowerCase().trim())
              ..where((word) => word.length > 2)
              ..where((word) => re.hasMatch(word)),
      );
}

/// An enumeration for different sizes of [model.Crossword]s.
enum CrosswordSize {
  small(width: 20, height: 11),
  medium(width: 40, height: 22),
  large(width: 80, height: 44),
  xlarge(width: 160, height: 88),
  xxlarge(width: 500, height: 500);

  const CrosswordSize({required this.width, required this.height});

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

final _random = Random();

@riverpod
Stream<model.Crossword> crossword(Ref ref) async* {
  final size = ref.watch(sizeProvider);
  final wordListAsync = ref.watch(wordListProvider);

  var crossword = model.Crossword.crossword(
    width: size.width,
    height: size.height,
  );

  yield* wordListAsync.when(
    data: (wordList) async* {
      while (crossword.characters.length < size.width * size.height * 0.8) {
        final word = wordList.randomElement();
        final direction =
            _random.nextBool() ? model.Direction.across : model.Direction.down;
        final location = model.Location.at(
          _random.nextInt(size.width),
          _random.nextInt(size.height),
        );
        try {
          var candidate = await compute((
            (String, model.Direction, model.Location) wordToAdd,
          ) {
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

      yield crossword;
    },
    error: (error, stackTrace) async* {
      debugPrint('Error loading word list: $error');
      yield crossword;
    },
    loading: () async* {
      yield crossword;
    },
  );
}
