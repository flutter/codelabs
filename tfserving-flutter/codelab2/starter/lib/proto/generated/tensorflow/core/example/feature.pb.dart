//
//  Generated code. Do not modify.
//  source: tensorflow/core/example/feature.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// LINT.IfChange
/// Containers to hold repeated fundamental values.
class BytesList extends $pb.GeneratedMessage {
  factory BytesList({
    $core.Iterable<$core.List<$core.int>>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  BytesList._() : super();
  factory BytesList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BytesList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BytesList', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BytesList clone() => BytesList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BytesList copyWith(void Function(BytesList) updates) => super.copyWith((message) => updates(message as BytesList)) as BytesList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesList create() => BytesList._();
  BytesList createEmptyInstance() => create();
  static $pb.PbList<BytesList> createRepeated() => $pb.PbList<BytesList>();
  @$core.pragma('dart2js:noInline')
  static BytesList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesList>(create);
  static BytesList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.List<$core.int>> get value => $_getList(0);
}

class FloatList extends $pb.GeneratedMessage {
  factory FloatList({
    $core.Iterable<$core.double>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  FloatList._() : super();
  factory FloatList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FloatList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FloatList', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FloatList clone() => FloatList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FloatList copyWith(void Function(FloatList) updates) => super.copyWith((message) => updates(message as FloatList)) as FloatList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatList create() => FloatList._();
  FloatList createEmptyInstance() => create();
  static $pb.PbList<FloatList> createRepeated() => $pb.PbList<FloatList>();
  @$core.pragma('dart2js:noInline')
  static FloatList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatList>(create);
  static FloatList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.double> get value => $_getList(0);
}

class Int64List extends $pb.GeneratedMessage {
  factory Int64List({
    $core.Iterable<$fixnum.Int64>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  Int64List._() : super();
  factory Int64List.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int64List.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Int64List', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int64List clone() => Int64List()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int64List copyWith(void Function(Int64List) updates) => super.copyWith((message) => updates(message as Int64List)) as Int64List;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64List create() => Int64List._();
  Int64List createEmptyInstance() => create();
  static $pb.PbList<Int64List> createRepeated() => $pb.PbList<Int64List>();
  @$core.pragma('dart2js:noInline')
  static Int64List getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64List>(create);
  static Int64List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get value => $_getList(0);
}

enum Feature_Kind {
  bytesList, 
  floatList, 
  int64List, 
  notSet
}

/// Containers for non-sequential data.
class Feature extends $pb.GeneratedMessage {
  factory Feature({
    BytesList? bytesList,
    FloatList? floatList,
    Int64List? int64List,
  }) {
    final $result = create();
    if (bytesList != null) {
      $result.bytesList = bytesList;
    }
    if (floatList != null) {
      $result.floatList = floatList;
    }
    if (int64List != null) {
      $result.int64List = int64List;
    }
    return $result;
  }
  Feature._() : super();
  factory Feature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Feature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Feature_Kind> _Feature_KindByTag = {
    1 : Feature_Kind.bytesList,
    2 : Feature_Kind.floatList,
    3 : Feature_Kind.int64List,
    0 : Feature_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Feature', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<BytesList>(1, _omitFieldNames ? '' : 'bytesList', subBuilder: BytesList.create)
    ..aOM<FloatList>(2, _omitFieldNames ? '' : 'floatList', subBuilder: FloatList.create)
    ..aOM<Int64List>(3, _omitFieldNames ? '' : 'int64List', subBuilder: Int64List.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Feature clone() => Feature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Feature copyWith(void Function(Feature) updates) => super.copyWith((message) => updates(message as Feature)) as Feature;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  Feature createEmptyInstance() => create();
  static $pb.PbList<Feature> createRepeated() => $pb.PbList<Feature>();
  @$core.pragma('dart2js:noInline')
  static Feature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature>(create);
  static Feature? _defaultInstance;

  Feature_Kind whichKind() => _Feature_KindByTag[$_whichOneof(0)]!;
  void clearKind() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BytesList get bytesList => $_getN(0);
  @$pb.TagNumber(1)
  set bytesList(BytesList v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytesList() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytesList() => $_clearField(1);
  @$pb.TagNumber(1)
  BytesList ensureBytesList() => $_ensure(0);

  @$pb.TagNumber(2)
  FloatList get floatList => $_getN(1);
  @$pb.TagNumber(2)
  set floatList(FloatList v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFloatList() => $_has(1);
  @$pb.TagNumber(2)
  void clearFloatList() => $_clearField(2);
  @$pb.TagNumber(2)
  FloatList ensureFloatList() => $_ensure(1);

  @$pb.TagNumber(3)
  Int64List get int64List => $_getN(2);
  @$pb.TagNumber(3)
  set int64List(Int64List v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInt64List() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt64List() => $_clearField(3);
  @$pb.TagNumber(3)
  Int64List ensureInt64List() => $_ensure(2);
}

class Features extends $pb.GeneratedMessage {
  factory Features({
    $pb.PbMap<$core.String, Feature>? feature,
  }) {
    final $result = create();
    if (feature != null) {
      $result.feature.addAll(feature);
    }
    return $result;
  }
  Features._() : super();
  factory Features.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Features.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Features', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..m<$core.String, Feature>(1, _omitFieldNames ? '' : 'feature', entryClassName: 'Features.FeatureEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Feature.create, valueDefaultOrMaker: Feature.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Features clone() => Features()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Features copyWith(void Function(Features) updates) => super.copyWith((message) => updates(message as Features)) as Features;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Features create() => Features._();
  Features createEmptyInstance() => create();
  static $pb.PbList<Features> createRepeated() => $pb.PbList<Features>();
  @$core.pragma('dart2js:noInline')
  static Features getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Features>(create);
  static Features? _defaultInstance;

  /// Map from feature name to feature.
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, Feature> get feature => $_getMap(0);
}

///  Containers for sequential data.
///
///  A FeatureList contains lists of Features.  These may hold zero or more
///  Feature values.
///
///  FeatureLists are organized into categories by name.  The FeatureLists message
///  contains the mapping from name to FeatureList.
class FeatureList extends $pb.GeneratedMessage {
  factory FeatureList({
    $core.Iterable<Feature>? feature,
  }) {
    final $result = create();
    if (feature != null) {
      $result.feature.addAll(feature);
    }
    return $result;
  }
  FeatureList._() : super();
  factory FeatureList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeatureList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeatureList', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pc<Feature>(1, _omitFieldNames ? '' : 'feature', $pb.PbFieldType.PM, subBuilder: Feature.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeatureList clone() => FeatureList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeatureList copyWith(void Function(FeatureList) updates) => super.copyWith((message) => updates(message as FeatureList)) as FeatureList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureList create() => FeatureList._();
  FeatureList createEmptyInstance() => create();
  static $pb.PbList<FeatureList> createRepeated() => $pb.PbList<FeatureList>();
  @$core.pragma('dart2js:noInline')
  static FeatureList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeatureList>(create);
  static FeatureList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Feature> get feature => $_getList(0);
}

class FeatureLists extends $pb.GeneratedMessage {
  factory FeatureLists({
    $pb.PbMap<$core.String, FeatureList>? featureList,
  }) {
    final $result = create();
    if (featureList != null) {
      $result.featureList.addAll(featureList);
    }
    return $result;
  }
  FeatureLists._() : super();
  factory FeatureLists.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeatureLists.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeatureLists', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..m<$core.String, FeatureList>(1, _omitFieldNames ? '' : 'featureList', entryClassName: 'FeatureLists.FeatureListEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: FeatureList.create, valueDefaultOrMaker: FeatureList.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeatureLists clone() => FeatureLists()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeatureLists copyWith(void Function(FeatureLists) updates) => super.copyWith((message) => updates(message as FeatureLists)) as FeatureLists;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeatureLists create() => FeatureLists._();
  FeatureLists createEmptyInstance() => create();
  static $pb.PbList<FeatureLists> createRepeated() => $pb.PbList<FeatureLists>();
  @$core.pragma('dart2js:noInline')
  static FeatureLists getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeatureLists>(create);
  static FeatureLists? _defaultInstance;

  /// Map from feature name to feature list.
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, FeatureList> get featureList => $_getMap(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
