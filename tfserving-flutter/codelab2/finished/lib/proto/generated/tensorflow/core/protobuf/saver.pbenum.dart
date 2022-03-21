///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SaverDef_CheckpointFormatVersion extends $pb.ProtobufEnum {
  static const SaverDef_CheckpointFormatVersion LEGACY =
      SaverDef_CheckpointFormatVersion._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'LEGACY');
  static const SaverDef_CheckpointFormatVersion V1 =
      SaverDef_CheckpointFormatVersion._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'V1');
  static const SaverDef_CheckpointFormatVersion V2 =
      SaverDef_CheckpointFormatVersion._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'V2');

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

  const SaverDef_CheckpointFormatVersion._($core.int v, $core.String n)
      : super(v, n);
}
