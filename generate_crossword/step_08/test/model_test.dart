// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:generate_crossword/model.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Empty crossword is valid', () {
    final Crossword crossword = Crossword.crossword(height: 50, width: 50);

    expect(crossword.words.isEmpty, isTrue);
    expect(crossword.characters.isEmpty, isTrue);
    expect(crossword.valid, isTrue);
  });

  test('Minimal valid crossword', () {
    final topLeft = Location.at(0, 0);
    final thisWord = CrosswordWord.word(
      word: 'this',
      location: topLeft,
      direction: Direction.across,
    );
    final thatWord = CrosswordWord.word(
      word: 'that',
      location: topLeft,
      direction: Direction.down,
    );

    Crossword crossword = Crossword.crossword(
      height: 50,
      width: 50,
      words: [thisWord, thatWord],
    );

    expect(crossword.words.isNotEmpty, true);
    expect(crossword.words.length, 2);
    expect(
      crossword.words
          .rebuild((b) => b.where((b) => b.direction == Direction.across))
          .length,
      1,
    );
    expect(
      crossword.words
          .rebuild((b) => b.where((b) => b.direction == Direction.down))
          .length,
      1,
    );
    expect(crossword.characters.isNotEmpty, isTrue);
    expect(crossword.characters.length, 7);
    expect(
      crossword.characters[topLeft],
      CrosswordCharacter.character(
        acrossWord: thisWord,
        downWord: thatWord,
        character: 't',
      ),
    );
    expect(crossword.valid, isTrue);
  });

  test('Minimal invalid crossword', () {
    final topLeft = Location.at(0, 0);
    final oneDown = topLeft.down;
    final thisWord = CrosswordWord.word(
      word: 'this',
      direction: Direction.across,
      location: topLeft,
    );
    final thatWord = CrosswordWord.word(
      word: 'that',
      direction: Direction.across,
      location: oneDown,
    );

    final Crossword crossword = Crossword.crossword(
      height: 50,
      width: 50,
      words: [thisWord, thatWord],
    );

    expect(crossword.words.isNotEmpty, true);
    expect(
      crossword.words
          .rebuild((b) => b.where((b) => b.direction == Direction.across))
          .length,
      2,
    );
    expect(
      crossword.words
          .rebuild((b) => b.where((b) => b.direction == Direction.down))
          .isEmpty,
      true,
    );
    expect(crossword.characters.isNotEmpty, isTrue);
    expect(crossword.characters.length, 8);
    expect(crossword.valid, isFalse);
  });

  test('Adding detached words returns null', () {
    Crossword crossword = Crossword.crossword(width: 50, height: 50);
    expect(crossword.valid, true);

    crossword =
        crossword.addWord(
          direction: Direction.across,
          location: Location.at(0, 0),
          word: 'this',
        )!;
    expect(crossword.valid, true);

    final crossword2 = crossword.addWord(
      direction: Direction.across,
      location: Location.at(4, 4),
      word: 'detached',
    );
    expect(crossword2, isNull);
  });

  test('Adding across and down words', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50);
    expect(crossword.valid, true);

    final topLeft = Location.at(0, 0);
    crossword = crossword.addWord(
      direction: Direction.across,
      location: topLeft,
      word: 'this',
    );
    if (crossword == null) fail("crossword shouldn't be null");
    expect(crossword.valid, isTrue);

    crossword = crossword.addWord(
      direction: Direction.down,
      location: topLeft,
      word: 'that',
    );
    if (crossword == null) fail("crossword shouldn't be null");
    expect(crossword.valid, isTrue);
  });

  test('Adding overlapping across words returns null', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50);
    expect(crossword.valid, isTrue);

    final topLeft = Location.at(0, 0);

    crossword = crossword.addWord(
      direction: Direction.across,
      location: topLeft,
      word: 'this',
    );
    if (crossword == null) fail("crossword shouldn't be null");
    expect(crossword.valid, true);

    final crossword2 = crossword.addWord(
      direction: Direction.across,
      location: topLeft,
      word: 'that',
    );
    expect(crossword2, isNull);
  });

  test('Adding overlapping down words returns null', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50);

    expect(crossword.valid, true);

    final topLeft = Location.at(0, 0);

    crossword =
        crossword
            .addWord(
              location: topLeft,
              word: 'this',
              direction: Direction.down,
            )!
            .addWord(
              location: topLeft,
              word: 'total',
              direction: Direction.across,
            )!;

    expect(crossword.valid, isTrue);

    final crossword2 = crossword.addWord(
      direction: Direction.down,
      location: topLeft,
      word: 'that',
    );
    expect(crossword2, isNull);
  });

  test('Adding words out of bounds returns null', () {
    final crossword = Crossword.crossword(width: 50, height: 50);

    expect(crossword.valid, true);

    // Above the top of the board
    final crossword1 = crossword.addWord(
      direction: Direction.down,
      location: Location.at(0, -1),
      word: 'this',
    );
    expect(crossword1, isNull);

    // To the left of the board
    final crossword2 = crossword.addWord(
      direction: Direction.down,
      location: Location.at(-1, 0),
      word: 'that',
    );
    expect(crossword2, isNull);

    // To the right of the board
    final crossword3 = crossword.addWord(
      direction: Direction.down,
      location: Location.at(51, 0),
      word: 'this',
    );
    expect(crossword3, isNull);

    // Below the bottom of the board
    final crossword4 = crossword.addWord(
      direction: Direction.down,
      location: Location.at(0, 51),
      word: 'that',
    );
    expect(crossword4, isNull);
  });

  test('Crossword is not valid with run-on across words', () {
    Crossword crossword = Crossword.crossword(width: 50, height: 50).rebuild(
      (b) =>
          b
            ..words.addAll([
              CrosswordWord.word(
                direction: Direction.across,
                location: Location.at(0, 0),
                word: 'word',
              ),
              CrosswordWord.word(
                direction: Direction.across,
                location: Location.at(4, 0),
                word: 'another',
              ),
            ]),
    );

    expect(crossword.valid, false);
  });

  test('Crossword is not valid with run-on down words', () {
    Crossword crossword = Crossword.crossword(width: 50, height: 50).rebuild(
      (b) =>
          b
            ..words.addAll([
              CrosswordWord.word(
                direction: Direction.down,
                location: Location.at(0, 0),
                word: 'word',
              ),
              CrosswordWord.word(
                direction: Direction.down,
                location: Location.at(0, 4),
                word: 'another',
              ),
            ]),
    );

    expect(crossword.valid, false);
  });

  test('Crossword is not valid with run-on across/down words', () {
    Crossword crossword = Crossword.crossword(width: 50, height: 50).rebuild(
      (b) =>
          b
            ..words.addAll([
              CrosswordWord.word(
                direction: Direction.across,
                location: Location.at(0, 0),
                word: 'word',
              ),
              CrosswordWord.word(
                direction: Direction.down,
                location: Location.at(4, 0),
                word: 'another',
              ),
            ]),
    );

    expect(crossword.valid, false);
  });

  test('Crossword is not valid with run-on down/across words', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50).rebuild(
      (b) =>
          b
            ..words.addAll([
              CrosswordWord.word(
                direction: Direction.down,
                location: Location.at(0, 0),
                word: 'word',
              ),
              CrosswordWord.word(
                direction: Direction.across,
                location: Location.at(0, 4),
                word: 'another',
              ),
            ]),
    );

    expect(crossword.valid, false);
  });

  test('Adding duplicate across words returns null', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50);

    crossword =
        crossword.addWord(
          direction: Direction.across,
          location: Location.at(0, 0),
          word: 'duplicated',
        )!;

    expect(
      crossword.addWord(
        direction: Direction.across,
        location: Location.at(4, 4),
        word: 'duplicated',
      ),
      isNull,
    );
  });

  test('Crossword is not valid with duplicate across words', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50).rebuild(
      (b) =>
          b
            ..words.addAll([
              CrosswordWord.word(
                direction: Direction.across,
                location: Location.at(0, 0),
                word: 'duplicated',
              ),
              CrosswordWord.word(
                direction: Direction.across,
                location: Location.at(4, 4),
                word: 'duplicated',
              ),
            ]),
    );

    expect(crossword.valid, false);
  });

  test('Adding duplicate down words returns null', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50);

    crossword =
        crossword.addWord(
          direction: Direction.down,
          location: Location.at(0, 0),
          word: 'duplicated',
        )!;

    expect(
      crossword.addWord(
        direction: Direction.down,
        location: Location.at(4, 4),
        word: 'duplicated',
      ),
      isNull,
    );
  });

  test('Crossword is not valid with duplicate down words', () {
    Crossword? crossword = Crossword.crossword(width: 50, height: 50).rebuild(
      (b) =>
          b
            ..words.addAll([
              CrosswordWord.word(
                direction: Direction.down,
                location: Location.at(0, 0),
                word: 'duplicated',
              ),
              CrosswordWord.word(
                direction: Direction.down,
                location: Location.at(4, 4),
                word: 'duplicated',
              ),
            ]),
    );

    expect(crossword.valid, false);
  });

  test('WorkQueue from a crossword', () {
    Crossword crossword = Crossword.crossword(width: 50, height: 50);
    WorkQueue queue = WorkQueue.from(
      crossword: crossword,
      candidateWords: ['words', 'and', 'moar', 'wordz'],
      startLocation: Location.at(0, 0),
    );
    expect(queue.locationsToTry.length, 1);

    crossword =
        crossword.addWord(
          direction: Direction.across,
          location: Location.at(0, 0),
          word: 'word',
        )!;
    queue = WorkQueue.from(
      crossword: crossword,
      candidateWords: ['words', 'and', 'moar', 'wordz'],
      startLocation: Location.at(0, 0),
    );
    expect(queue.locationsToTry.length, 4);
    expect(
      queue.locationsToTry.entries.every(
        (element) => element.value == Direction.down,
      ),
      isTrue,
    );
    final entries = queue.locationsToTry.entries;
    expect(entries.every((element) => element.key.y == 0), isTrue);
    expect(
      entries.map((element) => element.key.x).toBuiltSet(),
      equals(BuiltSet([0, 1, 2, 3])),
    );
  });

  test('WorkQueue from down word', () {
    Crossword crossword =
        Crossword.crossword(width: 50, height: 50).addWord(
          direction: Direction.down,
          location: Location.at(0, 0),
          word: 'word',
        )!;

    WorkQueue queue = WorkQueue.from(
      crossword: crossword,
      candidateWords: ['words', 'and', 'moar', 'wordz'],
      startLocation: Location.at(0, 0),
    );
    expect(queue.locationsToTry.length, 4);
    expect(
      queue.locationsToTry.entries.every(
        (element) => element.value == Direction.across,
      ),
      isTrue,
    );
    final entries = queue.locationsToTry.entries;
    expect(entries.every((element) => element.key.x == 0), isTrue);
    expect(
      entries.map((element) => element.key.y).toBuiltSet(),
      equals(BuiltSet([0, 1, 2, 3])),
    );
  });

  test('WorkQueue from two words', () {
    Crossword crossword =
        Crossword.crossword(width: 50, height: 50)
            .addWord(
              direction: Direction.across,
              location: Location.at(0, 0),
              word: 'word',
            )!
            .addWord(
              direction: Direction.down,
              location: Location.at(0, 0),
              word: 'work',
            )!;

    WorkQueue queue = WorkQueue.from(
      crossword: crossword,
      candidateWords: ['word', 'work'],
      startLocation: Location.at(0, 0),
    );
    expect(
      queue.locationsToTry,
      equals(
        BuiltMap<Location, Direction>({
          Location.at(2, 0): Direction.down,
          Location.at(0, 2): Direction.across,
          Location.at(3, 0): Direction.down,
          Location.at(0, 3): Direction.across,
        }),
      ),
    );
  });

  test('WorkQueue removes used words from candidate list', () {
    Crossword crossword =
        Crossword.crossword(width: 50, height: 50)
            .addWord(
              direction: Direction.across,
              location: Location.at(0, 0),
              word: 'word',
            )!
            .addWord(
              direction: Direction.down,
              location: Location.at(0, 0),
              word: 'work',
            )!;

    WorkQueue queue = WorkQueue.from(
      crossword: crossword,
      candidateWords: ['word', 'work'],
      startLocation: Location.at(0, 0),
    );
    expect(queue.candidateWords.length, equals(0));
  });
}
