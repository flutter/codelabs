///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/resource_handle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resourceHandleProtoDescriptor instead')
const ResourceHandleProto$json = const {
  '1': 'ResourceHandleProto',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'container', '3': 2, '4': 1, '5': 9, '10': 'container'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'hash_code', '3': 4, '4': 1, '5': 4, '10': 'hashCode'},
    const {
      '1': 'maybe_type_name',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'maybeTypeName'
    },
    const {
      '1': 'dtypes_and_shapes',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.ResourceHandleProto.DtypeAndShape',
      '10': 'dtypesAndShapes'
    },
  ],
  '3': const [ResourceHandleProto_DtypeAndShape$json],
  '9': const [
    const {'1': 7, '2': 8},
  ],
};

@$core.Deprecated('Use resourceHandleProtoDescriptor instead')
const ResourceHandleProto_DtypeAndShape$json = const {
  '1': 'DtypeAndShape',
  '2': const [
    const {
      '1': 'dtype',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
    const {
      '1': 'shape',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
  ],
};

/// Descriptor for `ResourceHandleProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceHandleProtoDescriptor = $convert.base64Decode(
    'ChNSZXNvdXJjZUhhbmRsZVByb3RvEhYKBmRldmljZRgBIAEoCVIGZGV2aWNlEhwKCWNvbnRhaW5lchgCIAEoCVIJY29udGFpbmVyEhIKBG5hbWUYAyABKAlSBG5hbWUSGwoJaGFzaF9jb2RlGAQgASgEUghoYXNoQ29kZRImCg9tYXliZV90eXBlX25hbWUYBSABKAlSDW1heWJlVHlwZU5hbWUSWQoRZHR5cGVzX2FuZF9zaGFwZXMYBiADKAsyLS50ZW5zb3JmbG93LlJlc291cmNlSGFuZGxlUHJvdG8uRHR5cGVBbmRTaGFwZVIPZHR5cGVzQW5kU2hhcGVzGm8KDUR0eXBlQW5kU2hhcGUSKgoFZHR5cGUYASABKA4yFC50ZW5zb3JmbG93LkRhdGFUeXBlUgVkdHlwZRIyCgVzaGFwZRgCIAEoCzIcLnRlbnNvcmZsb3cuVGVuc29yU2hhcGVQcm90b1IFc2hhcGVKBAgHEAg=');
