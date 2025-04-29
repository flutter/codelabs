//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saver.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'saver.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'saver.pbenum.dart';

/// Protocol buffer representing the configuration of a Saver.
class SaverDef extends $pb.GeneratedMessage {
  factory SaverDef({
    $core.String? filenameTensorName,
    $core.String? saveTensorName,
    $core.String? restoreOpName,
    $core.int? maxToKeep,
    $core.bool? sharded,
    $core.double? keepCheckpointEveryNHours,
    SaverDef_CheckpointFormatVersion? version,
  }) {
    final $result = create();
    if (filenameTensorName != null) {
      $result.filenameTensorName = filenameTensorName;
    }
    if (saveTensorName != null) {
      $result.saveTensorName = saveTensorName;
    }
    if (restoreOpName != null) {
      $result.restoreOpName = restoreOpName;
    }
    if (maxToKeep != null) {
      $result.maxToKeep = maxToKeep;
    }
    if (sharded != null) {
      $result.sharded = sharded;
    }
    if (keepCheckpointEveryNHours != null) {
      $result.keepCheckpointEveryNHours = keepCheckpointEveryNHours;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  SaverDef._() : super();
  factory SaverDef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaverDef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaverDef', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filenameTensorName')
    ..aOS(2, _omitFieldNames ? '' : 'saveTensorName')
    ..aOS(3, _omitFieldNames ? '' : 'restoreOpName')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'maxToKeep', $pb.PbFieldType.O3)
    ..aOB(5, _omitFieldNames ? '' : 'sharded')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'keepCheckpointEveryNHours', $pb.PbFieldType.OF)
    ..e<SaverDef_CheckpointFormatVersion>(7, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OE, defaultOrMaker: SaverDef_CheckpointFormatVersion.LEGACY, valueOf: SaverDef_CheckpointFormatVersion.valueOf, enumValues: SaverDef_CheckpointFormatVersion.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaverDef clone() => SaverDef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaverDef copyWith(void Function(SaverDef) updates) => super.copyWith((message) => updates(message as SaverDef)) as SaverDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaverDef create() => SaverDef._();
  SaverDef createEmptyInstance() => create();
  static $pb.PbList<SaverDef> createRepeated() => $pb.PbList<SaverDef>();
  @$core.pragma('dart2js:noInline')
  static SaverDef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaverDef>(create);
  static SaverDef? _defaultInstance;

  /// The name of the tensor in which to specify the filename when saving or
  /// restoring a model checkpoint.
  @$pb.TagNumber(1)
  $core.String get filenameTensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set filenameTensorName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilenameTensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilenameTensorName() => $_clearField(1);

  /// The operation to run when saving a model checkpoint.
  @$pb.TagNumber(2)
  $core.String get saveTensorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set saveTensorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaveTensorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaveTensorName() => $_clearField(2);

  /// The operation to run when restoring a model checkpoint.
  @$pb.TagNumber(3)
  $core.String get restoreOpName => $_getSZ(2);
  @$pb.TagNumber(3)
  set restoreOpName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRestoreOpName() => $_has(2);
  @$pb.TagNumber(3)
  void clearRestoreOpName() => $_clearField(3);

  /// Maximum number of checkpoints to keep.  If 0, no checkpoints are deleted.
  @$pb.TagNumber(4)
  $core.int get maxToKeep => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxToKeep($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxToKeep() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxToKeep() => $_clearField(4);

  /// Shard the save files, one per device that has Variable nodes.
  @$pb.TagNumber(5)
  $core.bool get sharded => $_getBF(4);
  @$pb.TagNumber(5)
  set sharded($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSharded() => $_has(4);
  @$pb.TagNumber(5)
  void clearSharded() => $_clearField(5);

  /// How often to keep an additional checkpoint. If not specified, only the last
  /// "max_to_keep" checkpoints are kept; if specified, in addition to keeping
  /// the last "max_to_keep" checkpoints, an additional checkpoint will be kept
  /// for every n hours of training.
  @$pb.TagNumber(6)
  $core.double get keepCheckpointEveryNHours => $_getN(5);
  @$pb.TagNumber(6)
  set keepCheckpointEveryNHours($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasKeepCheckpointEveryNHours() => $_has(5);
  @$pb.TagNumber(6)
  void clearKeepCheckpointEveryNHours() => $_clearField(6);

  @$pb.TagNumber(7)
  SaverDef_CheckpointFormatVersion get version => $_getN(6);
  @$pb.TagNumber(7)
  set version(SaverDef_CheckpointFormatVersion v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearVersion() => $_clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
