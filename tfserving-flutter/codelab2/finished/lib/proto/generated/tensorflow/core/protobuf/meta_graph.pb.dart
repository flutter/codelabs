//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/meta_graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $4;
import '../framework/graph.pb.dart' as $0;
import '../framework/op_def.pb.dart' as $3;
import '../framework/tensor_shape.pb.dart' as $5;
import '../framework/types.pbenum.dart' as $7;
import 'saved_object_graph.pb.dart' as $2;
import 'saver.pb.dart' as $1;
import 'struct.pb.dart' as $6;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Meta information regarding the graph to be exported.  To be used by users
/// of this protocol buffer to encode information regarding their meta graph.
class MetaGraphDef_MetaInfoDef extends $pb.GeneratedMessage {
  factory MetaGraphDef_MetaInfoDef({
    $core.String? metaGraphVersion,
    $3.OpList? strippedOpList,
    $4.Any? anyInfo,
    $core.Iterable<$core.String>? tags,
    $core.String? tensorflowVersion,
    $core.String? tensorflowGitVersion,
    $core.bool? strippedDefaultAttrs,
    $pb.PbMap<$core.String, $core.String>? functionAliases,
  }) {
    final $result = create();
    if (metaGraphVersion != null) {
      $result.metaGraphVersion = metaGraphVersion;
    }
    if (strippedOpList != null) {
      $result.strippedOpList = strippedOpList;
    }
    if (anyInfo != null) {
      $result.anyInfo = anyInfo;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (tensorflowVersion != null) {
      $result.tensorflowVersion = tensorflowVersion;
    }
    if (tensorflowGitVersion != null) {
      $result.tensorflowGitVersion = tensorflowGitVersion;
    }
    if (strippedDefaultAttrs != null) {
      $result.strippedDefaultAttrs = strippedDefaultAttrs;
    }
    if (functionAliases != null) {
      $result.functionAliases.addAll(functionAliases);
    }
    return $result;
  }
  MetaGraphDef_MetaInfoDef._() : super();
  factory MetaGraphDef_MetaInfoDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetaGraphDef_MetaInfoDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetaGraphDef.MetaInfoDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metaGraphVersion')
    ..aOM<$3.OpList>(2, _omitFieldNames ? '' : 'strippedOpList', subBuilder: $3.OpList.create)
    ..aOM<$4.Any>(3, _omitFieldNames ? '' : 'anyInfo', subBuilder: $4.Any.create)
    ..pPS(4, _omitFieldNames ? '' : 'tags')
    ..aOS(5, _omitFieldNames ? '' : 'tensorflowVersion')
    ..aOS(6, _omitFieldNames ? '' : 'tensorflowGitVersion')
    ..aOB(7, _omitFieldNames ? '' : 'strippedDefaultAttrs')
    ..m<$core.String, $core.String>(8, _omitFieldNames ? '' : 'functionAliases', entryClassName: 'MetaGraphDef.MetaInfoDef.FunctionAliasesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetaGraphDef_MetaInfoDef clone() => MetaGraphDef_MetaInfoDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetaGraphDef_MetaInfoDef copyWith(void Function(MetaGraphDef_MetaInfoDef) updates) => super.copyWith((message) => updates(message as MetaGraphDef_MetaInfoDef)) as MetaGraphDef_MetaInfoDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetaGraphDef_MetaInfoDef create() => MetaGraphDef_MetaInfoDef._();
  MetaGraphDef_MetaInfoDef createEmptyInstance() => create();
  static $pb.PbList<MetaGraphDef_MetaInfoDef> createRepeated() => $pb.PbList<MetaGraphDef_MetaInfoDef>();
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef_MetaInfoDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetaGraphDef_MetaInfoDef>(create);
  static MetaGraphDef_MetaInfoDef? _defaultInstance;

  /// User specified Version string. Can be the name of the model and revision,
  /// steps this model has been trained to, etc.
  @$pb.TagNumber(1)
  $core.String get metaGraphVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set metaGraphVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaGraphVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaGraphVersion() => $_clearField(1);

  /// A copy of the OpDefs used by the producer of this graph_def.
  /// Descriptions and Ops not used in graph_def are stripped out.
  @$pb.TagNumber(2)
  $3.OpList get strippedOpList => $_getN(1);
  @$pb.TagNumber(2)
  set strippedOpList($3.OpList v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStrippedOpList() => $_has(1);
  @$pb.TagNumber(2)
  void clearStrippedOpList() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.OpList ensureStrippedOpList() => $_ensure(1);

  /// A serialized protobuf. Can be the time this meta graph is created, or
  /// modified, or name of the model.
  @$pb.TagNumber(3)
  $4.Any get anyInfo => $_getN(2);
  @$pb.TagNumber(3)
  set anyInfo($4.Any v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnyInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnyInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  $4.Any ensureAnyInfo() => $_ensure(2);

  ///  User supplied tag(s) on the meta_graph and included graph_def.
  ///
  ///  MetaGraphDefs should be tagged with their capabilities or use-cases.
  ///  Examples: "train", "serve", "gpu", "tpu", etc.
  ///  These tags enable loaders to access the MetaGraph(s) appropriate for a
  ///  specific use-case or runtime environment.
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get tags => $_getList(3);

  /// The __version__ string of the tensorflow build used to write this graph.
  /// This will be populated by the framework, which will overwrite any user
  /// supplied value.
  @$pb.TagNumber(5)
  $core.String get tensorflowVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set tensorflowVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTensorflowVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearTensorflowVersion() => $_clearField(5);

  /// The __git_version__ string of the tensorflow build used to write this
  /// graph. This will be populated by the framework, which will overwrite any
  /// user supplied value.
  @$pb.TagNumber(6)
  $core.String get tensorflowGitVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set tensorflowGitVersion($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTensorflowGitVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearTensorflowGitVersion() => $_clearField(6);

  /// A flag to denote whether default-valued attrs have been stripped from
  /// the nodes in this graph_def.
  @$pb.TagNumber(7)
  $core.bool get strippedDefaultAttrs => $_getBF(6);
  @$pb.TagNumber(7)
  set strippedDefaultAttrs($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStrippedDefaultAttrs() => $_has(6);
  @$pb.TagNumber(7)
  void clearStrippedDefaultAttrs() => $_clearField(7);

  /// FunctionDef name to aliases mapping.
  @$pb.TagNumber(8)
  $pb.PbMap<$core.String, $core.String> get functionAliases => $_getMap(7);
}

///  NOTE: This protocol buffer is evolving, and will go through revisions in the
///  coming months.
///
///  Protocol buffer containing the following which are necessary to restart
///  training, run inference. It can be used to serialize/de-serialize memory
///  objects necessary for running computation in a graph when crossing the
///  process boundary. It can be used for long term storage of graphs,
///  cross-language execution of graphs, etc.
///    MetaInfoDef
///    GraphDef
///    SaverDef
///    CollectionDef
///    TensorInfo
///    SignatureDef
class MetaGraphDef extends $pb.GeneratedMessage {
  factory MetaGraphDef({
    MetaGraphDef_MetaInfoDef? metaInfoDef,
    $0.GraphDef? graphDef,
    $1.SaverDef? saverDef,
    $pb.PbMap<$core.String, CollectionDef>? collectionDef,
    $pb.PbMap<$core.String, SignatureDef>? signatureDef,
    $core.Iterable<AssetFileDef>? assetFileDef,
    $2.SavedObjectGraph? objectGraphDef,
  }) {
    final $result = create();
    if (metaInfoDef != null) {
      $result.metaInfoDef = metaInfoDef;
    }
    if (graphDef != null) {
      $result.graphDef = graphDef;
    }
    if (saverDef != null) {
      $result.saverDef = saverDef;
    }
    if (collectionDef != null) {
      $result.collectionDef.addAll(collectionDef);
    }
    if (signatureDef != null) {
      $result.signatureDef.addAll(signatureDef);
    }
    if (assetFileDef != null) {
      $result.assetFileDef.addAll(assetFileDef);
    }
    if (objectGraphDef != null) {
      $result.objectGraphDef = objectGraphDef;
    }
    return $result;
  }
  MetaGraphDef._() : super();
  factory MetaGraphDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetaGraphDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetaGraphDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOM<MetaGraphDef_MetaInfoDef>(1, _omitFieldNames ? '' : 'metaInfoDef', subBuilder: MetaGraphDef_MetaInfoDef.create)
    ..aOM<$0.GraphDef>(2, _omitFieldNames ? '' : 'graphDef', subBuilder: $0.GraphDef.create)
    ..aOM<$1.SaverDef>(3, _omitFieldNames ? '' : 'saverDef', subBuilder: $1.SaverDef.create)
    ..m<$core.String, CollectionDef>(4, _omitFieldNames ? '' : 'collectionDef', entryClassName: 'MetaGraphDef.CollectionDefEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: CollectionDef.create, valueDefaultOrMaker: CollectionDef.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, SignatureDef>(5, _omitFieldNames ? '' : 'signatureDef', entryClassName: 'MetaGraphDef.SignatureDefEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: SignatureDef.create, valueDefaultOrMaker: SignatureDef.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..pc<AssetFileDef>(6, _omitFieldNames ? '' : 'assetFileDef', $pb.PbFieldType.PM, subBuilder: AssetFileDef.create)
    ..aOM<$2.SavedObjectGraph>(7, _omitFieldNames ? '' : 'objectGraphDef', subBuilder: $2.SavedObjectGraph.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetaGraphDef clone() => MetaGraphDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetaGraphDef copyWith(void Function(MetaGraphDef) updates) => super.copyWith((message) => updates(message as MetaGraphDef)) as MetaGraphDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetaGraphDef create() => MetaGraphDef._();
  MetaGraphDef createEmptyInstance() => create();
  static $pb.PbList<MetaGraphDef> createRepeated() => $pb.PbList<MetaGraphDef>();
  @$core.pragma('dart2js:noInline')
  static MetaGraphDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetaGraphDef>(create);
  static MetaGraphDef? _defaultInstance;

  @$pb.TagNumber(1)
  MetaGraphDef_MetaInfoDef get metaInfoDef => $_getN(0);
  @$pb.TagNumber(1)
  set metaInfoDef(MetaGraphDef_MetaInfoDef v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaInfoDef() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaInfoDef() => $_clearField(1);
  @$pb.TagNumber(1)
  MetaGraphDef_MetaInfoDef ensureMetaInfoDef() => $_ensure(0);

  /// GraphDef.
  @$pb.TagNumber(2)
  $0.GraphDef get graphDef => $_getN(1);
  @$pb.TagNumber(2)
  set graphDef($0.GraphDef v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGraphDef() => $_has(1);
  @$pb.TagNumber(2)
  void clearGraphDef() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.GraphDef ensureGraphDef() => $_ensure(1);

  /// SaverDef.
  @$pb.TagNumber(3)
  $1.SaverDef get saverDef => $_getN(2);
  @$pb.TagNumber(3)
  set saverDef($1.SaverDef v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSaverDef() => $_has(2);
  @$pb.TagNumber(3)
  void clearSaverDef() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.SaverDef ensureSaverDef() => $_ensure(2);

  /// collection_def: Map from collection name to collections.
  /// See CollectionDef section for details.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, CollectionDef> get collectionDef => $_getMap(3);

  /// signature_def: Map from user supplied key for a signature to a single
  /// SignatureDef.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, SignatureDef> get signatureDef => $_getMap(4);

  /// Asset file def to be used with the defined graph.
  @$pb.TagNumber(6)
  $pb.PbList<AssetFileDef> get assetFileDef => $_getList(5);

  /// Extra information about the structure of functions and stateful objects.
  @$pb.TagNumber(7)
  $2.SavedObjectGraph get objectGraphDef => $_getN(6);
  @$pb.TagNumber(7)
  set objectGraphDef($2.SavedObjectGraph v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasObjectGraphDef() => $_has(6);
  @$pb.TagNumber(7)
  void clearObjectGraphDef() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.SavedObjectGraph ensureObjectGraphDef() => $_ensure(6);
}

/// NodeList is used for collecting nodes in graph. For example
/// collection_def {
///   key: "summaries"
///   value {
///     node_list {
///       value: "input_producer/ScalarSummary:0"
///       value: "shuffle_batch/ScalarSummary:0"
///       value: "ImageSummary:0"
///     }
///   }
class CollectionDef_NodeList extends $pb.GeneratedMessage {
  factory CollectionDef_NodeList({
    $core.Iterable<$core.String>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  CollectionDef_NodeList._() : super();
  factory CollectionDef_NodeList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionDef_NodeList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDef.NodeList', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionDef_NodeList clone() => CollectionDef_NodeList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionDef_NodeList copyWith(void Function(CollectionDef_NodeList) updates) => super.copyWith((message) => updates(message as CollectionDef_NodeList)) as CollectionDef_NodeList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDef_NodeList create() => CollectionDef_NodeList._();
  CollectionDef_NodeList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_NodeList> createRepeated() => $pb.PbList<CollectionDef_NodeList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_NodeList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionDef_NodeList>(create);
  static CollectionDef_NodeList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get value => $_getList(0);
}

/// BytesList is used for collecting strings and serialized protobufs. For
/// example:
/// collection_def {
///   key: "trainable_variables"
///   value {
///     bytes_list {
///       value: "\n\017conv1/weights:0\022\024conv1/weights/Assign
///              \032\024conv1/weights/read:0"
///       value: "\n\016conv1/biases:0\022\023conv1/biases/Assign\032
///              \023conv1/biases/read:0"
///     }
///   }
/// }
class CollectionDef_BytesList extends $pb.GeneratedMessage {
  factory CollectionDef_BytesList({
    $core.Iterable<$core.List<$core.int>>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  CollectionDef_BytesList._() : super();
  factory CollectionDef_BytesList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionDef_BytesList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDef.BytesList', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionDef_BytesList clone() => CollectionDef_BytesList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionDef_BytesList copyWith(void Function(CollectionDef_BytesList) updates) => super.copyWith((message) => updates(message as CollectionDef_BytesList)) as CollectionDef_BytesList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDef_BytesList create() => CollectionDef_BytesList._();
  CollectionDef_BytesList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_BytesList> createRepeated() => $pb.PbList<CollectionDef_BytesList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_BytesList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionDef_BytesList>(create);
  static CollectionDef_BytesList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.List<$core.int>> get value => $_getList(0);
}

/// Int64List is used for collecting int, int64 and long values.
class CollectionDef_Int64List extends $pb.GeneratedMessage {
  factory CollectionDef_Int64List({
    $core.Iterable<$fixnum.Int64>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  CollectionDef_Int64List._() : super();
  factory CollectionDef_Int64List.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionDef_Int64List.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDef.Int64List', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionDef_Int64List clone() => CollectionDef_Int64List()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionDef_Int64List copyWith(void Function(CollectionDef_Int64List) updates) => super.copyWith((message) => updates(message as CollectionDef_Int64List)) as CollectionDef_Int64List;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDef_Int64List create() => CollectionDef_Int64List._();
  CollectionDef_Int64List createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_Int64List> createRepeated() => $pb.PbList<CollectionDef_Int64List>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_Int64List getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionDef_Int64List>(create);
  static CollectionDef_Int64List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get value => $_getList(0);
}

/// FloatList is used for collecting float values.
class CollectionDef_FloatList extends $pb.GeneratedMessage {
  factory CollectionDef_FloatList({
    $core.Iterable<$core.double>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  CollectionDef_FloatList._() : super();
  factory CollectionDef_FloatList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionDef_FloatList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDef.FloatList', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionDef_FloatList clone() => CollectionDef_FloatList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionDef_FloatList copyWith(void Function(CollectionDef_FloatList) updates) => super.copyWith((message) => updates(message as CollectionDef_FloatList)) as CollectionDef_FloatList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDef_FloatList create() => CollectionDef_FloatList._();
  CollectionDef_FloatList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_FloatList> createRepeated() => $pb.PbList<CollectionDef_FloatList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_FloatList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionDef_FloatList>(create);
  static CollectionDef_FloatList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.double> get value => $_getList(0);
}

/// AnyList is used for collecting Any protos.
class CollectionDef_AnyList extends $pb.GeneratedMessage {
  factory CollectionDef_AnyList({
    $core.Iterable<$4.Any>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  CollectionDef_AnyList._() : super();
  factory CollectionDef_AnyList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionDef_AnyList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDef.AnyList', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pc<$4.Any>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.PM, subBuilder: $4.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionDef_AnyList clone() => CollectionDef_AnyList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionDef_AnyList copyWith(void Function(CollectionDef_AnyList) updates) => super.copyWith((message) => updates(message as CollectionDef_AnyList)) as CollectionDef_AnyList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDef_AnyList create() => CollectionDef_AnyList._();
  CollectionDef_AnyList createEmptyInstance() => create();
  static $pb.PbList<CollectionDef_AnyList> createRepeated() => $pb.PbList<CollectionDef_AnyList>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef_AnyList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionDef_AnyList>(create);
  static CollectionDef_AnyList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$4.Any> get value => $_getList(0);
}

enum CollectionDef_Kind {
  nodeList, 
  bytesList, 
  int64List, 
  floatList, 
  anyList, 
  notSet
}

///  CollectionDef should cover most collections.
///  To add a user-defined collection, do one of the following:
///  1. For simple data types, such as string, int, float:
///       tf.add_to_collection("your_collection_name", your_simple_value)
///     strings will be stored as bytes_list.
///
///  2. For Protobuf types, there are three ways to add them:
///     1) tf.add_to_collection("your_collection_name",
///          your_proto.SerializeToString())
///
///        collection_def {
///          key: "user_defined_bytes_collection"
///          value {
///            bytes_list {
///              value: "queue_name: \"test_queue\"\n"
///            }
///          }
///        }
///
///   or
///
///     2) tf.add_to_collection("your_collection_name", str(your_proto))
///
///        collection_def {
///          key: "user_defined_string_collection"
///          value {
///           bytes_list {
///              value: "\n\ntest_queue"
///            }
///          }
///        }
///
///   or
///
///     3) any_buf = any_pb2.Any()
///        tf.add_to_collection("your_collection_name",
///          any_buf.Pack(your_proto))
///
///        collection_def {
///          key: "user_defined_any_collection"
///          value {
///            any_list {
///              value {
///                type_url: "type.googleapis.com/tensorflow.QueueRunnerDef"
///                value: "\n\ntest_queue"
///              }
///            }
///          }
///        }
///
///  3. For Python objects, implement to_proto() and from_proto(), and register
///     them in the following manner:
///     ops.register_proto_function("your_collection_name",
///                                 proto_type,
///                                 to_proto=YourPythonObject.to_proto,
///                                 from_proto=YourPythonObject.from_proto)
///     These functions will be invoked to serialize and de-serialize the
///     collection. For example,
///     ops.register_proto_function(ops.GraphKeys.GLOBAL_VARIABLES,
///                                 proto_type=variable_pb2.VariableDef,
///                                 to_proto=Variable.to_proto,
///                                 from_proto=Variable.from_proto)
class CollectionDef extends $pb.GeneratedMessage {
  factory CollectionDef({
    CollectionDef_NodeList? nodeList,
    CollectionDef_BytesList? bytesList,
    CollectionDef_Int64List? int64List,
    CollectionDef_FloatList? floatList,
    CollectionDef_AnyList? anyList,
  }) {
    final $result = create();
    if (nodeList != null) {
      $result.nodeList = nodeList;
    }
    if (bytesList != null) {
      $result.bytesList = bytesList;
    }
    if (int64List != null) {
      $result.int64List = int64List;
    }
    if (floatList != null) {
      $result.floatList = floatList;
    }
    if (anyList != null) {
      $result.anyList = anyList;
    }
    return $result;
  }
  CollectionDef._() : super();
  factory CollectionDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CollectionDef_Kind> _CollectionDef_KindByTag = {
    1 : CollectionDef_Kind.nodeList,
    2 : CollectionDef_Kind.bytesList,
    3 : CollectionDef_Kind.int64List,
    4 : CollectionDef_Kind.floatList,
    5 : CollectionDef_Kind.anyList,
    0 : CollectionDef_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<CollectionDef_NodeList>(1, _omitFieldNames ? '' : 'nodeList', subBuilder: CollectionDef_NodeList.create)
    ..aOM<CollectionDef_BytesList>(2, _omitFieldNames ? '' : 'bytesList', subBuilder: CollectionDef_BytesList.create)
    ..aOM<CollectionDef_Int64List>(3, _omitFieldNames ? '' : 'int64List', subBuilder: CollectionDef_Int64List.create)
    ..aOM<CollectionDef_FloatList>(4, _omitFieldNames ? '' : 'floatList', subBuilder: CollectionDef_FloatList.create)
    ..aOM<CollectionDef_AnyList>(5, _omitFieldNames ? '' : 'anyList', subBuilder: CollectionDef_AnyList.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionDef clone() => CollectionDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionDef copyWith(void Function(CollectionDef) updates) => super.copyWith((message) => updates(message as CollectionDef)) as CollectionDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionDef create() => CollectionDef._();
  CollectionDef createEmptyInstance() => create();
  static $pb.PbList<CollectionDef> createRepeated() => $pb.PbList<CollectionDef>();
  @$core.pragma('dart2js:noInline')
  static CollectionDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionDef>(create);
  static CollectionDef? _defaultInstance;

  CollectionDef_Kind whichKind() => _CollectionDef_KindByTag[$_whichOneof(0)]!;
  void clearKind() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CollectionDef_NodeList get nodeList => $_getN(0);
  @$pb.TagNumber(1)
  set nodeList(CollectionDef_NodeList v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeList() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeList() => $_clearField(1);
  @$pb.TagNumber(1)
  CollectionDef_NodeList ensureNodeList() => $_ensure(0);

  @$pb.TagNumber(2)
  CollectionDef_BytesList get bytesList => $_getN(1);
  @$pb.TagNumber(2)
  set bytesList(CollectionDef_BytesList v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBytesList() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytesList() => $_clearField(2);
  @$pb.TagNumber(2)
  CollectionDef_BytesList ensureBytesList() => $_ensure(1);

  @$pb.TagNumber(3)
  CollectionDef_Int64List get int64List => $_getN(2);
  @$pb.TagNumber(3)
  set int64List(CollectionDef_Int64List v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInt64List() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt64List() => $_clearField(3);
  @$pb.TagNumber(3)
  CollectionDef_Int64List ensureInt64List() => $_ensure(2);

  @$pb.TagNumber(4)
  CollectionDef_FloatList get floatList => $_getN(3);
  @$pb.TagNumber(4)
  set floatList(CollectionDef_FloatList v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFloatList() => $_has(3);
  @$pb.TagNumber(4)
  void clearFloatList() => $_clearField(4);
  @$pb.TagNumber(4)
  CollectionDef_FloatList ensureFloatList() => $_ensure(3);

  @$pb.TagNumber(5)
  CollectionDef_AnyList get anyList => $_getN(4);
  @$pb.TagNumber(5)
  set anyList(CollectionDef_AnyList v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAnyList() => $_has(4);
  @$pb.TagNumber(5)
  void clearAnyList() => $_clearField(5);
  @$pb.TagNumber(5)
  CollectionDef_AnyList ensureAnyList() => $_ensure(4);
}

/// For sparse tensors, The COO encoding stores a triple of values, indices,
/// and shape.
class TensorInfo_CooSparse extends $pb.GeneratedMessage {
  factory TensorInfo_CooSparse({
    $core.String? valuesTensorName,
    $core.String? indicesTensorName,
    $core.String? denseShapeTensorName,
  }) {
    final $result = create();
    if (valuesTensorName != null) {
      $result.valuesTensorName = valuesTensorName;
    }
    if (indicesTensorName != null) {
      $result.indicesTensorName = indicesTensorName;
    }
    if (denseShapeTensorName != null) {
      $result.denseShapeTensorName = denseShapeTensorName;
    }
    return $result;
  }
  TensorInfo_CooSparse._() : super();
  factory TensorInfo_CooSparse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TensorInfo_CooSparse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TensorInfo.CooSparse', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'valuesTensorName')
    ..aOS(2, _omitFieldNames ? '' : 'indicesTensorName')
    ..aOS(3, _omitFieldNames ? '' : 'denseShapeTensorName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TensorInfo_CooSparse clone() => TensorInfo_CooSparse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TensorInfo_CooSparse copyWith(void Function(TensorInfo_CooSparse) updates) => super.copyWith((message) => updates(message as TensorInfo_CooSparse)) as TensorInfo_CooSparse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TensorInfo_CooSparse create() => TensorInfo_CooSparse._();
  TensorInfo_CooSparse createEmptyInstance() => create();
  static $pb.PbList<TensorInfo_CooSparse> createRepeated() => $pb.PbList<TensorInfo_CooSparse>();
  @$core.pragma('dart2js:noInline')
  static TensorInfo_CooSparse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TensorInfo_CooSparse>(create);
  static TensorInfo_CooSparse? _defaultInstance;

  /// The shape of the values Tensor is [?].  Its dtype must be the dtype of
  /// the SparseTensor as a whole, given in the enclosing TensorInfo.
  @$pb.TagNumber(1)
  $core.String get valuesTensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set valuesTensorName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValuesTensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearValuesTensorName() => $_clearField(1);

  /// The indices Tensor must have dtype int64 and shape [?, ?].
  @$pb.TagNumber(2)
  $core.String get indicesTensorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set indicesTensorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndicesTensorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndicesTensorName() => $_clearField(2);

  /// The dynamic logical shape represented by the SparseTensor is recorded in
  /// the Tensor referenced here.  It must have dtype int64 and shape [?].
  @$pb.TagNumber(3)
  $core.String get denseShapeTensorName => $_getSZ(2);
  @$pb.TagNumber(3)
  set denseShapeTensorName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDenseShapeTensorName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDenseShapeTensorName() => $_clearField(3);
}

/// Generic encoding for composite tensors.
class TensorInfo_CompositeTensor extends $pb.GeneratedMessage {
  factory TensorInfo_CompositeTensor({
    $6.TypeSpecProto? typeSpec,
    $core.Iterable<TensorInfo>? components,
  }) {
    final $result = create();
    if (typeSpec != null) {
      $result.typeSpec = typeSpec;
    }
    if (components != null) {
      $result.components.addAll(components);
    }
    return $result;
  }
  TensorInfo_CompositeTensor._() : super();
  factory TensorInfo_CompositeTensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TensorInfo_CompositeTensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TensorInfo.CompositeTensor', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOM<$6.TypeSpecProto>(1, _omitFieldNames ? '' : 'typeSpec', subBuilder: $6.TypeSpecProto.create)
    ..pc<TensorInfo>(2, _omitFieldNames ? '' : 'components', $pb.PbFieldType.PM, subBuilder: TensorInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TensorInfo_CompositeTensor clone() => TensorInfo_CompositeTensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TensorInfo_CompositeTensor copyWith(void Function(TensorInfo_CompositeTensor) updates) => super.copyWith((message) => updates(message as TensorInfo_CompositeTensor)) as TensorInfo_CompositeTensor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TensorInfo_CompositeTensor create() => TensorInfo_CompositeTensor._();
  TensorInfo_CompositeTensor createEmptyInstance() => create();
  static $pb.PbList<TensorInfo_CompositeTensor> createRepeated() => $pb.PbList<TensorInfo_CompositeTensor>();
  @$core.pragma('dart2js:noInline')
  static TensorInfo_CompositeTensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TensorInfo_CompositeTensor>(create);
  static TensorInfo_CompositeTensor? _defaultInstance;

  /// The serialized TypeSpec for the composite tensor.
  @$pb.TagNumber(1)
  $6.TypeSpecProto get typeSpec => $_getN(0);
  @$pb.TagNumber(1)
  set typeSpec($6.TypeSpecProto v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeSpec() => $_clearField(1);
  @$pb.TagNumber(1)
  $6.TypeSpecProto ensureTypeSpec() => $_ensure(0);

  /// A TensorInfo for each flattened component tensor.
  @$pb.TagNumber(2)
  $pb.PbList<TensorInfo> get components => $_getList(1);
}

enum TensorInfo_Encoding {
  name, 
  cooSparse, 
  compositeTensor, 
  notSet
}

/// Information about a Tensor necessary for feeding or retrieval.
class TensorInfo extends $pb.GeneratedMessage {
  factory TensorInfo({
    $core.String? name,
    $7.DataType? dtype,
    $5.TensorShapeProto? tensorShape,
    TensorInfo_CooSparse? cooSparse,
    TensorInfo_CompositeTensor? compositeTensor,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (dtype != null) {
      $result.dtype = dtype;
    }
    if (tensorShape != null) {
      $result.tensorShape = tensorShape;
    }
    if (cooSparse != null) {
      $result.cooSparse = cooSparse;
    }
    if (compositeTensor != null) {
      $result.compositeTensor = compositeTensor;
    }
    return $result;
  }
  TensorInfo._() : super();
  factory TensorInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TensorInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TensorInfo_Encoding> _TensorInfo_EncodingByTag = {
    1 : TensorInfo_Encoding.name,
    4 : TensorInfo_Encoding.cooSparse,
    5 : TensorInfo_Encoding.compositeTensor,
    0 : TensorInfo_Encoding.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TensorInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..oo(0, [1, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..e<$7.DataType>(2, _omitFieldNames ? '' : 'dtype', $pb.PbFieldType.OE, defaultOrMaker: $7.DataType.DT_INVALID, valueOf: $7.DataType.valueOf, enumValues: $7.DataType.values)
    ..aOM<$5.TensorShapeProto>(3, _omitFieldNames ? '' : 'tensorShape', subBuilder: $5.TensorShapeProto.create)
    ..aOM<TensorInfo_CooSparse>(4, _omitFieldNames ? '' : 'cooSparse', subBuilder: TensorInfo_CooSparse.create)
    ..aOM<TensorInfo_CompositeTensor>(5, _omitFieldNames ? '' : 'compositeTensor', subBuilder: TensorInfo_CompositeTensor.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TensorInfo clone() => TensorInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TensorInfo copyWith(void Function(TensorInfo) updates) => super.copyWith((message) => updates(message as TensorInfo)) as TensorInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TensorInfo create() => TensorInfo._();
  TensorInfo createEmptyInstance() => create();
  static $pb.PbList<TensorInfo> createRepeated() => $pb.PbList<TensorInfo>();
  @$core.pragma('dart2js:noInline')
  static TensorInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TensorInfo>(create);
  static TensorInfo? _defaultInstance;

  TensorInfo_Encoding whichEncoding() => _TensorInfo_EncodingByTag[$_whichOneof(0)]!;
  void clearEncoding() => $_clearField($_whichOneof(0));

  /// For dense `Tensor`s, the name of the tensor in the graph.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $7.DataType get dtype => $_getN(1);
  @$pb.TagNumber(2)
  set dtype($7.DataType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDtype() => $_has(1);
  @$pb.TagNumber(2)
  void clearDtype() => $_clearField(2);

  /// The static shape should be recorded here, to the extent that it can
  /// be known in advance.  In the case of a SparseTensor, this field describes
  /// the logical shape of the represented tensor (aka dense_shape).
  @$pb.TagNumber(3)
  $5.TensorShapeProto get tensorShape => $_getN(2);
  @$pb.TagNumber(3)
  set tensorShape($5.TensorShapeProto v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTensorShape() => $_has(2);
  @$pb.TagNumber(3)
  void clearTensorShape() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.TensorShapeProto ensureTensorShape() => $_ensure(2);

  /// There are many possible encodings of sparse matrices
  /// (https://en.wikipedia.org/wiki/Sparse_matrix).  Currently, TensorFlow
  /// uses only the COO encoding.  This is supported and documented in the
  /// SparseTensor Python class.
  @$pb.TagNumber(4)
  TensorInfo_CooSparse get cooSparse => $_getN(3);
  @$pb.TagNumber(4)
  set cooSparse(TensorInfo_CooSparse v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCooSparse() => $_has(3);
  @$pb.TagNumber(4)
  void clearCooSparse() => $_clearField(4);
  @$pb.TagNumber(4)
  TensorInfo_CooSparse ensureCooSparse() => $_ensure(3);

  /// Generic encoding for CompositeTensors.
  @$pb.TagNumber(5)
  TensorInfo_CompositeTensor get compositeTensor => $_getN(4);
  @$pb.TagNumber(5)
  set compositeTensor(TensorInfo_CompositeTensor v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCompositeTensor() => $_has(4);
  @$pb.TagNumber(5)
  void clearCompositeTensor() => $_clearField(5);
  @$pb.TagNumber(5)
  TensorInfo_CompositeTensor ensureCompositeTensor() => $_ensure(4);
}

///  SignatureDef defines the signature of a computation supported by a TensorFlow
///  graph.
///
///  For example, a model with two loss computations, sharing a single input,
///  might have the following signature_def map, in a MetaGraphDef message.
///
///  Note that across the two SignatureDefs "loss_A" and "loss_B", the input key,
///  output key, and method_name are identical, and will be used by system(s) that
///  implement or rely upon this particular loss method. The output tensor names
///  differ, demonstrating how different outputs can exist for the same method.
///
///  signature_def {
///    key: "loss_A"
///    value {
///      inputs {
///        key: "input"
///        value {
///          name: "input:0"
///          dtype: DT_STRING
///          tensor_shape: ...
///        }
///      }
///      outputs {
///        key: "loss_output"
///        value {
///          name: "loss_output_A:0"
///          dtype: DT_FLOAT
///          tensor_shape: ...
///        }
///      }
///      method_name: "some/package/compute_loss"
///    }
///    ...
///  }
///  signature_def {
///    key: "loss_B"
///    value {
///      inputs {
///        key: "input"
///        value {
///          name: "input:0"
///          dtype: DT_STRING
///          tensor_shape: ...
///        }
///      }
///      outputs {
///        key: "loss_output"
///        value {
///          name: "loss_output_B:0"
///          dtype: DT_FLOAT
///          tensor_shape: ...
///        }
///      }
///      method_name: "some/package/compute_loss"
///    }
///    ...
///  }
class SignatureDef extends $pb.GeneratedMessage {
  factory SignatureDef({
    $pb.PbMap<$core.String, TensorInfo>? inputs,
    $pb.PbMap<$core.String, TensorInfo>? outputs,
    $core.String? methodName,
  }) {
    final $result = create();
    if (inputs != null) {
      $result.inputs.addAll(inputs);
    }
    if (outputs != null) {
      $result.outputs.addAll(outputs);
    }
    if (methodName != null) {
      $result.methodName = methodName;
    }
    return $result;
  }
  SignatureDef._() : super();
  factory SignatureDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignatureDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..m<$core.String, TensorInfo>(1, _omitFieldNames ? '' : 'inputs', entryClassName: 'SignatureDef.InputsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: TensorInfo.create, valueDefaultOrMaker: TensorInfo.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..m<$core.String, TensorInfo>(2, _omitFieldNames ? '' : 'outputs', entryClassName: 'SignatureDef.OutputsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: TensorInfo.create, valueDefaultOrMaker: TensorInfo.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..aOS(3, _omitFieldNames ? '' : 'methodName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureDef clone() => SignatureDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureDef copyWith(void Function(SignatureDef) updates) => super.copyWith((message) => updates(message as SignatureDef)) as SignatureDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignatureDef create() => SignatureDef._();
  SignatureDef createEmptyInstance() => create();
  static $pb.PbList<SignatureDef> createRepeated() => $pb.PbList<SignatureDef>();
  @$core.pragma('dart2js:noInline')
  static SignatureDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureDef>(create);
  static SignatureDef? _defaultInstance;

  /// Named input parameters.
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, TensorInfo> get inputs => $_getMap(0);

  /// Named output parameters.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, TensorInfo> get outputs => $_getMap(1);

  ///  Extensible method_name information enabling third-party users to mark a
  ///  SignatureDef as supporting a particular method. This enables producers and
  ///  consumers of SignatureDefs, e.g. a model definition library and a serving
  ///  library to have a clear hand-off regarding the semantics of a computation.
  ///
  ///  Note that multiple SignatureDefs in a single MetaGraphDef may have the same
  ///  method_name. This is commonly used to support multi-headed computation,
  ///  where a single graph computation may return multiple results.
  @$pb.TagNumber(3)
  $core.String get methodName => $_getSZ(2);
  @$pb.TagNumber(3)
  set methodName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMethodName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethodName() => $_clearField(3);
}

/// An asset file def for a single file or a set of sharded files with the same
/// name.
class AssetFileDef extends $pb.GeneratedMessage {
  factory AssetFileDef({
    TensorInfo? tensorInfo,
    $core.String? filename,
  }) {
    final $result = create();
    if (tensorInfo != null) {
      $result.tensorInfo = tensorInfo;
    }
    if (filename != null) {
      $result.filename = filename;
    }
    return $result;
  }
  AssetFileDef._() : super();
  factory AssetFileDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetFileDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssetFileDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOM<TensorInfo>(1, _omitFieldNames ? '' : 'tensorInfo', subBuilder: TensorInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetFileDef clone() => AssetFileDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetFileDef copyWith(void Function(AssetFileDef) updates) => super.copyWith((message) => updates(message as AssetFileDef)) as AssetFileDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssetFileDef create() => AssetFileDef._();
  AssetFileDef createEmptyInstance() => create();
  static $pb.PbList<AssetFileDef> createRepeated() => $pb.PbList<AssetFileDef>();
  @$core.pragma('dart2js:noInline')
  static AssetFileDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetFileDef>(create);
  static AssetFileDef? _defaultInstance;

  /// The tensor to bind the asset filename to.
  @$pb.TagNumber(1)
  TensorInfo get tensorInfo => $_getN(0);
  @$pb.TagNumber(1)
  set tensorInfo(TensorInfo v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTensorInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTensorInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  TensorInfo ensureTensorInfo() => $_ensure(0);

  /// The filename within an assets directory. Note: does not include the path
  /// prefix, i.e. directories. For an asset at /tmp/path/vocab.txt, the filename
  /// would be "vocab.txt".
  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => $_clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
