///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/meta_graph.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../framework/graph.pb.dart' as $0;
import 'saver.pb.dart' as $1;
import 'saved_object_graph.pb.dart' as $2;
import '../framework/op_def.pb.dart' as $3;
import '../../../google/protobuf/any.pb.dart' as $4;
import '../framework/tensor_shape.pb.dart' as $5;
import 'struct.pb.dart' as $6;

import '../framework/types.pbenum.dart' as $7;

class MetaGraphDef_MetaInfoDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MetaGraphDef.MetaInfoDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metaGraphVersion')
    ..aOM<$3.OpList>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'strippedOpList',
        subBuilder: $3.OpList.create)
    ..aOM<$4.Any>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'anyInfo',
        subBuilder: $4.Any.create)
    ..pPS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tags')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorflowVersion')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorflowGitVersion')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'strippedDefaultAttrs')
    ..m<$core.String, $core.String>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'functionAliases',
        entryClassName: 'MetaGraphDef.MetaInfoDef.FunctionAliasesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  MetaGraphDef_MetaInfoDef._() : super();
  factory MetaGraphDef_MetaInfoDef({
    $core.String? metaGraphVersion,
    $3.OpList? strippedOpList,
    $4.Any? anyInfo,
    $core.Iterable<$core.String>? tags,
    $core.String? tensorflowVersion,
    $core.String? tensorflowGitVersion,
    $core.bool? strippedDefaultAttrs,
    $core.Map<$core.String, $core.String>? functionAliases,
  }) {
    final _result = create();
    if (metaGraphVersion != null) {
      _result.metaGraphVersion = metaGraphVersion;
    }
    if (strippedOpList != null) {
      _result.strippedOpList = strippedOpList;
    }
    if (anyInfo != null) {
      _result.anyInfo = anyInfo;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (tensorflowVersion != null) {
      _result.tensorflowVersion = tensorflowVersion;
    }
    if (tensorflowGitVersion != null) {
      _result.tensorflowGitVersion = tensorflowGitVersion;
    }
    if (strippedDefaultAttrs != null) {
      _result.strippedDefaultAttrs = strippedDefaultAttrs;
    }
    if (functionAliases != null) {
      _result.functionAliases.addAll(functionAliases);
    }
    return _result;
  }
  factory MetaGraphDef_MetaInfoDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MetaGraphDef_MetaInfoDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MetaGraphDef_MetaInfoDef clone() =>
      MetaGraphDef_MetaInfoDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MetaGraphDef_MetaInfoDef copyWith(
          void Function(MetaGraphDef_MetaInfoDef) updates) =>
      super.copyWith((message) => updates(message as MetaGraphDef_MetaInfoDef))
          as MetaGraphDef_MetaInfoDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef_MetaInfoDef create() => MetaGraphDef_MetaInfoDef._();
  MetaGraphDef_MetaInfoDef createEmptyInstance() => create();
  static $pb.PbList<MetaGraphDef_MetaInfoDef> createRepeated() =>
      $pb.PbList<MetaGraphDef_MetaInfoDef>();
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef_MetaInfoDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MetaGraphDef_MetaInfoDef>(create);
  static MetaGraphDef_MetaInfoDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get metaGraphVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set metaGraphVersion($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMetaGraphVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaGraphVersion() => clearField(1);

  @$pb.TagNumber(2)
  $3.OpList get strippedOpList => $_getN(1);
  @$pb.TagNumber(2)
  set strippedOpList($3.OpList v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStrippedOpList() => $_has(1);
  @$pb.TagNumber(2)
  void clearStrippedOpList() => clearField(2);
  @$pb.TagNumber(2)
  $3.OpList ensureStrippedOpList() => $_ensure(1);

  @$pb.TagNumber(3)
  $4.Any get anyInfo => $_getN(2);
  @$pb.TagNumber(3)
  set anyInfo($4.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAnyInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnyInfo() => clearField(3);
  @$pb.TagNumber(3)
  $4.Any ensureAnyInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tags => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get tensorflowVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set tensorflowVersion($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTensorflowVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearTensorflowVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get tensorflowGitVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set tensorflowGitVersion($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTensorflowGitVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearTensorflowGitVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get strippedDefaultAttrs => $_getBF(6);
  @$pb.TagNumber(7)
  set strippedDefaultAttrs($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasStrippedDefaultAttrs() => $_has(6);
  @$pb.TagNumber(7)
  void clearStrippedDefaultAttrs() => clearField(7);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get functionAliases => $_getMap(7);
}

class MetaGraphDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MetaGraphDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOM<MetaGraphDef_MetaInfoDef>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metaInfoDef',
        subBuilder: MetaGraphDef_MetaInfoDef.create)
    ..aOM<$0.GraphDef>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'graphDef',
        subBuilder: $0.GraphDef.create)
    ..aOM<$1.SaverDef>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'saverDef',
        subBuilder: $1.SaverDef.create)
    ..m<$core.String, CollectionDef>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionDef',
        entryClassName: 'MetaGraphDef.CollectionDefEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CollectionDef.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, SignatureDef>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signatureDef',
        entryClassName: 'MetaGraphDef.SignatureDefEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: SignatureDef.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..pc<AssetFileDef>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'assetFileDef',
        $pb.PbFieldType.PM,
        subBuilder: AssetFileDef.create)
    ..aOM<$2.SavedObjectGraph>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'objectGraphDef',
        subBuilder: $2.SavedObjectGraph.create)
    ..hasRequiredFields = false;

  MetaGraphDef._() : super();
  factory MetaGraphDef({
    MetaGraphDef_MetaInfoDef? metaInfoDef,
    $0.GraphDef? graphDef,
    $1.SaverDef? saverDef,
    $core.Map<$core.String, CollectionDef>? collectionDef,
    $core.Map<$core.String, SignatureDef>? signatureDef,
    $core.Iterable<AssetFileDef>? assetFileDef,
    $2.SavedObjectGraph? objectGraphDef,
  }) {
    final _result = create();
    if (metaInfoDef != null) {
      _result.metaInfoDef = metaInfoDef;
    }
    if (graphDef != null) {
      _result.graphDef = graphDef;
    }
    if (saverDef != null) {
      _result.saverDef = saverDef;
    }
    if (collectionDef != null) {
      _result.collectionDef.addAll(collectionDef);
    }
    if (signatureDef != null) {
      _result.signatureDef.addAll(signatureDef);
    }
    if (assetFileDef != null) {
      _result.assetFileDef.addAll(assetFileDef);
    }
    if (objectGraphDef != null) {
      _result.objectGraphDef = objectGraphDef;
    }
    return _result;
  }
  factory MetaGraphDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MetaGraphDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MetaGraphDef clone() => MetaGraphDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MetaGraphDef copyWith(void Function(MetaGraphDef) updates) =>
      super.copyWith((message) => updates(message as MetaGraphDef))
          as MetaGraphDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef create() => MetaGraphDef._();
  MetaGraphDef createEmptyInstance() => create();
  static $pb.PbList<MetaGraphDef> createRepeated() =>
      $pb.PbList<MetaGraphDef>();
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MetaGraphDef>(create);
  static MetaGraphDef? _defaultInstance;

  @$pb.TagNumber(1)
  MetaGraphDef_MetaInfoDef get metaInfoDef => $_getN(0);
  @$pb.TagNumber(1)
  set metaInfoDef(MetaGraphDef_MetaInfoDef v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMetaInfoDef() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaInfoDef() => clearField(1);
  @$pb.TagNumber(1)
  MetaGraphDef_MetaInfoDef ensureMetaInfoDef() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.GraphDef get graphDef => $_getN(1);
  @$pb.TagNumber(2)
  set graphDef($0.GraphDef v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGraphDef() => $_has(1);
  @$pb.TagNumber(2)
  void clearGraphDef() => clearField(2);
  @$pb.TagNumber(2)
  $0.GraphDef ensureGraphDef() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.SaverDef get saverDef => $_getN(2);
  @$pb.TagNumber(3)
  set saverDef($1.SaverDef v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSaverDef() => $_has(2);
  @$pb.TagNumber(3)
  void clearSaverDef() => clearField(3);
  @$pb.TagNumber(3)
  $1.SaverDef ensureSaverDef() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, CollectionDef> get collectionDef => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, SignatureDef> get signatureDef => $_getMap(4);

  @$pb.TagNumber(6)
  $core.List<AssetFileDef> get assetFileDef => $_getList(5);

  @$pb.TagNumber(7)
  $2.SavedObjectGraph get objectGraphDef => $_getN(6);
  @$pb.TagNumber(7)
  set objectGraphDef($2.SavedObjectGraph v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasObjectGraphDef() => $_has(6);
  @$pb.TagNumber(7)
  void clearObjectGraphDef() => clearField(7);
  @$pb.TagNumber(7)
  $2.SavedObjectGraph ensureObjectGraphDef() => $_ensure(6);
}

class CollectionDef_NodeList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CollectionDef.NodeList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  CollectionDef_NodeList._() : super();
  factory CollectionDef_NodeList({
    $core.Iterable<$core.String>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory CollectionDef_NodeList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_NodeList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CollectionDef_NodeList clone() =>
      CollectionDef_NodeList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CollectionDef_NodeList copyWith(
          void Function(CollectionDef_NodeList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_NodeList))
          as CollectionDef_NodeList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_NodeList create() => CollectionDef_NodeList._();
  CollectionDef_NodeList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_NodeList> createRepeated() =>
      $pb.PbList<CollectionDef_NodeList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_NodeList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionDef_NodeList>(create);
  static CollectionDef_NodeList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get value => $_getList(0);
}

class CollectionDef_BytesList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CollectionDef.BytesList',
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

  CollectionDef_BytesList._() : super();
  factory CollectionDef_BytesList({
    $core.Iterable<$core.List<$core.int>>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory CollectionDef_BytesList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_BytesList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CollectionDef_BytesList clone() =>
      CollectionDef_BytesList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CollectionDef_BytesList copyWith(
          void Function(CollectionDef_BytesList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_BytesList))
          as CollectionDef_BytesList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_BytesList create() => CollectionDef_BytesList._();
  CollectionDef_BytesList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_BytesList> createRepeated() =>
      $pb.PbList<CollectionDef_BytesList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_BytesList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionDef_BytesList>(create);
  static CollectionDef_BytesList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get value => $_getList(0);
}

class CollectionDef_Int64List extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CollectionDef.Int64List',
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

  CollectionDef_Int64List._() : super();
  factory CollectionDef_Int64List({
    $core.Iterable<$fixnum.Int64>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory CollectionDef_Int64List.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_Int64List.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CollectionDef_Int64List clone() =>
      CollectionDef_Int64List()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CollectionDef_Int64List copyWith(
          void Function(CollectionDef_Int64List) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_Int64List))
          as CollectionDef_Int64List; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_Int64List create() => CollectionDef_Int64List._();
  CollectionDef_Int64List createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_Int64List> createRepeated() =>
      $pb.PbList<CollectionDef_Int64List>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_Int64List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionDef_Int64List>(create);
  static CollectionDef_Int64List? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get value => $_getList(0);
}

class CollectionDef_FloatList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CollectionDef.FloatList',
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

  CollectionDef_FloatList._() : super();
  factory CollectionDef_FloatList({
    $core.Iterable<$core.double>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory CollectionDef_FloatList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_FloatList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CollectionDef_FloatList clone() =>
      CollectionDef_FloatList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CollectionDef_FloatList copyWith(
          void Function(CollectionDef_FloatList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_FloatList))
          as CollectionDef_FloatList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_FloatList create() => CollectionDef_FloatList._();
  CollectionDef_FloatList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_FloatList> createRepeated() =>
      $pb.PbList<CollectionDef_FloatList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_FloatList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionDef_FloatList>(create);
  static CollectionDef_FloatList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get value => $_getList(0);
}

class CollectionDef_AnyList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CollectionDef.AnyList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<$4.Any>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.PM,
        subBuilder: $4.Any.create)
    ..hasRequiredFields = false;

  CollectionDef_AnyList._() : super();
  factory CollectionDef_AnyList({
    $core.Iterable<$4.Any>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory CollectionDef_AnyList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef_AnyList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CollectionDef_AnyList clone() =>
      CollectionDef_AnyList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CollectionDef_AnyList copyWith(
          void Function(CollectionDef_AnyList) updates) =>
      super.copyWith((message) => updates(message as CollectionDef_AnyList))
          as CollectionDef_AnyList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef_AnyList create() => CollectionDef_AnyList._();
  CollectionDef_AnyList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_AnyList> createRepeated() =>
      $pb.PbList<CollectionDef_AnyList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_AnyList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionDef_AnyList>(create);
  static CollectionDef_AnyList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.Any> get value => $_getList(0);
}

enum CollectionDef_Kind {
  nodeList,
  bytesList,
  int64List,
  floatList,
  anyList,
  notSet
}

class CollectionDef extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CollectionDef_Kind>
      _CollectionDef_KindByTag = {
    1: CollectionDef_Kind.nodeList,
    2: CollectionDef_Kind.bytesList,
    3: CollectionDef_Kind.int64List,
    4: CollectionDef_Kind.floatList,
    5: CollectionDef_Kind.anyList,
    0: CollectionDef_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CollectionDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<CollectionDef_NodeList>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nodeList',
        subBuilder: CollectionDef_NodeList.create)
    ..aOM<CollectionDef_BytesList>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bytesList',
        subBuilder: CollectionDef_BytesList.create)
    ..aOM<CollectionDef_Int64List>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'int64List',
        subBuilder: CollectionDef_Int64List.create)
    ..aOM<CollectionDef_FloatList>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'floatList',
        subBuilder: CollectionDef_FloatList.create)
    ..aOM<CollectionDef_AnyList>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'anyList',
        subBuilder: CollectionDef_AnyList.create)
    ..hasRequiredFields = false;

  CollectionDef._() : super();
  factory CollectionDef({
    CollectionDef_NodeList? nodeList,
    CollectionDef_BytesList? bytesList,
    CollectionDef_Int64List? int64List,
    CollectionDef_FloatList? floatList,
    CollectionDef_AnyList? anyList,
  }) {
    final _result = create();
    if (nodeList != null) {
      _result.nodeList = nodeList;
    }
    if (bytesList != null) {
      _result.bytesList = bytesList;
    }
    if (int64List != null) {
      _result.int64List = int64List;
    }
    if (floatList != null) {
      _result.floatList = floatList;
    }
    if (anyList != null) {
      _result.anyList = anyList;
    }
    return _result;
  }
  factory CollectionDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CollectionDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CollectionDef clone() => CollectionDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CollectionDef copyWith(void Function(CollectionDef) updates) =>
      super.copyWith((message) => updates(message as CollectionDef))
          as CollectionDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CollectionDef create() => CollectionDef._();
  CollectionDef createEmptyInstance() => create();
  static $pb.PbList<CollectionDef> createRepeated() =>
      $pb.PbList<CollectionDef>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CollectionDef>(create);
  static CollectionDef? _defaultInstance;

  CollectionDef_Kind whichKind() => _CollectionDef_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CollectionDef_NodeList get nodeList => $_getN(0);
  @$pb.TagNumber(1)
  set nodeList(CollectionDef_NodeList v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNodeList() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeList() => clearField(1);
  @$pb.TagNumber(1)
  CollectionDef_NodeList ensureNodeList() => $_ensure(0);

  @$pb.TagNumber(2)
  CollectionDef_BytesList get bytesList => $_getN(1);
  @$pb.TagNumber(2)
  set bytesList(CollectionDef_BytesList v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBytesList() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytesList() => clearField(2);
  @$pb.TagNumber(2)
  CollectionDef_BytesList ensureBytesList() => $_ensure(1);

  @$pb.TagNumber(3)
  CollectionDef_Int64List get int64List => $_getN(2);
  @$pb.TagNumber(3)
  set int64List(CollectionDef_Int64List v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInt64List() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt64List() => clearField(3);
  @$pb.TagNumber(3)
  CollectionDef_Int64List ensureInt64List() => $_ensure(2);

  @$pb.TagNumber(4)
  CollectionDef_FloatList get floatList => $_getN(3);
  @$pb.TagNumber(4)
  set floatList(CollectionDef_FloatList v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFloatList() => $_has(3);
  @$pb.TagNumber(4)
  void clearFloatList() => clearField(4);
  @$pb.TagNumber(4)
  CollectionDef_FloatList ensureFloatList() => $_ensure(3);

  @$pb.TagNumber(5)
  CollectionDef_AnyList get anyList => $_getN(4);
  @$pb.TagNumber(5)
  set anyList(CollectionDef_AnyList v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAnyList() => $_has(4);
  @$pb.TagNumber(5)
  void clearAnyList() => clearField(5);
  @$pb.TagNumber(5)
  CollectionDef_AnyList ensureAnyList() => $_ensure(4);
}

class TensorInfo_CooSparse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TensorInfo.CooSparse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'valuesTensorName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'indicesTensorName')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'denseShapeTensorName')
    ..hasRequiredFields = false;

  TensorInfo_CooSparse._() : super();
  factory TensorInfo_CooSparse({
    $core.String? valuesTensorName,
    $core.String? indicesTensorName,
    $core.String? denseShapeTensorName,
  }) {
    final _result = create();
    if (valuesTensorName != null) {
      _result.valuesTensorName = valuesTensorName;
    }
    if (indicesTensorName != null) {
      _result.indicesTensorName = indicesTensorName;
    }
    if (denseShapeTensorName != null) {
      _result.denseShapeTensorName = denseShapeTensorName;
    }
    return _result;
  }
  factory TensorInfo_CooSparse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorInfo_CooSparse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TensorInfo_CooSparse clone() =>
      TensorInfo_CooSparse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TensorInfo_CooSparse copyWith(void Function(TensorInfo_CooSparse) updates) =>
      super.copyWith((message) => updates(message as TensorInfo_CooSparse))
          as TensorInfo_CooSparse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorInfo_CooSparse create() => TensorInfo_CooSparse._();
  TensorInfo_CooSparse createEmptyInstance() => create();
  static $pb.PbList<TensorInfo_CooSparse> createRepeated() =>
      $pb.PbList<TensorInfo_CooSparse>();
  @$core.pragma('dart2js:noInline')
  static TensorInfo_CooSparse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TensorInfo_CooSparse>(create);
  static TensorInfo_CooSparse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get valuesTensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set valuesTensorName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValuesTensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearValuesTensorName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get indicesTensorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set indicesTensorName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIndicesTensorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndicesTensorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get denseShapeTensorName => $_getSZ(2);
  @$pb.TagNumber(3)
  set denseShapeTensorName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDenseShapeTensorName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDenseShapeTensorName() => clearField(3);
}

class TensorInfo_CompositeTensor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TensorInfo.CompositeTensor',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOM<$6.TypeSpecProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeSpec',
        subBuilder: $6.TypeSpecProto.create)
    ..pc<TensorInfo>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'components',
        $pb.PbFieldType.PM,
        subBuilder: TensorInfo.create)
    ..hasRequiredFields = false;

  TensorInfo_CompositeTensor._() : super();
  factory TensorInfo_CompositeTensor({
    $6.TypeSpecProto? typeSpec,
    $core.Iterable<TensorInfo>? components,
  }) {
    final _result = create();
    if (typeSpec != null) {
      _result.typeSpec = typeSpec;
    }
    if (components != null) {
      _result.components.addAll(components);
    }
    return _result;
  }
  factory TensorInfo_CompositeTensor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorInfo_CompositeTensor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TensorInfo_CompositeTensor clone() =>
      TensorInfo_CompositeTensor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TensorInfo_CompositeTensor copyWith(
          void Function(TensorInfo_CompositeTensor) updates) =>
      super.copyWith(
              (message) => updates(message as TensorInfo_CompositeTensor))
          as TensorInfo_CompositeTensor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorInfo_CompositeTensor create() => TensorInfo_CompositeTensor._();
  TensorInfo_CompositeTensor createEmptyInstance() => create();
  static $pb.PbList<TensorInfo_CompositeTensor> createRepeated() =>
      $pb.PbList<TensorInfo_CompositeTensor>();
  @$core.pragma('dart2js:noInline')
  static TensorInfo_CompositeTensor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TensorInfo_CompositeTensor>(create);
  static TensorInfo_CompositeTensor? _defaultInstance;

  @$pb.TagNumber(1)
  $6.TypeSpecProto get typeSpec => $_getN(0);
  @$pb.TagNumber(1)
  set typeSpec($6.TypeSpecProto v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTypeSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeSpec() => clearField(1);
  @$pb.TagNumber(1)
  $6.TypeSpecProto ensureTypeSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<TensorInfo> get components => $_getList(1);
}

enum TensorInfo_Encoding { name, cooSparse, compositeTensor, notSet }

class TensorInfo extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TensorInfo_Encoding>
      _TensorInfo_EncodingByTag = {
    1: TensorInfo_Encoding.name,
    4: TensorInfo_Encoding.cooSparse,
    5: TensorInfo_Encoding.compositeTensor,
    0: TensorInfo_Encoding.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TensorInfo',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [1, 4, 5])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..e<$7.DataType>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dtype',
        $pb.PbFieldType.OE,
        defaultOrMaker: $7.DataType.DT_INVALID,
        valueOf: $7.DataType.valueOf,
        enumValues: $7.DataType.values)
    ..aOM<$5.TensorShapeProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorShape',
        subBuilder: $5.TensorShapeProto.create)
    ..aOM<TensorInfo_CooSparse>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'cooSparse',
        subBuilder: TensorInfo_CooSparse.create)
    ..aOM<TensorInfo_CompositeTensor>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'compositeTensor',
        subBuilder: TensorInfo_CompositeTensor.create)
    ..hasRequiredFields = false;

  TensorInfo._() : super();
  factory TensorInfo({
    $core.String? name,
    $7.DataType? dtype,
    $5.TensorShapeProto? tensorShape,
    TensorInfo_CooSparse? cooSparse,
    TensorInfo_CompositeTensor? compositeTensor,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (dtype != null) {
      _result.dtype = dtype;
    }
    if (tensorShape != null) {
      _result.tensorShape = tensorShape;
    }
    if (cooSparse != null) {
      _result.cooSparse = cooSparse;
    }
    if (compositeTensor != null) {
      _result.compositeTensor = compositeTensor;
    }
    return _result;
  }
  factory TensorInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TensorInfo clone() => TensorInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TensorInfo copyWith(void Function(TensorInfo) updates) =>
      super.copyWith((message) => updates(message as TensorInfo))
          as TensorInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorInfo create() => TensorInfo._();
  TensorInfo createEmptyInstance() => create();
  static $pb.PbList<TensorInfo> createRepeated() => $pb.PbList<TensorInfo>();
  @$core.pragma('dart2js:noInline')
  static TensorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TensorInfo>(create);
  static TensorInfo? _defaultInstance;

  TensorInfo_Encoding whichEncoding() =>
      _TensorInfo_EncodingByTag[$_whichOneof(0)]!;
  void clearEncoding() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $7.DataType get dtype => $_getN(1);
  @$pb.TagNumber(2)
  set dtype($7.DataType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDtype() => $_has(1);
  @$pb.TagNumber(2)
  void clearDtype() => clearField(2);

  @$pb.TagNumber(3)
  $5.TensorShapeProto get tensorShape => $_getN(2);
  @$pb.TagNumber(3)
  set tensorShape($5.TensorShapeProto v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTensorShape() => $_has(2);
  @$pb.TagNumber(3)
  void clearTensorShape() => clearField(3);
  @$pb.TagNumber(3)
  $5.TensorShapeProto ensureTensorShape() => $_ensure(2);

  @$pb.TagNumber(4)
  TensorInfo_CooSparse get cooSparse => $_getN(3);
  @$pb.TagNumber(4)
  set cooSparse(TensorInfo_CooSparse v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCooSparse() => $_has(3);
  @$pb.TagNumber(4)
  void clearCooSparse() => clearField(4);
  @$pb.TagNumber(4)
  TensorInfo_CooSparse ensureCooSparse() => $_ensure(3);

  @$pb.TagNumber(5)
  TensorInfo_CompositeTensor get compositeTensor => $_getN(4);
  @$pb.TagNumber(5)
  set compositeTensor(TensorInfo_CompositeTensor v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCompositeTensor() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompositeTensor() => clearField(5);
  @$pb.TagNumber(5)
  TensorInfo_CompositeTensor ensureCompositeTensor() => $_ensure(4);
}

class SignatureDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SignatureDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..m<$core.String, TensorInfo>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inputs',
        entryClassName: 'SignatureDef.InputsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TensorInfo.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, TensorInfo>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputs',
        entryClassName: 'SignatureDef.OutputsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TensorInfo.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'methodName')
    ..hasRequiredFields = false;

  SignatureDef._() : super();
  factory SignatureDef({
    $core.Map<$core.String, TensorInfo>? inputs,
    $core.Map<$core.String, TensorInfo>? outputs,
    $core.String? methodName,
  }) {
    final _result = create();
    if (inputs != null) {
      _result.inputs.addAll(inputs);
    }
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    if (methodName != null) {
      _result.methodName = methodName;
    }
    return _result;
  }
  factory SignatureDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignatureDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SignatureDef clone() => SignatureDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SignatureDef copyWith(void Function(SignatureDef) updates) =>
      super.copyWith((message) => updates(message as SignatureDef))
          as SignatureDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDef create() => SignatureDef._();
  SignatureDef createEmptyInstance() => create();
  static $pb.PbList<SignatureDef> createRepeated() =>
      $pb.PbList<SignatureDef>();
  @$core.pragma('dart2js:noInline')
  static SignatureDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SignatureDef>(create);
  static SignatureDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, TensorInfo> get inputs => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, TensorInfo> get outputs => $_getMap(1);

  @$pb.TagNumber(3)
  $core.String get methodName => $_getSZ(2);
  @$pb.TagNumber(3)
  set methodName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMethodName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethodName() => clearField(3);
}

class AssetFileDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AssetFileDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOM<TensorInfo>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorInfo',
        subBuilder: TensorInfo.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filename')
    ..hasRequiredFields = false;

  AssetFileDef._() : super();
  factory AssetFileDef({
    TensorInfo? tensorInfo,
    $core.String? filename,
  }) {
    final _result = create();
    if (tensorInfo != null) {
      _result.tensorInfo = tensorInfo;
    }
    if (filename != null) {
      _result.filename = filename;
    }
    return _result;
  }
  factory AssetFileDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AssetFileDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AssetFileDef clone() => AssetFileDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AssetFileDef copyWith(void Function(AssetFileDef) updates) =>
      super.copyWith((message) => updates(message as AssetFileDef))
          as AssetFileDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetFileDef create() => AssetFileDef._();
  AssetFileDef createEmptyInstance() => create();
  static $pb.PbList<AssetFileDef> createRepeated() =>
      $pb.PbList<AssetFileDef>();
  @$core.pragma('dart2js:noInline')
  static AssetFileDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AssetFileDef>(create);
  static AssetFileDef? _defaultInstance;

  @$pb.TagNumber(1)
  TensorInfo get tensorInfo => $_getN(0);
  @$pb.TagNumber(1)
  set tensorInfo(TensorInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTensorInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTensorInfo() => clearField(1);
  @$pb.TagNumber(1)
  TensorInfo ensureTensorInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => clearField(2);
}
