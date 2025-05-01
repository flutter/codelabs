//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saver.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use saverDefDescriptor instead')
const SaverDef$json = {
  '1': 'SaverDef',
  '2': [
    {'1': 'filename_tensor_name', '3': 1, '4': 1, '5': 9, '10': 'filenameTensorName'},
    {'1': 'save_tensor_name', '3': 2, '4': 1, '5': 9, '10': 'saveTensorName'},
    {'1': 'restore_op_name', '3': 3, '4': 1, '5': 9, '10': 'restoreOpName'},
    {'1': 'max_to_keep', '3': 4, '4': 1, '5': 5, '10': 'maxToKeep'},
    {'1': 'sharded', '3': 5, '4': 1, '5': 8, '10': 'sharded'},
    {'1': 'keep_checkpoint_every_n_hours', '3': 6, '4': 1, '5': 2, '10': 'keepCheckpointEveryNHours'},
    {'1': 'version', '3': 7, '4': 1, '5': 14, '6': '.tensorflow.SaverDef.CheckpointFormatVersion', '10': 'version'},
  ],
  '4': [SaverDef_CheckpointFormatVersion$json],
};

@$core.Deprecated('Use saverDefDescriptor instead')
const SaverDef_CheckpointFormatVersion$json = {
  '1': 'CheckpointFormatVersion',
  '2': [
    {'1': 'LEGACY', '2': 0},
    {'1': 'V1', '2': 1},
    {'1': 'V2', '2': 2},
  ],
};

/// Descriptor for `SaverDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saverDefDescriptor = $convert.base64Decode(
    'CghTYXZlckRlZhIwChRmaWxlbmFtZV90ZW5zb3JfbmFtZRgBIAEoCVISZmlsZW5hbWVUZW5zb3'
    'JOYW1lEigKEHNhdmVfdGVuc29yX25hbWUYAiABKAlSDnNhdmVUZW5zb3JOYW1lEiYKD3Jlc3Rv'
    'cmVfb3BfbmFtZRgDIAEoCVINcmVzdG9yZU9wTmFtZRIeCgttYXhfdG9fa2VlcBgEIAEoBVIJbW'
    'F4VG9LZWVwEhgKB3NoYXJkZWQYBSABKAhSB3NoYXJkZWQSQAoda2VlcF9jaGVja3BvaW50X2V2'
    'ZXJ5X25faG91cnMYBiABKAJSGWtlZXBDaGVja3BvaW50RXZlcnlOSG91cnMSRgoHdmVyc2lvbh'
    'gHIAEoDjIsLnRlbnNvcmZsb3cuU2F2ZXJEZWYuQ2hlY2twb2ludEZvcm1hdFZlcnNpb25SB3Zl'
    'cnNpb24iNQoXQ2hlY2twb2ludEZvcm1hdFZlcnNpb24SCgoGTEVHQUNZEAASBgoCVjEQARIGCg'
    'JWMhAC');

