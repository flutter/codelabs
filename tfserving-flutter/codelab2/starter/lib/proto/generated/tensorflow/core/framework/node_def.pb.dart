///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/node_def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'full_type.pb.dart' as $0;
import 'attr_value.pb.dart' as $1;

class NodeDef_ExperimentalDebugInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NodeDef.ExperimentalDebugInfo',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalNodeNames')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'originalFuncNames')
    ..hasRequiredFields = false;

  NodeDef_ExperimentalDebugInfo._() : super();
  factory NodeDef_ExperimentalDebugInfo({
    $core.Iterable<$core.String>? originalNodeNames,
    $core.Iterable<$core.String>? originalFuncNames,
  }) {
    final _result = create();
    if (originalNodeNames != null) {
      _result.originalNodeNames.addAll(originalNodeNames);
    }
    if (originalFuncNames != null) {
      _result.originalFuncNames.addAll(originalFuncNames);
    }
    return _result;
  }
  factory NodeDef_ExperimentalDebugInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeDef_ExperimentalDebugInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NodeDef_ExperimentalDebugInfo clone() =>
      NodeDef_ExperimentalDebugInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NodeDef_ExperimentalDebugInfo copyWith(
          void Function(NodeDef_ExperimentalDebugInfo) updates) =>
      super.copyWith(
              (message) => updates(message as NodeDef_ExperimentalDebugInfo))
          as NodeDef_ExperimentalDebugInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeDef_ExperimentalDebugInfo create() =>
      NodeDef_ExperimentalDebugInfo._();
  NodeDef_ExperimentalDebugInfo createEmptyInstance() => create();
  static $pb.PbList<NodeDef_ExperimentalDebugInfo> createRepeated() =>
      $pb.PbList<NodeDef_ExperimentalDebugInfo>();
  @$core.pragma('dart2js:noInline')
  static NodeDef_ExperimentalDebugInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeDef_ExperimentalDebugInfo>(create);
  static NodeDef_ExperimentalDebugInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get originalNodeNames => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get originalFuncNames => $_getList(1);
}

class NodeDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NodeDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'op')
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'input')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'device')
    ..m<$core.String, $1.AttrValue>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'attr',
        entryClassName: 'NodeDef.AttrEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $1.AttrValue.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..aOM<NodeDef_ExperimentalDebugInfo>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'experimentalDebugInfo',
        subBuilder: NodeDef_ExperimentalDebugInfo.create)
    ..aOM<$0.FullTypeDef>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'experimentalType',
        subBuilder: $0.FullTypeDef.create)
    ..hasRequiredFields = false;

  NodeDef._() : super();
  factory NodeDef({
    $core.String? name,
    $core.String? op,
    $core.Iterable<$core.String>? input,
    $core.String? device,
    $core.Map<$core.String, $1.AttrValue>? attr,
    NodeDef_ExperimentalDebugInfo? experimentalDebugInfo,
    $0.FullTypeDef? experimentalType,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (op != null) {
      _result.op = op;
    }
    if (input != null) {
      _result.input.addAll(input);
    }
    if (device != null) {
      _result.device = device;
    }
    if (attr != null) {
      _result.attr.addAll(attr);
    }
    if (experimentalDebugInfo != null) {
      _result.experimentalDebugInfo = experimentalDebugInfo;
    }
    if (experimentalType != null) {
      _result.experimentalType = experimentalType;
    }
    return _result;
  }
  factory NodeDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NodeDef clone() => NodeDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NodeDef copyWith(void Function(NodeDef) updates) =>
      super.copyWith((message) => updates(message as NodeDef))
          as NodeDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeDef create() => NodeDef._();
  NodeDef createEmptyInstance() => create();
  static $pb.PbList<NodeDef> createRepeated() => $pb.PbList<NodeDef>();
  @$core.pragma('dart2js:noInline')
  static NodeDef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeDef>(create);
  static NodeDef? _defaultInstance;

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
  $core.String get op => $_getSZ(1);
  @$pb.TagNumber(2)
  set op($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOp() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get input => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get device => $_getSZ(3);
  @$pb.TagNumber(4)
  set device($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDevice() => $_has(3);
  @$pb.TagNumber(4)
  void clearDevice() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $1.AttrValue> get attr => $_getMap(4);

  @$pb.TagNumber(6)
  NodeDef_ExperimentalDebugInfo get experimentalDebugInfo => $_getN(5);
  @$pb.TagNumber(6)
  set experimentalDebugInfo(NodeDef_ExperimentalDebugInfo v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasExperimentalDebugInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearExperimentalDebugInfo() => clearField(6);
  @$pb.TagNumber(6)
  NodeDef_ExperimentalDebugInfo ensureExperimentalDebugInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.FullTypeDef get experimentalType => $_getN(6);
  @$pb.TagNumber(7)
  set experimentalType($0.FullTypeDef v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasExperimentalType() => $_has(6);
  @$pb.TagNumber(7)
  void clearExperimentalType() => clearField(7);
  @$pb.TagNumber(7)
  $0.FullTypeDef ensureExperimentalType() => $_ensure(6);
}
