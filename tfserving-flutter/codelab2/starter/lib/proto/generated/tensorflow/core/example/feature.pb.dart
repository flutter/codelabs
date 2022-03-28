///
//  Generated code. Do not modify.
//  source: tensorflow/core/example/feature.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class BytesList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BytesList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  BytesList._() : super();
  factory BytesList({
    $core.Iterable<$core.List<$core.int>>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory BytesList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BytesList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BytesList clone() => BytesList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BytesList copyWith(void Function(BytesList) updates) =>
      super.copyWith((message) => updates(message as BytesList))
          as BytesList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BytesList create() => BytesList._();
  BytesList createEmptyInstance() => create();
  static $pb.PbList<BytesList> createRepeated() => $pb.PbList<BytesList>();
  @$core.pragma('dart2js:noInline')
  static BytesList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesList>(create);
  static BytesList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get value => $_getList(0);
}

class FloatList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FloatList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..p<$core.double>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.KF)
    ..hasRequiredFields = false;

  FloatList._() : super();
  factory FloatList({
    $core.Iterable<$core.double>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory FloatList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FloatList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FloatList clone() => FloatList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FloatList copyWith(void Function(FloatList) updates) =>
      super.copyWith((message) => updates(message as FloatList))
          as FloatList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FloatList create() => FloatList._();
  FloatList createEmptyInstance() => create();
  static $pb.PbList<FloatList> createRepeated() => $pb.PbList<FloatList>();
  @$core.pragma('dart2js:noInline')
  static FloatList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatList>(create);
  static FloatList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get value => $_getList(0);
}

class Int64List extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Int64List',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  Int64List._() : super();
  factory Int64List({
    $core.Iterable<$fixnum.Int64>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory Int64List.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Int64List.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Int64List clone() => Int64List()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Int64List copyWith(void Function(Int64List) updates) =>
      super.copyWith((message) => updates(message as Int64List))
          as Int64List; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Int64List create() => Int64List._();
  Int64List createEmptyInstance() => create();
  static $pb.PbList<Int64List> createRepeated() => $pb.PbList<Int64List>();
  @$core.pragma('dart2js:noInline')
  static Int64List getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64List>(create);
  static Int64List? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get value => $_getList(0);
}

enum Feature_Kind { bytesList, floatList, int64List, notSet }

class Feature extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Feature_Kind> _Feature_KindByTag = {
    1: Feature_Kind.bytesList,
    2: Feature_Kind.floatList,
    3: Feature_Kind.int64List,
    0: Feature_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Feature',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<BytesList>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bytesList',
        subBuilder: BytesList.create)
    ..aOM<FloatList>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'floatList',
        subBuilder: FloatList.create)
    ..aOM<Int64List>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'int64List',
        subBuilder: Int64List.create)
    ..hasRequiredFields = false;

  Feature._() : super();
  factory Feature({
    BytesList? bytesList,
    FloatList? floatList,
    Int64List? int64List,
  }) {
    final _result = create();
    if (bytesList != null) {
      _result.bytesList = bytesList;
    }
    if (floatList != null) {
      _result.floatList = floatList;
    }
    if (int64List != null) {
      _result.int64List = int64List;
    }
    return _result;
  }
  factory Feature.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Feature.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Feature clone() => Feature()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Feature copyWith(void Function(Feature) updates) =>
      super.copyWith((message) => updates(message as Feature))
          as Feature; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  Feature createEmptyInstance() => create();
  static $pb.PbList<Feature> createRepeated() => $pb.PbList<Feature>();
  @$core.pragma('dart2js:noInline')
  static Feature getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature>(create);
  static Feature? _defaultInstance;

  Feature_Kind whichKind() => _Feature_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BytesList get bytesList => $_getN(0);
  @$pb.TagNumber(1)
  set bytesList(BytesList v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBytesList() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytesList() => clearField(1);
  @$pb.TagNumber(1)
  BytesList ensureBytesList() => $_ensure(0);

  @$pb.TagNumber(2)
  FloatList get floatList => $_getN(1);
  @$pb.TagNumber(2)
  set floatList(FloatList v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFloatList() => $_has(1);
  @$pb.TagNumber(2)
  void clearFloatList() => clearField(2);
  @$pb.TagNumber(2)
  FloatList ensureFloatList() => $_ensure(1);

  @$pb.TagNumber(3)
  Int64List get int64List => $_getN(2);
  @$pb.TagNumber(3)
  set int64List(Int64List v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInt64List() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt64List() => clearField(3);
  @$pb.TagNumber(3)
  Int64List ensureInt64List() => $_ensure(2);
}

class Features extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Features',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..m<$core.String, Feature>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'feature',
        entryClassName: 'Features.FeatureEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Feature.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  Features._() : super();
  factory Features({
    $core.Map<$core.String, Feature>? feature,
  }) {
    final _result = create();
    if (feature != null) {
      _result.feature.addAll(feature);
    }
    return _result;
  }
  factory Features.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Features.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Features clone() => Features()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Features copyWith(void Function(Features) updates) =>
      super.copyWith((message) => updates(message as Features))
          as Features; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Features create() => Features._();
  Features createEmptyInstance() => create();
  static $pb.PbList<Features> createRepeated() => $pb.PbList<Features>();
  @$core.pragma('dart2js:noInline')
  static Features getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Features>(create);
  static Features? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, Feature> get feature => $_getMap(0);
}

class FeatureList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FeatureList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<Feature>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'feature',
        $pb.PbFieldType.PM,
        subBuilder: Feature.create)
    ..hasRequiredFields = false;

  FeatureList._() : super();
  factory FeatureList({
    $core.Iterable<Feature>? feature,
  }) {
    final _result = create();
    if (feature != null) {
      _result.feature.addAll(feature);
    }
    return _result;
  }
  factory FeatureList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeatureList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FeatureList clone() => FeatureList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FeatureList copyWith(void Function(FeatureList) updates) =>
      super.copyWith((message) => updates(message as FeatureList))
          as FeatureList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeatureList create() => FeatureList._();
  FeatureList createEmptyInstance() => create();
  static $pb.PbList<FeatureList> createRepeated() => $pb.PbList<FeatureList>();
  @$core.pragma('dart2js:noInline')
  static FeatureList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureList>(create);
  static FeatureList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Feature> get feature => $_getList(0);
}

class FeatureLists extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FeatureLists',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..m<$core.String, FeatureList>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'featureList',
        entryClassName: 'FeatureLists.FeatureListEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: FeatureList.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  FeatureLists._() : super();
  factory FeatureLists({
    $core.Map<$core.String, FeatureList>? featureList,
  }) {
    final _result = create();
    if (featureList != null) {
      _result.featureList.addAll(featureList);
    }
    return _result;
  }
  factory FeatureLists.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeatureLists.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FeatureLists clone() => FeatureLists()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FeatureLists copyWith(void Function(FeatureLists) updates) =>
      super.copyWith((message) => updates(message as FeatureLists))
          as FeatureLists; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeatureLists create() => FeatureLists._();
  FeatureLists createEmptyInstance() => create();
  static $pb.PbList<FeatureLists> createRepeated() =>
      $pb.PbList<FeatureLists>();
  @$core.pragma('dart2js:noInline')
  static FeatureLists getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeatureLists>(create);
  static FeatureLists? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, FeatureList> get featureList => $_getMap(0);
}
