//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/tensor_shape.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use tensorShapeProtoDescriptor instead')
const TensorShapeProto$json = {
  '1': 'TensorShapeProto',
  '2': [
    {'1': 'dim', '3': 2, '4': 3, '5': 11, '6': '.tensorflow.TensorShapeProto.Dim', '10': 'dim'},
    {'1': 'unknown_rank', '3': 3, '4': 1, '5': 8, '10': 'unknownRank'},
  ],
  '3': [TensorShapeProto_Dim$json],
};

@$core.Deprecated('Use tensorShapeProtoDescriptor instead')
const TensorShapeProto_Dim$json = {
  '1': 'Dim',
  '2': [
    {'1': 'size', '3': 1, '4': 1, '5': 3, '10': 'size'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TensorShapeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tensorShapeProtoDescriptor = $convert.base64Decode(
    'ChBUZW5zb3JTaGFwZVByb3RvEjIKA2RpbRgCIAMoCzIgLnRlbnNvcmZsb3cuVGVuc29yU2hhcG'
    'VQcm90by5EaW1SA2RpbRIhCgx1bmtub3duX3JhbmsYAyABKAhSC3Vua25vd25SYW5rGi0KA0Rp'
    'bRISCgRzaXplGAEgASgDUgRzaXplEhIKBG5hbWUYAiABKAlSBG5hbWU=');

