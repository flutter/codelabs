///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/tensor_shape.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use tensorShapeProtoDescriptor instead')
const TensorShapeProto$json = const {
  '1': 'TensorShapeProto',
  '2': const [
    const {
      '1': 'dim',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto.Dim',
      '10': 'dim'
    },
    const {'1': 'unknown_rank', '3': 3, '4': 1, '5': 8, '10': 'unknownRank'},
  ],
  '3': const [TensorShapeProto_Dim$json],
};

@$core.Deprecated('Use tensorShapeProtoDescriptor instead')
const TensorShapeProto_Dim$json = const {
  '1': 'Dim',
  '2': const [
    const {'1': 'size', '3': 1, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TensorShapeProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tensorShapeProtoDescriptor = $convert.base64Decode(
    'ChBUZW5zb3JTaGFwZVByb3RvEjIKA2RpbRgCIAMoCzIgLnRlbnNvcmZsb3cuVGVuc29yU2hhcGVQcm90by5EaW1SA2RpbRIhCgx1bmtub3duX3JhbmsYAyABKAhSC3Vua25vd25SYW5rGi0KA0RpbRISCgRzaXplGAEgASgDUgRzaXplEhIKBG5hbWUYAiABKAlSBG5hbWU=');
