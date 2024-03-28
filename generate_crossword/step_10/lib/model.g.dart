// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Crossword.serializer)
      ..add(CrosswordCharacter.serializer)
      ..add(CrosswordPuzzleGame.serializer)
      ..add(CrosswordWord.serializer)
      ..add(DisplayInfo.serializer)
      ..add(Location.serializer)
      ..add(WorkQueue.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CrosswordWord)]),
          () => new ListBuilder<CrosswordWord>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(Location),
            const FullType(CrosswordCharacter)
          ]),
          () => new MapBuilder<Location, CrosswordCharacter>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(Location),
            const FullType(BuiltMap, const [
              const FullType(Direction),
              const FullType(BuiltList, const [const FullType(String)])
            ])
          ]),
          () => new MapBuilder<Location,
              BuiltMap<Direction, BuiltList<String>>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CrosswordWord)]),
          () => new ListBuilder<CrosswordWord>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(Location), const FullType(Direction)]),
          () => new MapBuilder<Location, Direction>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(Location)]),
          () => new SetBuilder<Location>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(String)]),
          () => new SetBuilder<String>()))
    .build();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<CrosswordWord> _$crosswordWordSerializer =
    new _$CrosswordWordSerializer();
Serializer<CrosswordCharacter> _$crosswordCharacterSerializer =
    new _$CrosswordCharacterSerializer();
Serializer<Crossword> _$crosswordSerializer = new _$CrosswordSerializer();
Serializer<WorkQueue> _$workQueueSerializer = new _$WorkQueueSerializer();
Serializer<DisplayInfo> _$displayInfoSerializer = new _$DisplayInfoSerializer();
Serializer<CrosswordPuzzleGame> _$crosswordPuzzleGameSerializer =
    new _$CrosswordPuzzleGameSerializer();

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'x',
      serializers.serialize(object.x, specifiedType: const FullType(int)),
      'y',
      serializers.serialize(object.y, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CrosswordWordSerializer implements StructuredSerializer<CrosswordWord> {
  @override
  final Iterable<Type> types = const [CrosswordWord, _$CrosswordWord];
  @override
  final String wireName = 'CrosswordWord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CrosswordWord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'word',
      serializers.serialize(object.word, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
      'direction',
      serializers.serialize(object.direction,
          specifiedType: const FullType(Direction)),
    ];

    return result;
  }

  @override
  CrosswordWord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CrosswordWordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'word':
          result.word = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location))! as Location);
          break;
        case 'direction':
          result.direction = serializers.deserialize(value,
              specifiedType: const FullType(Direction))! as Direction;
          break;
      }
    }

    return result.build();
  }
}

class _$CrosswordCharacterSerializer
    implements StructuredSerializer<CrosswordCharacter> {
  @override
  final Iterable<Type> types = const [CrosswordCharacter, _$CrosswordCharacter];
  @override
  final String wireName = 'CrosswordCharacter';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CrosswordCharacter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'character',
      serializers.serialize(object.character,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.acrossWord;
    if (value != null) {
      result
        ..add('acrossWord')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CrosswordWord)));
    }
    value = object.downWord;
    if (value != null) {
      result
        ..add('downWord')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CrosswordWord)));
    }
    return result;
  }

  @override
  CrosswordCharacter deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CrosswordCharacterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'acrossWord':
          result.acrossWord.replace(serializers.deserialize(value,
              specifiedType: const FullType(CrosswordWord))! as CrosswordWord);
          break;
        case 'downWord':
          result.downWord.replace(serializers.deserialize(value,
              specifiedType: const FullType(CrosswordWord))! as CrosswordWord);
          break;
      }
    }

    return result.build();
  }
}

class _$CrosswordSerializer implements StructuredSerializer<Crossword> {
  @override
  final Iterable<Type> types = const [Crossword, _$Crossword];
  @override
  final String wireName = 'Crossword';

  @override
  Iterable<Object?> serialize(Serializers serializers, Crossword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'words',
      serializers.serialize(object.words,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CrosswordWord)])),
      'characters',
      serializers.serialize(object.characters,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(Location),
            const FullType(CrosswordCharacter)
          ])),
    ];

    return result;
  }

  @override
  Crossword deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CrosswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'words':
          result.words.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CrosswordWord)]))!
              as BuiltList<Object?>);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(Location),
                const FullType(CrosswordCharacter)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$WorkQueueSerializer implements StructuredSerializer<WorkQueue> {
  @override
  final Iterable<Type> types = const [WorkQueue, _$WorkQueue];
  @override
  final String wireName = 'WorkQueue';

  @override
  Iterable<Object?> serialize(Serializers serializers, WorkQueue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'crossword',
      serializers.serialize(object.crossword,
          specifiedType: const FullType(Crossword)),
      'locationsToTry',
      serializers.serialize(object.locationsToTry,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(Location), const FullType(Direction)])),
      'badLocations',
      serializers.serialize(object.badLocations,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(Location)])),
      'candidateWords',
      serializers.serialize(object.candidateWords,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  WorkQueue deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkQueueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'crossword':
          result.crossword.replace(serializers.deserialize(value,
              specifiedType: const FullType(Crossword))! as Crossword);
          break;
        case 'locationsToTry':
          result.locationsToTry.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(Location),
                const FullType(Direction)
              ]))!);
          break;
        case 'badLocations':
          result.badLocations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(Location)]))!
              as BuiltSet<Object?>);
          break;
        case 'candidateWords':
          result.candidateWords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))!
              as BuiltSet<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$DisplayInfoSerializer implements StructuredSerializer<DisplayInfo> {
  @override
  final Iterable<Type> types = const [DisplayInfo, _$DisplayInfo];
  @override
  final String wireName = 'DisplayInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, DisplayInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'wordsInGridCount',
      serializers.serialize(object.wordsInGridCount,
          specifiedType: const FullType(String)),
      'candidateWordsCount',
      serializers.serialize(object.candidateWordsCount,
          specifiedType: const FullType(String)),
      'locationsToExploreCount',
      serializers.serialize(object.locationsToExploreCount,
          specifiedType: const FullType(String)),
      'knownBadLocationsCount',
      serializers.serialize(object.knownBadLocationsCount,
          specifiedType: const FullType(String)),
      'gridFilledPercentage',
      serializers.serialize(object.gridFilledPercentage,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DisplayInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DisplayInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'wordsInGridCount':
          result.wordsInGridCount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'candidateWordsCount':
          result.candidateWordsCount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'locationsToExploreCount':
          result.locationsToExploreCount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'knownBadLocationsCount':
          result.knownBadLocationsCount = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gridFilledPercentage':
          result.gridFilledPercentage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CrosswordPuzzleGameSerializer
    implements StructuredSerializer<CrosswordPuzzleGame> {
  @override
  final Iterable<Type> types = const [
    CrosswordPuzzleGame,
    _$CrosswordPuzzleGame
  ];
  @override
  final String wireName = 'CrosswordPuzzleGame';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CrosswordPuzzleGame object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'crossword',
      serializers.serialize(object.crossword,
          specifiedType: const FullType(Crossword)),
      'alternateWords',
      serializers.serialize(object.alternateWords,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(Location),
            const FullType(BuiltMap, const [
              const FullType(Direction),
              const FullType(BuiltList, const [const FullType(String)])
            ])
          ])),
      'selectedWords',
      serializers.serialize(object.selectedWords,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CrosswordWord)])),
    ];

    return result;
  }

  @override
  CrosswordPuzzleGame deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CrosswordPuzzleGameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'crossword':
          result.crossword.replace(serializers.deserialize(value,
              specifiedType: const FullType(Crossword))! as Crossword);
          break;
        case 'alternateWords':
          result.alternateWords.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(Location),
                const FullType(BuiltMap, const [
                  const FullType(Direction),
                  const FullType(BuiltList, const [const FullType(String)])
                ])
              ]))!);
          break;
        case 'selectedWords':
          result.selectedWords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CrosswordWord)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final int x;
  @override
  final int y;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates))._build();

  _$Location._({required this.x, required this.y}) : super._() {
    BuiltValueNullFieldError.checkNotNull(x, r'Location', 'x');
    BuiltValueNullFieldError.checkNotNull(y, r'Location', 'y');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location && x == other.x && y == other.y;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Location')
          ..add('x', x)
          ..add('y', y))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  int? _x;
  int? get x => _$this._x;
  set x(int? x) => _$this._x = x;

  int? _y;
  int? get y => _$this._y;
  set y(int? y) => _$this._y = y;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _x = $v.x;
      _y = $v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Location build() => _build();

  _$Location _build() {
    final _$result = _$v ??
        new _$Location._(
            x: BuiltValueNullFieldError.checkNotNull(x, r'Location', 'x'),
            y: BuiltValueNullFieldError.checkNotNull(y, r'Location', 'y'));
    replace(_$result);
    return _$result;
  }
}

class _$CrosswordWord extends CrosswordWord {
  @override
  final String word;
  @override
  final Location location;
  @override
  final Direction direction;

  factory _$CrosswordWord([void Function(CrosswordWordBuilder)? updates]) =>
      (new CrosswordWordBuilder()..update(updates))._build();

  _$CrosswordWord._(
      {required this.word, required this.location, required this.direction})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(word, r'CrosswordWord', 'word');
    BuiltValueNullFieldError.checkNotNull(
        location, r'CrosswordWord', 'location');
    BuiltValueNullFieldError.checkNotNull(
        direction, r'CrosswordWord', 'direction');
  }

  @override
  CrosswordWord rebuild(void Function(CrosswordWordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrosswordWordBuilder toBuilder() => new CrosswordWordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrosswordWord &&
        word == other.word &&
        location == other.location &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, word.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CrosswordWord')
          ..add('word', word)
          ..add('location', location)
          ..add('direction', direction))
        .toString();
  }
}

class CrosswordWordBuilder
    implements Builder<CrosswordWord, CrosswordWordBuilder> {
  _$CrosswordWord? _$v;

  String? _word;
  String? get word => _$this._word;
  set word(String? word) => _$this._word = word;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  Direction? _direction;
  Direction? get direction => _$this._direction;
  set direction(Direction? direction) => _$this._direction = direction;

  CrosswordWordBuilder();

  CrosswordWordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _word = $v.word;
      _location = $v.location.toBuilder();
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CrosswordWord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CrosswordWord;
  }

  @override
  void update(void Function(CrosswordWordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CrosswordWord build() => _build();

  _$CrosswordWord _build() {
    _$CrosswordWord _$result;
    try {
      _$result = _$v ??
          new _$CrosswordWord._(
              word: BuiltValueNullFieldError.checkNotNull(
                  word, r'CrosswordWord', 'word'),
              location: location.build(),
              direction: BuiltValueNullFieldError.checkNotNull(
                  direction, r'CrosswordWord', 'direction'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CrosswordWord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CrosswordCharacter extends CrosswordCharacter {
  @override
  final String character;
  @override
  final CrosswordWord? acrossWord;
  @override
  final CrosswordWord? downWord;

  factory _$CrosswordCharacter(
          [void Function(CrosswordCharacterBuilder)? updates]) =>
      (new CrosswordCharacterBuilder()..update(updates))._build();

  _$CrosswordCharacter._(
      {required this.character, this.acrossWord, this.downWord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        character, r'CrosswordCharacter', 'character');
  }

  @override
  CrosswordCharacter rebuild(
          void Function(CrosswordCharacterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrosswordCharacterBuilder toBuilder() =>
      new CrosswordCharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrosswordCharacter &&
        character == other.character &&
        acrossWord == other.acrossWord &&
        downWord == other.downWord;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, acrossWord.hashCode);
    _$hash = $jc(_$hash, downWord.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CrosswordCharacter')
          ..add('character', character)
          ..add('acrossWord', acrossWord)
          ..add('downWord', downWord))
        .toString();
  }
}

class CrosswordCharacterBuilder
    implements Builder<CrosswordCharacter, CrosswordCharacterBuilder> {
  _$CrosswordCharacter? _$v;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  CrosswordWordBuilder? _acrossWord;
  CrosswordWordBuilder get acrossWord =>
      _$this._acrossWord ??= new CrosswordWordBuilder();
  set acrossWord(CrosswordWordBuilder? acrossWord) =>
      _$this._acrossWord = acrossWord;

  CrosswordWordBuilder? _downWord;
  CrosswordWordBuilder get downWord =>
      _$this._downWord ??= new CrosswordWordBuilder();
  set downWord(CrosswordWordBuilder? downWord) => _$this._downWord = downWord;

  CrosswordCharacterBuilder();

  CrosswordCharacterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _character = $v.character;
      _acrossWord = $v.acrossWord?.toBuilder();
      _downWord = $v.downWord?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CrosswordCharacter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CrosswordCharacter;
  }

  @override
  void update(void Function(CrosswordCharacterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CrosswordCharacter build() => _build();

  _$CrosswordCharacter _build() {
    _$CrosswordCharacter _$result;
    try {
      _$result = _$v ??
          new _$CrosswordCharacter._(
              character: BuiltValueNullFieldError.checkNotNull(
                  character, r'CrosswordCharacter', 'character'),
              acrossWord: _acrossWord?.build(),
              downWord: _downWord?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'acrossWord';
        _acrossWord?.build();
        _$failedField = 'downWord';
        _downWord?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CrosswordCharacter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Crossword extends Crossword {
  @override
  final int width;
  @override
  final int height;
  @override
  final BuiltList<CrosswordWord> words;
  @override
  final BuiltMap<Location, CrosswordCharacter> characters;

  factory _$Crossword([void Function(CrosswordBuilder)? updates]) =>
      (new CrosswordBuilder()..update(updates))._build();

  _$Crossword._(
      {required this.width,
      required this.height,
      required this.words,
      required this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(width, r'Crossword', 'width');
    BuiltValueNullFieldError.checkNotNull(height, r'Crossword', 'height');
    BuiltValueNullFieldError.checkNotNull(words, r'Crossword', 'words');
    BuiltValueNullFieldError.checkNotNull(
        characters, r'Crossword', 'characters');
  }

  @override
  Crossword rebuild(void Function(CrosswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrosswordBuilder toBuilder() => new CrosswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Crossword &&
        width == other.width &&
        height == other.height &&
        words == other.words &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, words.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Crossword')
          ..add('width', width)
          ..add('height', height)
          ..add('words', words)
          ..add('characters', characters))
        .toString();
  }
}

class CrosswordBuilder implements Builder<Crossword, CrosswordBuilder> {
  _$Crossword? _$v;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  ListBuilder<CrosswordWord>? _words;
  ListBuilder<CrosswordWord> get words =>
      _$this._words ??= new ListBuilder<CrosswordWord>();
  set words(ListBuilder<CrosswordWord>? words) => _$this._words = words;

  MapBuilder<Location, CrosswordCharacter>? _characters;
  MapBuilder<Location, CrosswordCharacter> get characters =>
      _$this._characters ??= new MapBuilder<Location, CrosswordCharacter>();
  set characters(MapBuilder<Location, CrosswordCharacter>? characters) =>
      _$this._characters = characters;

  CrosswordBuilder();

  CrosswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _width = $v.width;
      _height = $v.height;
      _words = $v.words.toBuilder();
      _characters = $v.characters.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Crossword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Crossword;
  }

  @override
  void update(void Function(CrosswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Crossword build() => _build();

  _$Crossword _build() {
    Crossword._fillCharacters(this);
    _$Crossword _$result;
    try {
      _$result = _$v ??
          new _$Crossword._(
              width: BuiltValueNullFieldError.checkNotNull(
                  width, r'Crossword', 'width'),
              height: BuiltValueNullFieldError.checkNotNull(
                  height, r'Crossword', 'height'),
              words: words.build(),
              characters: characters.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'words';
        words.build();
        _$failedField = 'characters';
        characters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Crossword', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WorkQueue extends WorkQueue {
  @override
  final Crossword crossword;
  @override
  final BuiltMap<Location, Direction> locationsToTry;
  @override
  final BuiltSet<Location> badLocations;
  @override
  final BuiltSet<String> candidateWords;

  factory _$WorkQueue([void Function(WorkQueueBuilder)? updates]) =>
      (new WorkQueueBuilder()..update(updates))._build();

  _$WorkQueue._(
      {required this.crossword,
      required this.locationsToTry,
      required this.badLocations,
      required this.candidateWords})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(crossword, r'WorkQueue', 'crossword');
    BuiltValueNullFieldError.checkNotNull(
        locationsToTry, r'WorkQueue', 'locationsToTry');
    BuiltValueNullFieldError.checkNotNull(
        badLocations, r'WorkQueue', 'badLocations');
    BuiltValueNullFieldError.checkNotNull(
        candidateWords, r'WorkQueue', 'candidateWords');
  }

  @override
  WorkQueue rebuild(void Function(WorkQueueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkQueueBuilder toBuilder() => new WorkQueueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkQueue &&
        crossword == other.crossword &&
        locationsToTry == other.locationsToTry &&
        badLocations == other.badLocations &&
        candidateWords == other.candidateWords;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, crossword.hashCode);
    _$hash = $jc(_$hash, locationsToTry.hashCode);
    _$hash = $jc(_$hash, badLocations.hashCode);
    _$hash = $jc(_$hash, candidateWords.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkQueue')
          ..add('crossword', crossword)
          ..add('locationsToTry', locationsToTry)
          ..add('badLocations', badLocations)
          ..add('candidateWords', candidateWords))
        .toString();
  }
}

class WorkQueueBuilder implements Builder<WorkQueue, WorkQueueBuilder> {
  _$WorkQueue? _$v;

  CrosswordBuilder? _crossword;
  CrosswordBuilder get crossword =>
      _$this._crossword ??= new CrosswordBuilder();
  set crossword(CrosswordBuilder? crossword) => _$this._crossword = crossword;

  MapBuilder<Location, Direction>? _locationsToTry;
  MapBuilder<Location, Direction> get locationsToTry =>
      _$this._locationsToTry ??= new MapBuilder<Location, Direction>();
  set locationsToTry(MapBuilder<Location, Direction>? locationsToTry) =>
      _$this._locationsToTry = locationsToTry;

  SetBuilder<Location>? _badLocations;
  SetBuilder<Location> get badLocations =>
      _$this._badLocations ??= new SetBuilder<Location>();
  set badLocations(SetBuilder<Location>? badLocations) =>
      _$this._badLocations = badLocations;

  SetBuilder<String>? _candidateWords;
  SetBuilder<String> get candidateWords =>
      _$this._candidateWords ??= new SetBuilder<String>();
  set candidateWords(SetBuilder<String>? candidateWords) =>
      _$this._candidateWords = candidateWords;

  WorkQueueBuilder();

  WorkQueueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _crossword = $v.crossword.toBuilder();
      _locationsToTry = $v.locationsToTry.toBuilder();
      _badLocations = $v.badLocations.toBuilder();
      _candidateWords = $v.candidateWords.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkQueue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkQueue;
  }

  @override
  void update(void Function(WorkQueueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkQueue build() => _build();

  _$WorkQueue _build() {
    _$WorkQueue _$result;
    try {
      _$result = _$v ??
          new _$WorkQueue._(
              crossword: crossword.build(),
              locationsToTry: locationsToTry.build(),
              badLocations: badLocations.build(),
              candidateWords: candidateWords.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'crossword';
        crossword.build();
        _$failedField = 'locationsToTry';
        locationsToTry.build();
        _$failedField = 'badLocations';
        badLocations.build();
        _$failedField = 'candidateWords';
        candidateWords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkQueue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DisplayInfo extends DisplayInfo {
  @override
  final String wordsInGridCount;
  @override
  final String candidateWordsCount;
  @override
  final String locationsToExploreCount;
  @override
  final String knownBadLocationsCount;
  @override
  final String gridFilledPercentage;

  factory _$DisplayInfo([void Function(DisplayInfoBuilder)? updates]) =>
      (new DisplayInfoBuilder()..update(updates))._build();

  _$DisplayInfo._(
      {required this.wordsInGridCount,
      required this.candidateWordsCount,
      required this.locationsToExploreCount,
      required this.knownBadLocationsCount,
      required this.gridFilledPercentage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        wordsInGridCount, r'DisplayInfo', 'wordsInGridCount');
    BuiltValueNullFieldError.checkNotNull(
        candidateWordsCount, r'DisplayInfo', 'candidateWordsCount');
    BuiltValueNullFieldError.checkNotNull(
        locationsToExploreCount, r'DisplayInfo', 'locationsToExploreCount');
    BuiltValueNullFieldError.checkNotNull(
        knownBadLocationsCount, r'DisplayInfo', 'knownBadLocationsCount');
    BuiltValueNullFieldError.checkNotNull(
        gridFilledPercentage, r'DisplayInfo', 'gridFilledPercentage');
  }

  @override
  DisplayInfo rebuild(void Function(DisplayInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisplayInfoBuilder toBuilder() => new DisplayInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisplayInfo &&
        wordsInGridCount == other.wordsInGridCount &&
        candidateWordsCount == other.candidateWordsCount &&
        locationsToExploreCount == other.locationsToExploreCount &&
        knownBadLocationsCount == other.knownBadLocationsCount &&
        gridFilledPercentage == other.gridFilledPercentage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, wordsInGridCount.hashCode);
    _$hash = $jc(_$hash, candidateWordsCount.hashCode);
    _$hash = $jc(_$hash, locationsToExploreCount.hashCode);
    _$hash = $jc(_$hash, knownBadLocationsCount.hashCode);
    _$hash = $jc(_$hash, gridFilledPercentage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DisplayInfo')
          ..add('wordsInGridCount', wordsInGridCount)
          ..add('candidateWordsCount', candidateWordsCount)
          ..add('locationsToExploreCount', locationsToExploreCount)
          ..add('knownBadLocationsCount', knownBadLocationsCount)
          ..add('gridFilledPercentage', gridFilledPercentage))
        .toString();
  }
}

class DisplayInfoBuilder implements Builder<DisplayInfo, DisplayInfoBuilder> {
  _$DisplayInfo? _$v;

  String? _wordsInGridCount;
  String? get wordsInGridCount => _$this._wordsInGridCount;
  set wordsInGridCount(String? wordsInGridCount) =>
      _$this._wordsInGridCount = wordsInGridCount;

  String? _candidateWordsCount;
  String? get candidateWordsCount => _$this._candidateWordsCount;
  set candidateWordsCount(String? candidateWordsCount) =>
      _$this._candidateWordsCount = candidateWordsCount;

  String? _locationsToExploreCount;
  String? get locationsToExploreCount => _$this._locationsToExploreCount;
  set locationsToExploreCount(String? locationsToExploreCount) =>
      _$this._locationsToExploreCount = locationsToExploreCount;

  String? _knownBadLocationsCount;
  String? get knownBadLocationsCount => _$this._knownBadLocationsCount;
  set knownBadLocationsCount(String? knownBadLocationsCount) =>
      _$this._knownBadLocationsCount = knownBadLocationsCount;

  String? _gridFilledPercentage;
  String? get gridFilledPercentage => _$this._gridFilledPercentage;
  set gridFilledPercentage(String? gridFilledPercentage) =>
      _$this._gridFilledPercentage = gridFilledPercentage;

  DisplayInfoBuilder();

  DisplayInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wordsInGridCount = $v.wordsInGridCount;
      _candidateWordsCount = $v.candidateWordsCount;
      _locationsToExploreCount = $v.locationsToExploreCount;
      _knownBadLocationsCount = $v.knownBadLocationsCount;
      _gridFilledPercentage = $v.gridFilledPercentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisplayInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisplayInfo;
  }

  @override
  void update(void Function(DisplayInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisplayInfo build() => _build();

  _$DisplayInfo _build() {
    final _$result = _$v ??
        new _$DisplayInfo._(
            wordsInGridCount: BuiltValueNullFieldError.checkNotNull(
                wordsInGridCount, r'DisplayInfo', 'wordsInGridCount'),
            candidateWordsCount: BuiltValueNullFieldError.checkNotNull(
                candidateWordsCount, r'DisplayInfo', 'candidateWordsCount'),
            locationsToExploreCount: BuiltValueNullFieldError.checkNotNull(
                locationsToExploreCount,
                r'DisplayInfo',
                'locationsToExploreCount'),
            knownBadLocationsCount: BuiltValueNullFieldError.checkNotNull(
                knownBadLocationsCount,
                r'DisplayInfo',
                'knownBadLocationsCount'),
            gridFilledPercentage: BuiltValueNullFieldError.checkNotNull(
                gridFilledPercentage, r'DisplayInfo', 'gridFilledPercentage'));
    replace(_$result);
    return _$result;
  }
}

class _$CrosswordPuzzleGame extends CrosswordPuzzleGame {
  @override
  final Crossword crossword;
  @override
  final BuiltMap<Location, BuiltMap<Direction, BuiltList<String>>>
      alternateWords;
  @override
  final BuiltList<CrosswordWord> selectedWords;

  factory _$CrosswordPuzzleGame(
          [void Function(CrosswordPuzzleGameBuilder)? updates]) =>
      (new CrosswordPuzzleGameBuilder()..update(updates))._build();

  _$CrosswordPuzzleGame._(
      {required this.crossword,
      required this.alternateWords,
      required this.selectedWords})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        crossword, r'CrosswordPuzzleGame', 'crossword');
    BuiltValueNullFieldError.checkNotNull(
        alternateWords, r'CrosswordPuzzleGame', 'alternateWords');
    BuiltValueNullFieldError.checkNotNull(
        selectedWords, r'CrosswordPuzzleGame', 'selectedWords');
  }

  @override
  CrosswordPuzzleGame rebuild(
          void Function(CrosswordPuzzleGameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrosswordPuzzleGameBuilder toBuilder() =>
      new CrosswordPuzzleGameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrosswordPuzzleGame &&
        crossword == other.crossword &&
        alternateWords == other.alternateWords &&
        selectedWords == other.selectedWords;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, crossword.hashCode);
    _$hash = $jc(_$hash, alternateWords.hashCode);
    _$hash = $jc(_$hash, selectedWords.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CrosswordPuzzleGame')
          ..add('crossword', crossword)
          ..add('alternateWords', alternateWords)
          ..add('selectedWords', selectedWords))
        .toString();
  }
}

class CrosswordPuzzleGameBuilder
    implements Builder<CrosswordPuzzleGame, CrosswordPuzzleGameBuilder> {
  _$CrosswordPuzzleGame? _$v;

  CrosswordBuilder? _crossword;
  CrosswordBuilder get crossword =>
      _$this._crossword ??= new CrosswordBuilder();
  set crossword(CrosswordBuilder? crossword) => _$this._crossword = crossword;

  MapBuilder<Location, BuiltMap<Direction, BuiltList<String>>>? _alternateWords;
  MapBuilder<Location, BuiltMap<Direction, BuiltList<String>>>
      get alternateWords => _$this._alternateWords ??=
          new MapBuilder<Location, BuiltMap<Direction, BuiltList<String>>>();
  set alternateWords(
          MapBuilder<Location, BuiltMap<Direction, BuiltList<String>>>?
              alternateWords) =>
      _$this._alternateWords = alternateWords;

  ListBuilder<CrosswordWord>? _selectedWords;
  ListBuilder<CrosswordWord> get selectedWords =>
      _$this._selectedWords ??= new ListBuilder<CrosswordWord>();
  set selectedWords(ListBuilder<CrosswordWord>? selectedWords) =>
      _$this._selectedWords = selectedWords;

  CrosswordPuzzleGameBuilder();

  CrosswordPuzzleGameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _crossword = $v.crossword.toBuilder();
      _alternateWords = $v.alternateWords.toBuilder();
      _selectedWords = $v.selectedWords.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CrosswordPuzzleGame other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CrosswordPuzzleGame;
  }

  @override
  void update(void Function(CrosswordPuzzleGameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CrosswordPuzzleGame build() => _build();

  _$CrosswordPuzzleGame _build() {
    _$CrosswordPuzzleGame _$result;
    try {
      _$result = _$v ??
          new _$CrosswordPuzzleGame._(
              crossword: crossword.build(),
              alternateWords: alternateWords.build(),
              selectedWords: selectedWords.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'crossword';
        crossword.build();
        _$failedField = 'alternateWords';
        alternateWords.build();
        _$failedField = 'selectedWords';
        selectedWords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CrosswordPuzzleGame', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
