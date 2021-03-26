// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerDetailVars> _$gViewerDetailVarsSerializer =
    new _$GViewerDetailVarsSerializer();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
