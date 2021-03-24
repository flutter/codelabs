// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_queries.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerDetailData> _$gViewerDetailDataSerializer =
    new _$GViewerDetailDataSerializer();
Serializer<GViewerDetailData_viewer> _$gViewerDetailDataViewerSerializer =
    new _$GViewerDetailData_viewerSerializer();

class _$GViewerDetailDataSerializer
    implements StructuredSerializer<GViewerDetailData> {
  @override
  final Iterable<Type> types = const [GViewerDetailData, _$GViewerDetailData];
  @override
  final String wireName = 'GViewerDetailData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerDetailData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'viewer',
      serializers.serialize(object.viewer,
          specifiedType: const FullType(GViewerDetailData_viewer)),
    ];

    return result;
  }

  @override
  GViewerDetailData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerDetailDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'viewer':
          result.viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerDetailData_viewer))!
              as GViewerDetailData_viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerDetailData_viewerSerializer
    implements StructuredSerializer<GViewerDetailData_viewer> {
  @override
  final Iterable<Type> types = const [
    GViewerDetailData_viewer,
    _$GViewerDetailData_viewer
  ];
  @override
  final String wireName = 'GViewerDetailData_viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerDetailData_viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GViewerDetailData_viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerDetailData_viewerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerDetailData extends GViewerDetailData {
  @override
  final String G__typename;
  @override
  final GViewerDetailData_viewer viewer;

  factory _$GViewerDetailData(
          [void Function(GViewerDetailDataBuilder)? updates]) =>
      (new GViewerDetailDataBuilder()..update(updates)).build();

  _$GViewerDetailData._({required this.G__typename, required this.viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GViewerDetailData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        viewer, 'GViewerDetailData', 'viewer');
  }

  @override
  GViewerDetailData rebuild(void Function(GViewerDetailDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerDetailDataBuilder toBuilder() =>
      new GViewerDetailDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerDetailData &&
        G__typename == other.G__typename &&
        viewer == other.viewer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), viewer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerDetailData')
          ..add('G__typename', G__typename)
          ..add('viewer', viewer))
        .toString();
  }
}

class GViewerDetailDataBuilder
    implements Builder<GViewerDetailData, GViewerDetailDataBuilder> {
  _$GViewerDetailData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerDetailData_viewerBuilder? _viewer;
  GViewerDetailData_viewerBuilder get viewer =>
      _$this._viewer ??= new GViewerDetailData_viewerBuilder();
  set viewer(GViewerDetailData_viewerBuilder? viewer) =>
      _$this._viewer = viewer;

  GViewerDetailDataBuilder() {
    GViewerDetailData._initializeBuilder(this);
  }

  GViewerDetailDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _viewer = $v.viewer.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerDetailData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerDetailData;
  }

  @override
  void update(void Function(GViewerDetailDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerDetailData build() {
    _$GViewerDetailData _$result;
    try {
      _$result = _$v ??
          new _$GViewerDetailData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GViewerDetailData', 'G__typename'),
              viewer: viewer.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewer';
        viewer.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GViewerDetailData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerDetailData_viewer extends GViewerDetailData_viewer {
  @override
  final String G__typename;
  @override
  final String login;

  factory _$GViewerDetailData_viewer(
          [void Function(GViewerDetailData_viewerBuilder)? updates]) =>
      (new GViewerDetailData_viewerBuilder()..update(updates)).build();

  _$GViewerDetailData_viewer._({required this.G__typename, required this.login})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GViewerDetailData_viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        login, 'GViewerDetailData_viewer', 'login');
  }

  @override
  GViewerDetailData_viewer rebuild(
          void Function(GViewerDetailData_viewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerDetailData_viewerBuilder toBuilder() =>
      new GViewerDetailData_viewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerDetailData_viewer &&
        G__typename == other.G__typename &&
        login == other.login;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), login.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GViewerDetailData_viewer')
          ..add('G__typename', G__typename)
          ..add('login', login))
        .toString();
  }
}

class GViewerDetailData_viewerBuilder
    implements
        Builder<GViewerDetailData_viewer, GViewerDetailData_viewerBuilder> {
  _$GViewerDetailData_viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  GViewerDetailData_viewerBuilder() {
    GViewerDetailData_viewer._initializeBuilder(this);
  }

  GViewerDetailData_viewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerDetailData_viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerDetailData_viewer;
  }

  @override
  void update(void Function(GViewerDetailData_viewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GViewerDetailData_viewer build() {
    final _$result = _$v ??
        new _$GViewerDetailData_viewer._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GViewerDetailData_viewer', 'G__typename'),
            login: BuiltValueNullFieldError.checkNotNull(
                login, 'GViewerDetailData_viewer', 'login'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
