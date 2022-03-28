///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saver.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use saverDefDescriptor instead')
const SaverDef$json = const {
  '1': 'SaverDef',
  '2': const [
    const {
      '1': 'filename_tensor_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'filenameTensorName'
    },
    const {
      '1': 'save_tensor_name',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'saveTensorName'
    },
    const {
      '1': 'restore_op_name',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'restoreOpName'
    },
    const {'1': 'max_to_keep', '3': 4, '4': 1, '5': 5, '10': 'maxToKeep'},
    const {'1': 'sharded', '3': 5, '4': 1, '5': 8, '10': 'sharded'},
    const {
      '1': 'keep_checkpoint_every_n_hours',
      '3': 6,
      '4': 1,
      '5': 2,
      '10': 'keepCheckpointEveryNHours'
    },
    const {
      '1': 'version',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.SaverDef.CheckpointFormatVersion',
      '10': 'version'
    },
  ],
  '4': const [SaverDef_CheckpointFormatVersion$json],
};

@$core.Deprecated('Use saverDefDescriptor instead')
const SaverDef_CheckpointFormatVersion$json = const {
  '1': 'CheckpointFormatVersion',
  '2': const [
    const {'1': 'LEGACY', '2': 0},
    const {'1': 'V1', '2': 1},
    const {'1': 'V2', '2': 2},
  ],
};

/// Descriptor for `SaverDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saverDefDescriptor = $convert.base64Decode(
    'CghTYXZlckRlZhIwChRmaWxlbmFtZV90ZW5zb3JfbmFtZRgBIAEoCVISZmlsZW5hbWVUZW5zb3JOYW1lEigKEHNhdmVfdGVuc29yX25hbWUYAiABKAlSDnNhdmVUZW5zb3JOYW1lEiYKD3Jlc3RvcmVfb3BfbmFtZRgDIAEoCVINcmVzdG9yZU9wTmFtZRIeCgttYXhfdG9fa2VlcBgEIAEoBVIJbWF4VG9LZWVwEhgKB3NoYXJkZWQYBSABKAhSB3NoYXJkZWQSQAoda2VlcF9jaGVja3BvaW50X2V2ZXJ5X25faG91cnMYBiABKAJSGWtlZXBDaGVja3BvaW50RXZlcnlOSG91cnMSRgoHdmVyc2lvbhgHIAEoDjIsLnRlbnNvcmZsb3cuU2F2ZXJEZWYuQ2hlY2twb2ludEZvcm1hdFZlcnNpb25SB3ZlcnNpb24iNQoXQ2hlY2twb2ludEZvcm1hdFZlcnNpb24SCgoGTEVHQUNZEAASBgoCVjEQARIGCgJWMhAC');
