///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/variable.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'variable.pbenum.dart';

export 'variable.pbenum.dart';

class VariableDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VariableDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'variableName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'initializerName')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'snapshotName')
    ..aOM<SaveSliceInfoDef>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'saveSliceInfoDef',
        subBuilder: SaveSliceInfoDef.create)
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isResource')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'initialValueName')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'trainable')
    ..e<VariableSynchronization>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'synchronization',
        $pb.PbFieldType.OE,
        defaultOrMaker: VariableSynchronization.VARIABLE_SYNCHRONIZATION_AUTO,
        valueOf: VariableSynchronization.valueOf,
        enumValues: VariableSynchronization.values)
    ..e<VariableAggregation>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'aggregation',
        $pb.PbFieldType.OE,
        defaultOrMaker: VariableAggregation.VARIABLE_AGGREGATION_NONE,
        valueOf: VariableAggregation.valueOf,
        enumValues: VariableAggregation.values)
    ..hasRequiredFields = false;

  VariableDef._() : super();
  factory VariableDef({
    $core.String? variableName,
    $core.String? initializerName,
    $core.String? snapshotName,
    SaveSliceInfoDef? saveSliceInfoDef,
    $core.bool? isResource,
    $core.String? initialValueName,
    $core.bool? trainable,
    VariableSynchronization? synchronization,
    VariableAggregation? aggregation,
  }) {
    final _result = create();
    if (variableName != null) {
      _result.variableName = variableName;
    }
    if (initializerName != null) {
      _result.initializerName = initializerName;
    }
    if (snapshotName != null) {
      _result.snapshotName = snapshotName;
    }
    if (saveSliceInfoDef != null) {
      _result.saveSliceInfoDef = saveSliceInfoDef;
    }
    if (isResource != null) {
      _result.isResource = isResource;
    }
    if (initialValueName != null) {
      _result.initialValueName = initialValueName;
    }
    if (trainable != null) {
      _result.trainable = trainable;
    }
    if (synchronization != null) {
      _result.synchronization = synchronization;
    }
    if (aggregation != null) {
      _result.aggregation = aggregation;
    }
    return _result;
  }
  factory VariableDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VariableDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VariableDef clone() => VariableDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VariableDef copyWith(void Function(VariableDef) updates) =>
      super.copyWith((message) => updates(message as VariableDef))
          as VariableDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VariableDef create() => VariableDef._();
  VariableDef createEmptyInstance() => create();
  static $pb.PbList<VariableDef> createRepeated() => $pb.PbList<VariableDef>();
  @$core.pragma('dart2js:noInline')
  static VariableDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariableDef>(create);
  static VariableDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get variableName => $_getSZ(0);
  @$pb.TagNumber(1)
  set variableName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVariableName() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariableName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get initializerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set initializerName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInitializerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitializerName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get snapshotName => $_getSZ(2);
  @$pb.TagNumber(3)
  set snapshotName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSnapshotName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshotName() => clearField(3);

  @$pb.TagNumber(4)
  SaveSliceInfoDef get saveSliceInfoDef => $_getN(3);
  @$pb.TagNumber(4)
  set saveSliceInfoDef(SaveSliceInfoDef v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSaveSliceInfoDef() => $_has(3);
  @$pb.TagNumber(4)
  void clearSaveSliceInfoDef() => clearField(4);
  @$pb.TagNumber(4)
  SaveSliceInfoDef ensureSaveSliceInfoDef() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get isResource => $_getBF(4);
  @$pb.TagNumber(5)
  set isResource($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsResource() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsResource() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get initialValueName => $_getSZ(5);
  @$pb.TagNumber(6)
  set initialValueName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasInitialValueName() => $_has(5);
  @$pb.TagNumber(6)
  void clearInitialValueName() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get trainable => $_getBF(6);
  @$pb.TagNumber(7)
  set trainable($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasTrainable() => $_has(6);
  @$pb.TagNumber(7)
  void clearTrainable() => clearField(7);

  @$pb.TagNumber(8)
  VariableSynchronization get synchronization => $_getN(7);
  @$pb.TagNumber(8)
  set synchronization(VariableSynchronization v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSynchronization() => $_has(7);
  @$pb.TagNumber(8)
  void clearSynchronization() => clearField(8);

  @$pb.TagNumber(9)
  VariableAggregation get aggregation => $_getN(8);
  @$pb.TagNumber(9)
  set aggregation(VariableAggregation v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAggregation() => $_has(8);
  @$pb.TagNumber(9)
  void clearAggregation() => clearField(9);
}

class SaveSliceInfoDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SaveSliceInfoDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fullName')
    ..p<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fullShape',
        $pb.PbFieldType.P6)
    ..p<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'varOffset',
        $pb.PbFieldType.P6)
    ..p<$fixnum.Int64>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'varShape',
        $pb.PbFieldType.P6)
    ..hasRequiredFields = false;

  SaveSliceInfoDef._() : super();
  factory SaveSliceInfoDef({
    $core.String? fullName,
    $core.Iterable<$fixnum.Int64>? fullShape,
    $core.Iterable<$fixnum.Int64>? varOffset,
    $core.Iterable<$fixnum.Int64>? varShape,
  }) {
    final _result = create();
    if (fullName != null) {
      _result.fullName = fullName;
    }
    if (fullShape != null) {
      _result.fullShape.addAll(fullShape);
    }
    if (varOffset != null) {
      _result.varOffset.addAll(varOffset);
    }
    if (varShape != null) {
      _result.varShape.addAll(varShape);
    }
    return _result;
  }
  factory SaveSliceInfoDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaveSliceInfoDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SaveSliceInfoDef clone() => SaveSliceInfoDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SaveSliceInfoDef copyWith(void Function(SaveSliceInfoDef) updates) =>
      super.copyWith((message) => updates(message as SaveSliceInfoDef))
          as SaveSliceInfoDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveSliceInfoDef create() => SaveSliceInfoDef._();
  SaveSliceInfoDef createEmptyInstance() => create();
  static $pb.PbList<SaveSliceInfoDef> createRepeated() =>
      $pb.PbList<SaveSliceInfoDef>();
  @$core.pragma('dart2js:noInline')
  static SaveSliceInfoDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SaveSliceInfoDef>(create);
  static SaveSliceInfoDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFullName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get fullShape => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get varOffset => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get varShape => $_getList(3);
}
