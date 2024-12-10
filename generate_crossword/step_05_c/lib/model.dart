// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:characters/characters.dart';

part 'model.g.dart';

/// A location in a crossword.
abstract class Location implements Built<Location, LocationBuilder> {
  static Serializer<Location> get serializer => _$locationSerializer;

  /// The horizontal part of the location. The location is 0 based.
  int get x;

  /// The vertical part of the location. The location is 0 based.
  int get y;

  /// Returns a new location that is one step to the left of this location.
  Location get left => rebuild((b) => b.x = x - 1);

  /// Returns a new location that is one step to the right of this location.
  Location get right => rebuild((b) => b.x = x + 1);

  /// Returns a new location that is one step up from this location.
  Location get up => rebuild((b) => b.y = y - 1);

  /// Returns a new location that is one step down from this location.
  Location get down => rebuild((b) => b.y = y + 1);

  /// Returns a new location that is [offset] steps to the left of this location.
  Location leftOffset(int offset) => rebuild((b) => b.x = x - offset);

  /// Returns a new location that is [offset] steps to the right of this location.
  Location rightOffset(int offset) => rebuild((b) => b.x = x + offset);

  /// Returns a new location that is [offset] steps up from this location.
  Location upOffset(int offset) => rebuild((b) => b.y = y - offset);

  /// Returns a new location that is [offset] steps down from this location.
  Location downOffset(int offset) => rebuild((b) => b.y = y + offset);

  /// Pretty print a location as a (x,y) coordinate.
  String prettyPrint() => '($x,$y)';

  /// Returns a new location built from [updates]. Both [x] and [y] are
  /// required to be non-null.
  factory Location([void Function(LocationBuilder)? updates]) = _$Location;
  Location._();

  /// Returns a location at the given coordinates.
  factory Location.at(int x, int y) {
    return Location((b) {
      b
        ..x = x
        ..y = y;
    });
  }
}

/// The direction of a word in a crossword.
enum Direction {
  across,
  down;

  @override
  String toString() => name;
}

/// A word in a crossword. This is a word at a location in a crossword, in either
/// the across or down direction.
abstract class CrosswordWord
    implements Built<CrosswordWord, CrosswordWordBuilder> {
  static Serializer<CrosswordWord> get serializer => _$crosswordWordSerializer;

  /// The word itself.
  String get word;

  /// The location of this word in the crossword.
  Location get location;

  /// The direction of this word in the crossword.
  Direction get direction;

  /// Compare two CrosswordWord by coordinates, x then y.
  static int locationComparator(CrosswordWord a, CrosswordWord b) {
    final compareRows = a.location.y.compareTo(b.location.y);
    final compareColumns = a.location.x.compareTo(b.location.x);
    return switch (compareColumns) {
      0 => compareRows,
      _ => compareColumns,
    };
  }

  /// Constructor for [CrosswordWord].
  factory CrosswordWord.word({
    required String word,
    required Location location,
    required Direction direction,
  }) {
    return CrosswordWord(
      (b) =>
          b
            ..word = word
            ..direction = direction
            ..location.replace(location),
    );
  }

  /// Constructor for [CrosswordWord].
  /// Use [CrosswordWord.word] instead.
  factory CrosswordWord([void Function(CrosswordWordBuilder)? updates]) =
      _$CrosswordWord;
  CrosswordWord._();
}

/// A character in a crossword. This is a single character at a location in a
/// crossword. It may be part of an across word, a down word, both, but not
/// neither. The neither constraint is enforced elsewhere.
abstract class CrosswordCharacter
    implements Built<CrosswordCharacter, CrosswordCharacterBuilder> {
  static Serializer<CrosswordCharacter> get serializer =>
      _$crosswordCharacterSerializer;

  /// The character at this location.
  String get character;

  /// The across word that this character is a part of.
  CrosswordWord? get acrossWord;

  /// The down word that this character is a part of.
  CrosswordWord? get downWord;

  /// Constructor for [CrosswordCharacter].
  /// [acrossWord] and [downWord] are optional.
  factory CrosswordCharacter.character({
    required String character,
    CrosswordWord? acrossWord,
    CrosswordWord? downWord,
  }) {
    return CrosswordCharacter((b) {
      b.character = character;
      if (acrossWord != null) {
        b.acrossWord.replace(acrossWord);
      }
      if (downWord != null) {
        b.downWord.replace(downWord);
      }
    });
  }

  /// Constructor for [CrosswordCharacter].
  /// Use [CrosswordCharacter.character] instead.
  factory CrosswordCharacter([
    void Function(CrosswordCharacterBuilder)? updates,
  ]) = _$CrosswordCharacter;
  CrosswordCharacter._();
}

/// A crossword puzzle. This is a grid of characters with words placed in it.
/// The puzzle constraint is in the English crossword puzzle tradition.
abstract class Crossword implements Built<Crossword, CrosswordBuilder> {
  /// Serializes and deserializes the [Crossword] class.
  static Serializer<Crossword> get serializer => _$crosswordSerializer;

  /// Width across the [Crossword] puzzle.
  int get width;

  /// Height down the [Crossword] puzzle.
  int get height;

  /// The words in the crossword.
  BuiltList<CrosswordWord> get words;

  /// The characters by location. Useful for displaying the crossword,
  /// or checking the proposed solution.
  BuiltMap<Location, CrosswordCharacter> get characters;

  /// Checks if this crossword is valid.
  bool get valid {
    // Check that there are no duplicate words.
    final wordSet = words.map((word) => word.word).toBuiltSet();
    if (wordSet.length != words.length) {
      return false;
    }

    for (final MapEntry(key: location, value: character)
        in characters.entries) {
      // All characters must be a part of an across or down word.
      if (character.acrossWord == null && character.downWord == null) {
        return false;
      }

      // All characters must be within the crossword puzzle.
      // No drawing outside the lines.
      if (location.x < 0 ||
          location.y < 0 ||
          location.x >= width ||
          location.y >= height) {
        return false;
      }

      // Characters above and below this character must be related
      // by a vertical word
      if (characters[location.up] case final up?) {
        if (character.downWord == null) {
          return false;
        }
        if (up.downWord != character.downWord) {
          return false;
        }
      }

      if (characters[location.down] case final down?) {
        if (character.downWord == null) {
          return false;
        }
        if (down.downWord != character.downWord) {
          return false;
        }
      }

      // Characters to the left and right of this character must be
      // related by a horizontal word
      final left = characters[location.left];
      if (left != null) {
        if (character.acrossWord == null) {
          return false;
        }
        if (left.acrossWord != character.acrossWord) {
          return false;
        }
      }

      final right = characters[location.right];
      if (right != null) {
        if (character.acrossWord == null) {
          return false;
        }
        if (right.acrossWord != character.acrossWord) {
          return false;
        }
      }
    }

    return true;
  }

  /// Add a word to the crossword at the given location and direction.
  Crossword? addWord({
    required Location location,
    required String word,
    required Direction direction,
  }) {
    // Require that the word is not already in the crossword.
    if (words.map((crosswordWord) => crosswordWord.word).contains(word)) {
      return null;
    }

    final wordCharacters = word.characters;
    bool overlap = false;

    // Check that the word fits in the crossword.
    for (final (index, character) in wordCharacters.indexed) {
      final characterLocation = switch (direction) {
        Direction.across => location.rightOffset(index),
        Direction.down => location.downOffset(index),
      };

      final target = characters[characterLocation];
      if (target != null) {
        overlap = true;
        if (target.character != character) {
          return null;
        }
        if (direction == Direction.across && target.acrossWord != null ||
            direction == Direction.down && target.downWord != null) {
          return null;
        }
      }
    }
    if (words.isNotEmpty && !overlap) {
      return null;
    }

    final candidate = rebuild(
      (b) =>
          b
            ..words.add(
              CrosswordWord.word(
                word: word,
                direction: direction,
                location: location,
              ),
            ),
    );

    if (candidate.valid) {
      return candidate;
    } else {
      return null;
    }
  }

  /// As a finalize step, fill in the characters map.
  @BuiltValueHook(finalizeBuilder: true)
  static void _fillCharacters(CrosswordBuilder b) {
    b.characters.clear();

    for (final word in b.words.build()) {
      for (final (idx, character) in word.word.characters.indexed) {
        switch (word.direction) {
          case Direction.across:
            b.characters.updateValue(
              word.location.rightOffset(idx),
              (b) => b.rebuild((bInner) => bInner.acrossWord.replace(word)),
              ifAbsent:
                  () => CrosswordCharacter.character(
                    acrossWord: word,
                    character: character,
                  ),
            );
          case Direction.down:
            b.characters.updateValue(
              word.location.downOffset(idx),
              (b) => b.rebuild((bInner) => bInner.downWord.replace(word)),
              ifAbsent:
                  () => CrosswordCharacter.character(
                    downWord: word,
                    character: character,
                  ),
            );
        }
      }
    }
  }

  /// Pretty print a crossword. Generates the character grid, and lists
  /// the down words and across words sorted by location.
  String prettyPrintCrossword() {
    final buffer = StringBuffer();
    final grid = List.generate(
      height,
      (_) => List.generate(
        width,
        (_) => '░', // https://www.compart.com/en/unicode/U+2591
      ),
    );

    for (final MapEntry(key: Location(:x, :y), value: character)
        in characters.entries) {
      grid[y][x] = character.character;
    }

    for (final row in grid) {
      buffer.writeln(row.join());
    }

    buffer.writeln();
    buffer.writeln('Across:');
    for (final word
        in words.where((word) => word.direction == Direction.across).toList()
          ..sort(CrosswordWord.locationComparator)) {
      buffer.writeln('${word.location.prettyPrint()}: ${word.word}');
    }

    buffer.writeln();
    buffer.writeln('Down:');
    for (final word
        in words.where((word) => word.direction == Direction.down).toList()
          ..sort(CrosswordWord.locationComparator)) {
      buffer.writeln('${word.location.prettyPrint()}: ${word.word}');
    }

    return buffer.toString();
  }

  /// Constructor for [Crossword].
  factory Crossword.crossword({
    required int width,
    required int height,
    Iterable<CrosswordWord>? words,
  }) {
    return Crossword((b) {
      b
        ..width = width
        ..height = height;
      if (words != null) {
        b.words.addAll(words);
      }
    });
  }

  /// Constructor for [Crossword].
  /// Use [Crossword.crossword] instead.
  factory Crossword([void Function(CrosswordBuilder)? updates]) = _$Crossword;
  Crossword._();
}

/// Construct the serialization/deserialization code for the data model.
@SerializersFor([Location, Crossword, CrosswordWord, CrosswordCharacter])
final Serializers serializers = _$serializers;
