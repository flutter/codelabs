//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/node_def.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'attr_value.pb.dart' as $1;
import 'full_type.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NodeDef_ExperimentalDebugInfo extends $pb.GeneratedMessage {
  factory NodeDef_ExperimentalDebugInfo({
    $core.Iterable<$core.String>? originalNodeNames,
    $core.Iterable<$core.String>? originalFuncNames,
  }) {
    final $result = create();
    if (originalNodeNames != null) {
      $result.originalNodeNames.addAll(originalNodeNames);
    }
    if (originalFuncNames != null) {
      $result.originalFuncNames.addAll(originalFuncNames);
    }
    return $result;
  }
  NodeDef_ExperimentalDebugInfo._() : super();
  factory NodeDef_ExperimentalDebugInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeDef_ExperimentalDebugInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeDef.ExperimentalDebugInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'originalNodeNames')
    ..pPS(2, _omitFieldNames ? '' : 'originalFuncNames')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeDef_ExperimentalDebugInfo clone() => NodeDef_ExperimentalDebugInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeDef_ExperimentalDebugInfo copyWith(void Function(NodeDef_ExperimentalDebugInfo) updates) => super.copyWith((message) => updates(message as NodeDef_ExperimentalDebugInfo)) as NodeDef_ExperimentalDebugInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeDef_ExperimentalDebugInfo create() => NodeDef_ExperimentalDebugInfo._();
  NodeDef_ExperimentalDebugInfo createEmptyInstance() => create();
  static $pb.PbList<NodeDef_ExperimentalDebugInfo> createRepeated() => $pb.PbList<NodeDef_ExperimentalDebugInfo>();
  @$core.pragma('dart2js:noInline')
  static NodeDef_ExperimentalDebugInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeDef_ExperimentalDebugInfo>(create);
  static NodeDef_ExperimentalDebugInfo? _defaultInstance;

  ///  Opaque string inserted into error messages created by the runtime.
  ///
  ///  This is intended to store the list of names of the nodes from the
  ///  original graph that this node was derived. For example if this node, say
  ///  C, was result of a fusion of 2 nodes A and B, then 'original_node' would
  ///  be {A, B}. This information can be used to map errors originating at the
  ///  current node to some top level source code.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get originalNodeNames => $_getList(0);

  /// This is intended to store the list of names of the functions from the
  /// original graph that this node was derived. For example if this node, say
  /// C, was result of a fusion of node A in function FA and node B in function
  /// FB, then `original_funcs` would be {FA, FB}. If the node is in the top
  /// level graph, the `original_func` is empty. This information, with the
  /// `original_node_names` can be used to map errors originating at the
  /// current ndoe to some top level source code.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get originalFuncNames => $_getList(1);
}

class NodeDef extends $pb.GeneratedMessage {
  factory NodeDef({
    $core.String? name,
    $core.String? op,
    $core.Iterable<$core.String>? input,
    $core.String? device,
    $pb.PbMap<$core.String, $1.AttrValue>? attr,
    NodeDef_ExperimentalDebugInfo? experimentalDebugInfo,
    $0.FullTypeDef? experimentalType,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (op != null) {
      $result.op = op;
    }
    if (input != null) {
      $result.input.addAll(input);
    }
    if (device != null) {
      $result.device = device;
    }
    if (attr != null) {
      $result.attr.addAll(attr);
    }
    if (experimentalDebugInfo != null) {
      $result.experimentalDebugInfo = experimentalDebugInfo;
    }
    if (experimentalType != null) {
      $result.experimentalType = experimentalType;
    }
    return $result;
  }
  NodeDef._() : super();
  factory NodeDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'op')
    ..pPS(3, _omitFieldNames ? '' : 'input')
    ..aOS(4, _omitFieldNames ? '' : 'device')
    ..m<$core.String, $1.AttrValue>(5, _omitFieldNames ? '' : 'attr', entryClassName: 'NodeDef.AttrEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.AttrValue.create, valueDefaultOrMaker: $1.AttrValue.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..aOM<NodeDef_ExperimentalDebugInfo>(6, _omitFieldNames ? '' : 'experimentalDebugInfo', subBuilder: NodeDef_ExperimentalDebugInfo.create)
    ..aOM<$0.FullTypeDef>(7, _omitFieldNames ? '' : 'experimentalType', subBuilder: $0.FullTypeDef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeDef clone() => NodeDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeDef copyWith(void Function(NodeDef) updates) => super.copyWith((message) => updates(message as NodeDef)) as NodeDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeDef create() => NodeDef._();
  NodeDef createEmptyInstance() => create();
  static $pb.PbList<NodeDef> createRepeated() => $pb.PbList<NodeDef>();
  @$core.pragma('dart2js:noInline')
  static NodeDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeDef>(create);
  static NodeDef? _defaultInstance;

  /// The name given to this operator. Used for naming inputs,
  /// logging, visualization, etc.  Unique within a single GraphDef.
  /// Must match the regexp "[A-Za-z0-9.][A-Za-z0-9_>./]*".
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// The operation name.  There may be custom parameters in attrs.
  /// Op names starting with an underscore are reserved for internal use.
  @$pb.TagNumber(2)
  $core.String get op => $_getSZ(1);
  @$pb.TagNumber(2)
  set op($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOp() => $_clearField(2);

  /// Each input is "node:src_output" with "node" being a string name and
  /// "src_output" indicating which output tensor to use from "node". If
  /// "src_output" is 0 the ":0" suffix can be omitted.  Regular inputs
  /// may optionally be followed by control inputs that have the format
  /// "^node".
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get input => $_getList(2);

  ///  A (possibly partial) specification for the device on which this
  ///  node should be placed.
  ///  The expected syntax for this string is as follows:
  ///
  ///  DEVICE_SPEC ::= PARTIAL_SPEC
  ///
  ///  PARTIAL_SPEC ::= ("/" CONSTRAINT) *
  ///  CONSTRAINT ::= ("job:" JOB_NAME)
  ///               | ("replica:" [1-9][0-9]*)
  ///               | ("task:" [1-9][0-9]*)
  ///               | ("device:" [A-Za-z]* ":" ([1-9][0-9]* | "*") )
  ///
  ///  Valid values for this string include:
  ///  * "/job:worker/replica:0/task:1/device:GPU:3"  (full specification)
  ///  * "/job:worker/device:GPU:3"                   (partial specification)
  ///  * ""                                    (no specification)
  ///
  ///  If the constraints do not resolve to a single device (or if this
  ///  field is empty or not present), the runtime will attempt to
  ///  choose a device automatically.
  @$pb.TagNumber(4)
  $core.String get device => $_getSZ(3);
  @$pb.TagNumber(4)
  set device($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDevice() => $_has(3);
  @$pb.TagNumber(4)
  void clearDevice() => $_clearField(4);

  /// Operation-specific graph-construction-time configuration.
  /// Note that this should include all attrs defined in the
  /// corresponding OpDef, including those with a value matching
  /// the default -- this allows the default to change and makes
  /// NodeDefs easier to interpret on their own.  However, if
  /// an attr with a default is not specified in this list, the
  /// default will be used.
  /// The "names" (keys) must match the regexp "[a-z][a-z0-9_]+" (and
  /// one of the names from the corresponding OpDef's attr field).
  /// The values must have a type matching the corresponding OpDef
  /// attr's type field.
  /// TODO(josh11b): Add some examples here showing best practices.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $1.AttrValue> get attr => $_getMap(4);

  /// This stores debug information associated with the node.
  @$pb.TagNumber(6)
  NodeDef_ExperimentalDebugInfo get experimentalDebugInfo => $_getN(5);
  @$pb.TagNumber(6)
  set experimentalDebugInfo(NodeDef_ExperimentalDebugInfo v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasExperimentalDebugInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearExperimentalDebugInfo() => $_clearField(6);
  @$pb.TagNumber(6)
  NodeDef_ExperimentalDebugInfo ensureExperimentalDebugInfo() => $_ensure(5);

  /// The complete type of this node. Experimental and subject to change.
  /// Currently, the field only contains the return types of the node. That will
  /// extend in the future to contain the entire signature of the node, as a
  /// function type.
  @$pb.TagNumber(7)
  $0.FullTypeDef get experimentalType => $_getN(6);
  @$pb.TagNumber(7)
  set experimentalType($0.FullTypeDef v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasExperimentalType() => $_has(6);
  @$pb.TagNumber(7)
  void clearExperimentalType() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.FullTypeDef ensureExperimentalType() => $_ensure(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
