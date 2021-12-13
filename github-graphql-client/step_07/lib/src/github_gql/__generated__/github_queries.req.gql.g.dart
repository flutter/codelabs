// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_queries.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerDetail> _$gViewerDetailSerializer =
    new _$GViewerDetailSerializer();
Serializer<GPullRequests> _$gPullRequestsSerializer =
    new _$GPullRequestsSerializer();
Serializer<GAssignedIssues> _$gAssignedIssuesSerializer =
    new _$GAssignedIssuesSerializer();
Serializer<GRepositories> _$gRepositoriesSerializer =
    new _$GRepositoriesSerializer();

class _$GViewerDetailSerializer implements StructuredSerializer<GViewerDetail> {
  @override
  final Iterable<Type> types = const [GViewerDetail, _$GViewerDetail];
  @override
  final String wireName = 'GViewerDetail';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GViewerDetailVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GViewerDetail deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GViewerDetailVars))!
              as _i3.GViewerDetailVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GPullRequestsSerializer implements StructuredSerializer<GPullRequests> {
  @override
  final Iterable<Type> types = const [GPullRequests, _$GPullRequests];
  @override
  final String wireName = 'GPullRequests';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPullRequests object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GPullRequestsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GPullRequests deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPullRequestsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GPullRequestsVars))!
              as _i3.GPullRequestsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GAssignedIssuesSerializer
    implements StructuredSerializer<GAssignedIssues> {
  @override
  final Iterable<Type> types = const [GAssignedIssues, _$GAssignedIssues];
  @override
  final String wireName = 'GAssignedIssues';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAssignedIssues object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GAssignedIssuesVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GAssignedIssues deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssignedIssuesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAssignedIssuesVars))!
              as _i3.GAssignedIssuesVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GRepositoriesSerializer implements StructuredSerializer<GRepositories> {
  @override
  final Iterable<Type> types = const [GRepositories, _$GRepositories];
  @override
  final String wireName = 'GRepositories';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRepositories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GRepositoriesVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GRepositories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRepositoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GRepositoriesVars))!
              as _i3.GRepositoriesVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerDetail extends GViewerDetail {
  @override
  final _i3.GViewerDetailVars vars;
  @override
  final _i1.Operation operation;

  factory _$GViewerDetail([void Function(GViewerDetailBuilder)? updates]) =>
      (new GViewerDetailBuilder()..update(updates)).build();

  _$GViewerDetail._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, 'GViewerDetail', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GViewerDetail', 'operation');
  }

  @override
  GViewerDetail rebuild(void Function(GViewerDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerDetailBuilder toBuilder() => new GViewerDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerDetail &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerDetail')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GViewerDetailBuilder
    implements Builder<GViewerDetail, GViewerDetailBuilder> {
  _$GViewerDetail? _$v;

  _i3.GViewerDetailVarsBuilder? _vars;
  _i3.GViewerDetailVarsBuilder get vars =>
      _$this._vars ??= new _i3.GViewerDetailVarsBuilder();
  set vars(_i3.GViewerDetailVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GViewerDetailBuilder() {
    GViewerDetail._initializeBuilder(this);
  }

  GViewerDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerDetail;
  }

  @override
  void update(void Function(GViewerDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerDetail build() {
    _$GViewerDetail _$result;
    try {
      _$result = _$v ??
          new _$GViewerDetail._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GViewerDetail', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GViewerDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPullRequests extends GPullRequests {
  @override
  final _i3.GPullRequestsVars vars;
  @override
  final _i1.Operation operation;

  factory _$GPullRequests([void Function(GPullRequestsBuilder)? updates]) =>
      (new GPullRequestsBuilder()..update(updates)).build();

  _$GPullRequests._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, 'GPullRequests', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GPullRequests', 'operation');
  }

  @override
  GPullRequests rebuild(void Function(GPullRequestsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPullRequestsBuilder toBuilder() => new GPullRequestsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPullRequests &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPullRequests')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GPullRequestsBuilder
    implements Builder<GPullRequests, GPullRequestsBuilder> {
  _$GPullRequests? _$v;

  _i3.GPullRequestsVarsBuilder? _vars;
  _i3.GPullRequestsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GPullRequestsVarsBuilder();
  set vars(_i3.GPullRequestsVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GPullRequestsBuilder() {
    GPullRequests._initializeBuilder(this);
  }

  GPullRequestsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPullRequests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPullRequests;
  }

  @override
  void update(void Function(GPullRequestsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPullRequests build() {
    _$GPullRequests _$result;
    try {
      _$result = _$v ??
          new _$GPullRequests._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GPullRequests', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPullRequests', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAssignedIssues extends GAssignedIssues {
  @override
  final _i3.GAssignedIssuesVars vars;
  @override
  final _i1.Operation operation;

  factory _$GAssignedIssues([void Function(GAssignedIssuesBuilder)? updates]) =>
      (new GAssignedIssuesBuilder()..update(updates)).build();

  _$GAssignedIssues._({required this.vars, required this.operation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, 'GAssignedIssues', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GAssignedIssues', 'operation');
  }

  @override
  GAssignedIssues rebuild(void Function(GAssignedIssuesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssignedIssuesBuilder toBuilder() =>
      new GAssignedIssuesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssignedIssues &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAssignedIssues')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GAssignedIssuesBuilder
    implements Builder<GAssignedIssues, GAssignedIssuesBuilder> {
  _$GAssignedIssues? _$v;

  _i3.GAssignedIssuesVarsBuilder? _vars;
  _i3.GAssignedIssuesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GAssignedIssuesVarsBuilder();
  set vars(_i3.GAssignedIssuesVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GAssignedIssuesBuilder() {
    GAssignedIssues._initializeBuilder(this);
  }

  GAssignedIssuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAssignedIssues other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssignedIssues;
  }

  @override
  void update(void Function(GAssignedIssuesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssignedIssues build() {
    _$GAssignedIssues _$result;
    try {
      _$result = _$v ??
          new _$GAssignedIssues._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GAssignedIssues', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAssignedIssues', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRepositories extends GRepositories {
  @override
  final _i3.GRepositoriesVars vars;
  @override
  final _i1.Operation operation;

  factory _$GRepositories([void Function(GRepositoriesBuilder)? updates]) =>
      (new GRepositoriesBuilder()..update(updates)).build();

  _$GRepositories._({required this.vars, required this.operation}) : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, 'GRepositories', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GRepositories', 'operation');
  }

  @override
  GRepositories rebuild(void Function(GRepositoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRepositoriesBuilder toBuilder() => new GRepositoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRepositories &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRepositories')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GRepositoriesBuilder
    implements Builder<GRepositories, GRepositoriesBuilder> {
  _$GRepositories? _$v;

  _i3.GRepositoriesVarsBuilder? _vars;
  _i3.GRepositoriesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GRepositoriesVarsBuilder();
  set vars(_i3.GRepositoriesVarsBuilder? vars) => _$this._vars = vars;

  _i1.Operation? _operation;
  _i1.Operation? get operation => _$this._operation;
  set operation(_i1.Operation? operation) => _$this._operation = operation;

  GRepositoriesBuilder() {
    GRepositories._initializeBuilder(this);
  }

  GRepositoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRepositories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRepositories;
  }

  @override
  void update(void Function(GRepositoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRepositories build() {
    _$GRepositories _$result;
    try {
      _$result = _$v ??
          new _$GRepositories._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GRepositories', 'operation'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRepositories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
