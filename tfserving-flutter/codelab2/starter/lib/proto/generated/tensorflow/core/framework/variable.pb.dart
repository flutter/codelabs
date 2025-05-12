//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/variable.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'variable.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'variable.pbenum.dart';

/// Protocol buffer representing a Variable.
class VariableDef extends $pb.GeneratedMessage {
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
    final $result = create();
    if (variableName != null) {
      $result.variableName = variableName;
    }
    if (initializerName != null) {
      $result.initializerName = initializerName;
    }
    if (snapshotName != null) {
      $result.snapshotName = snapshotName;
    }
    if (saveSliceInfoDef != null) {
      $result.saveSliceInfoDef = saveSliceInfoDef;
    }
    if (isResource != null) {
      $result.isResource = isResource;
    }
    if (initialValueName != null) {
      $result.initialValueName = initialValueName;
    }
    if (trainable != null) {
      $result.trainable = trainable;
    }
    if (synchronization != null) {
      $result.synchronization = synchronization;
    }
    if (aggregation != null) {
      $result.aggregation = aggregation;
    }
    return $result;
  }
  VariableDef._() : super();
  factory VariableDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VariableDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariableDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'variableName')
    ..aOS(2, _omitFieldNames ? '' : 'initializerName')
    ..aOS(3, _omitFieldNames ? '' : 'snapshotName')
    ..aOM<SaveSliceInfoDef>(4, _omitFieldNames ? '' : 'saveSliceInfoDef',
        subBuilder: SaveSliceInfoDef.create)
    ..aOB(5, _omitFieldNames ? '' : 'isResource')
    ..aOS(6, _omitFieldNames ? '' : 'initialValueName')
    ..aOB(7, _omitFieldNames ? '' : 'trainable')
    ..e<VariableSynchronization>(
        8, _omitFieldNames ? '' : 'synchronization', $pb.PbFieldType.OE,
        defaultOrMaker: VariableSynchronization.VARIABLE_SYNCHRONIZATION_AUTO,
        valueOf: VariableSynchronization.valueOf,
        enumValues: VariableSynchronization.values)
    ..e<VariableAggregation>(
        9, _omitFieldNames ? '' : 'aggregation', $pb.PbFieldType.OE,
        defaultOrMaker: VariableAggregation.VARIABLE_AGGREGATION_NONE,
        valueOf: VariableAggregation.valueOf,
        enumValues: VariableAggregation.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VariableDef clone() => VariableDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VariableDef copyWith(void Function(VariableDef) updates) =>
      super.copyWith((message) => updates(message as VariableDef))
          as VariableDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableDef create() => VariableDef._();
  VariableDef createEmptyInstance() => create();
  static $pb.PbList<VariableDef> createRepeated() => $pb.PbList<VariableDef>();
  @$core.pragma('dart2js:noInline')
  static VariableDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariableDef>(create);
  static VariableDef? _defaultInstance;

  /// Name of the variable tensor.
  @$pb.TagNumber(1)
  $core.String get variableName => $_getSZ(0);
  @$pb.TagNumber(1)
  set variableName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVariableName() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariableName() => $_clearField(1);

  /// Name of the initializer op.
  @$pb.TagNumber(2)
  $core.String get initializerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set initializerName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInitializerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitializerName() => $_clearField(2);

  /// Name of the snapshot tensor.
  @$pb.TagNumber(3)
  $core.String get snapshotName => $_getSZ(2);
  @$pb.TagNumber(3)
  set snapshotName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSnapshotName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshotName() => $_clearField(3);

  /// Support for saving variables as slices of a larger variable.
  @$pb.TagNumber(4)
  SaveSliceInfoDef get saveSliceInfoDef => $_getN(3);
  @$pb.TagNumber(4)
  set saveSliceInfoDef(SaveSliceInfoDef v) {
    $_setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSaveSliceInfoDef() => $_has(3);
  @$pb.TagNumber(4)
  void clearSaveSliceInfoDef() => $_clearField(4);
  @$pb.TagNumber(4)
  SaveSliceInfoDef ensureSaveSliceInfoDef() => $_ensure(3);

  /// Whether to represent this as a ResourceVariable.
  @$pb.TagNumber(5)
  $core.bool get isResource => $_getBF(4);
  @$pb.TagNumber(5)
  set isResource($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsResource() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsResource() => $_clearField(5);

  /// Name of the tensor holding the variable's initial value.
  @$pb.TagNumber(6)
  $core.String get initialValueName => $_getSZ(5);
  @$pb.TagNumber(6)
  set initialValueName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasInitialValueName() => $_has(5);
  @$pb.TagNumber(6)
  void clearInitialValueName() => $_clearField(6);

  /// Whether this variable should be trained.
  @$pb.TagNumber(7)
  $core.bool get trainable => $_getBF(6);
  @$pb.TagNumber(7)
  set trainable($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasTrainable() => $_has(6);
  @$pb.TagNumber(7)
  void clearTrainable() => $_clearField(7);

  /// Indicates when a distributed variable will be synced.
  @$pb.TagNumber(8)
  VariableSynchronization get synchronization => $_getN(7);
  @$pb.TagNumber(8)
  set synchronization(VariableSynchronization v) {
    $_setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSynchronization() => $_has(7);
  @$pb.TagNumber(8)
  void clearSynchronization() => $_clearField(8);

  /// Indicates how a distributed variable will be aggregated.
  @$pb.TagNumber(9)
  VariableAggregation get aggregation => $_getN(8);
  @$pb.TagNumber(9)
  set aggregation(VariableAggregation v) {
    $_setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAggregation() => $_has(8);
  @$pb.TagNumber(9)
  void clearAggregation() => $_clearField(9);
}

class SaveSliceInfoDef extends $pb.GeneratedMessage {
  factory SaveSliceInfoDef({
    $core.String? fullName,
    $core.Iterable<$fixnum.Int64>? fullShape,
    $core.Iterable<$fixnum.Int64>? varOffset,
    $core.Iterable<$fixnum.Int64>? varShape,
  }) {
    final $result = create();
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (fullShape != null) {
      $result.fullShape.addAll(fullShape);
    }
    if (varOffset != null) {
      $result.varOffset.addAll(varOffset);
    }
    if (varShape != null) {
      $result.varShape.addAll(varShape);
    }
    return $result;
  }
  SaveSliceInfoDef._() : super();
  factory SaveSliceInfoDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaveSliceInfoDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SaveSliceInfoDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fullName')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'fullShape', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'varOffset', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'varShape', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SaveSliceInfoDef clone() => SaveSliceInfoDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SaveSliceInfoDef copyWith(void Function(SaveSliceInfoDef) updates) =>
      super.copyWith((message) => updates(message as SaveSliceInfoDef))
          as SaveSliceInfoDef;

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

  /// Name of the full variable of which this is a slice.
  @$pb.TagNumber(1)
  $core.String get fullName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFullName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullName() => $_clearField(1);

  /// Shape of the full variable.
  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get fullShape => $_getList(1);

  /// Offset of this variable into the full variable.
  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get varOffset => $_getList(2);

  /// Shape of this variable.
  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get varShape => $_getList(3);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
