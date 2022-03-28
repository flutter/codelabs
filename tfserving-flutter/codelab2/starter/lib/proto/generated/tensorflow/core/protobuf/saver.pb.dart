///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'saver.pbenum.dart';

export 'saver.pbenum.dart';

class SaverDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SaverDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filenameTensorName')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'saveTensorName')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'restoreOpName')
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxToKeep',
        $pb.PbFieldType.O3)
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sharded')
    ..a<$core.double>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'keepCheckpointEveryNHours',
        $pb.PbFieldType.OF)
    ..e<SaverDef_CheckpointFormatVersion>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        $pb.PbFieldType.OE,
        defaultOrMaker: SaverDef_CheckpointFormatVersion.LEGACY,
        valueOf: SaverDef_CheckpointFormatVersion.valueOf,
        enumValues: SaverDef_CheckpointFormatVersion.values)
    ..hasRequiredFields = false;

  SaverDef._() : super();
  factory SaverDef({
    $core.String? filenameTensorName,
    $core.String? saveTensorName,
    $core.String? restoreOpName,
    $core.int? maxToKeep,
    $core.bool? sharded,
    $core.double? keepCheckpointEveryNHours,
    SaverDef_CheckpointFormatVersion? version,
  }) {
    final _result = create();
    if (filenameTensorName != null) {
      _result.filenameTensorName = filenameTensorName;
    }
    if (saveTensorName != null) {
      _result.saveTensorName = saveTensorName;
    }
    if (restoreOpName != null) {
      _result.restoreOpName = restoreOpName;
    }
    if (maxToKeep != null) {
      _result.maxToKeep = maxToKeep;
    }
    if (sharded != null) {
      _result.sharded = sharded;
    }
    if (keepCheckpointEveryNHours != null) {
      _result.keepCheckpointEveryNHours = keepCheckpointEveryNHours;
    }
    if (version != null) {
      _result.version = version;
    }
    return _result;
  }
  factory SaverDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SaverDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SaverDef clone() => SaverDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SaverDef copyWith(void Function(SaverDef) updates) =>
      super.copyWith((message) => updates(message as SaverDef))
          as SaverDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaverDef create() => SaverDef._();
  SaverDef createEmptyInstance() => create();
  static $pb.PbList<SaverDef> createRepeated() => $pb.PbList<SaverDef>();
  @$core.pragma('dart2js:noInline')
  static SaverDef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaverDef>(create);
  static SaverDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filenameTensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set filenameTensorName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilenameTensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilenameTensorName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get saveTensorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set saveTensorName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSaveTensorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaveTensorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get restoreOpName => $_getSZ(2);
  @$pb.TagNumber(3)
  set restoreOpName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRestoreOpName() => $_has(2);
  @$pb.TagNumber(3)
  void clearRestoreOpName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxToKeep => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxToKeep($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMaxToKeep() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxToKeep() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get sharded => $_getBF(4);
  @$pb.TagNumber(5)
  set sharded($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSharded() => $_has(4);
  @$pb.TagNumber(5)
  void clearSharded() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get keepCheckpointEveryNHours => $_getN(5);
  @$pb.TagNumber(6)
  set keepCheckpointEveryNHours($core.double v) {
    $_setFloat(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasKeepCheckpointEveryNHours() => $_has(5);
  @$pb.TagNumber(6)
  void clearKeepCheckpointEveryNHours() => clearField(6);

  @$pb.TagNumber(7)
  SaverDef_CheckpointFormatVersion get version => $_getN(6);
  @$pb.TagNumber(7)
  set version(SaverDef_CheckpointFormatVersion v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearVersion() => clearField(7);
}
