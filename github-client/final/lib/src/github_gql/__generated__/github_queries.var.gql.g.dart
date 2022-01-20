// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerDetailVars> _$gViewerDetailVarsSerializer =
    new _$GViewerDetailVarsSerializer();
Serializer<GPullRequestsVars> _$gPullRequestsVarsSerializer =
    new _$GPullRequestsVarsSerializer();
Serializer<GAssignedIssuesVars> _$gAssignedIssuesVarsSerializer =
    new _$GAssignedIssuesVarsSerializer();
Serializer<GRepositoriesVars> _$gRepositoriesVarsSerializer =
    new _$GRepositoriesVarsSerializer();

class _$GViewerDetailVarsSerializer
    implements StructuredSerializer<GViewerDetailVars> {
  @override
  final Iterable<Type> types = const [GViewerDetailVars, _$GViewerDetailVars];
  @override
  final String wireName = 'GViewerDetailVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerDetailVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GViewerDetailVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GViewerDetailVarsBuilder().build();
  }
}

class _$GPullRequestsVarsSerializer
    implements StructuredSerializer<GPullRequestsVars> {
  @override
  final Iterable<Type> types = const [GPullRequestsVars, _$GPullRequestsVars];
  @override
  final String wireName = 'GPullRequestsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPullRequestsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GPullRequestsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPullRequestsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesVarsSerializer
    implements StructuredSerializer<GAssignedIssuesVars> {
  @override
  final Iterable<Type> types = const [
    GAssignedIssuesVars,
    _$GAssignedIssuesVars
  ];
  @override
  final String wireName = 'GAssignedIssuesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssignedIssuesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'query',
      serializers.serialize(object.query,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GAssignedIssuesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignedIssuesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesVarsSerializer
    implements StructuredSerializer<GRepositoriesVars> {
  @override
  final Iterable<Type> types = const [GRepositoriesVars, _$GRepositoriesVars];
  @override
  final String wireName = 'GRepositoriesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRepositoriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GRepositoriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRepositoriesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerDetailVars extends GViewerDetailVars {
  factory _$GViewerDetailVars(
          [void Function(GViewerDetailVarsBuilder)? updates]) =>
      (new GViewerDetailVarsBuilder()..update(updates)).build();

  _$GViewerDetailVars._() : super._();

  @override
  GViewerDetailVars rebuild(void Function(GViewerDetailVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerDetailVarsBuilder toBuilder() =>
      new GViewerDetailVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerDetailVars;
  }

  @override
  int get hashCode {
    return 947680460;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GViewerDetailVars').toString();
  }
}

class GViewerDetailVarsBuilder
    implements Builder<GViewerDetailVars, GViewerDetailVarsBuilder> {
  _$GViewerDetailVars? _$v;

  GViewerDetailVarsBuilder();

  @override
  void replace(GViewerDetailVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerDetailVars;
  }

  @override
  void update(void Function(GViewerDetailVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerDetailVars build() {
    final _$result = _$v ?? new _$GViewerDetailVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequestsVars extends GPullRequestsVars {
  @override
  final int count;

  factory _$GPullRequestsVars(
          [void Function(GPullRequestsVarsBuilder)? updates]) =>
      (new GPullRequestsVarsBuilder()..update(updates)).build();

  _$GPullRequestsVars._({required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'GPullRequestsVars', 'count');
  }

  @override
  GPullRequestsVars rebuild(void Function(GPullRequestsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsVarsBuilder toBuilder() =>
      new GPullRequestsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequestsVars && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPullRequestsVars')
          ..add('count', count))
        .toString();
  }
}

class GPullRequestsVarsBuilder
    implements Builder<GPullRequestsVars, GPullRequestsVarsBuilder> {
  _$GPullRequestsVars? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GPullRequestsVarsBuilder();

  GPullRequestsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequestsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequestsVars;
  }

  @override
  void update(void Function(GPullRequestsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequestsVars build() {
    final _$result = _$v ??
        new _$GPullRequestsVars._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'GPullRequestsVars', 'count'));
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssuesVars extends GAssignedIssuesVars {
  @override
  final String query;
  @override
  final int count;

  factory _$GAssignedIssuesVars(
          [void Function(GAssignedIssuesVarsBuilder)? updates]) =>
      (new GAssignedIssuesVarsBuilder()..update(updates)).build();

  _$GAssignedIssuesVars._({required this.query, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        query, 'GAssignedIssuesVars', 'query');
    BuiltValueNullFieldError.checkNotNull(
        count, 'GAssignedIssuesVars', 'count');
  }

  @override
  GAssignedIssuesVars rebuild(
          void Function(GAssignedIssuesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesVarsBuilder toBuilder() =>
      new GAssignedIssuesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssuesVars &&
        query == other.query &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, query.hashCode), count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAssignedIssuesVars')
          ..add('query', query)
          ..add('count', count))
        .toString();
  }
}

class GAssignedIssuesVarsBuilder
    implements Builder<GAssignedIssuesVars, GAssignedIssuesVarsBuilder> {
  _$GAssignedIssuesVars? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GAssignedIssuesVarsBuilder();

  GAssignedIssuesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssuesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssuesVars;
  }

  @override
  void update(void Function(GAssignedIssuesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssuesVars build() {
    final _$result = _$v ??
        new _$GAssignedIssuesVars._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, 'GAssignedIssuesVars', 'query'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'GAssignedIssuesVars', 'count'));
    replace(_$result);
    return _$result;
  }
}

class _$GRepositoriesVars extends GRepositoriesVars {
  @override
  final int count;

  factory _$GRepositoriesVars(
          [void Function(GRepositoriesVarsBuilder)? updates]) =>
      (new GRepositoriesVarsBuilder()..update(updates)).build();

  _$GRepositoriesVars._({required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'GRepositoriesVars', 'count');
  }

  @override
  GRepositoriesVars rebuild(void Function(GRepositoriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesVarsBuilder toBuilder() =>
      new GRepositoriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositoriesVars && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRepositoriesVars')
          ..add('count', count))
        .toString();
  }
}

class GRepositoriesVarsBuilder
    implements Builder<GRepositoriesVars, GRepositoriesVarsBuilder> {
  _$GRepositoriesVars? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GRepositoriesVarsBuilder();

  GRepositoriesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositoriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositoriesVars;
  }

  @override
  void update(void Function(GRepositoriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositoriesVars build() {
    final _$result = _$v ??
        new _$GRepositoriesVars._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'GRepositoriesVars', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
