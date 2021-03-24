// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_queries.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerDetail> _$gViewerDetailSerializer =
    new _$GViewerDetailSerializer();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
