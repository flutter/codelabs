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

/// A version number that identifies a different on-disk checkpoint format.
/// Usually, each subclass of BaseSaverBuilder works with a particular
/// version/format.  However, it is possible that the same builder may be
/// upgraded to support a newer checkpoint format in the future.
class SaverDef_CheckpointFormatVersion extends $pb.ProtobufEnum {
  /// Internal legacy format.
  static const SaverDef_CheckpointFormatVersion LEGACY =
      SaverDef_CheckpointFormatVersion._(0, _omitEnumNames ? '' : 'LEGACY');

  /// Deprecated format: tf.Saver() which works with tensorflow::table::Table.
  static const SaverDef_CheckpointFormatVersion V1 =
      SaverDef_CheckpointFormatVersion._(1, _omitEnumNames ? '' : 'V1');

  /// Current format: more efficient.
  static const SaverDef_CheckpointFormatVersion V2 =
      SaverDef_CheckpointFormatVersion._(2, _omitEnumNames ? '' : 'V2');

  static const $core.List<SaverDef_CheckpointFormatVersion> values =
      <SaverDef_CheckpointFormatVersion>[
    LEGACY,
    V1,
    V2,
  ];

  static final $core.Map<$core.int, SaverDef_CheckpointFormatVersion> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SaverDef_CheckpointFormatVersion? valueOf($core.int value) =>
      _byValue[value];

  const SaverDef_CheckpointFormatVersion._(super.v, super.n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
