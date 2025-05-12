//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/resource_handle.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resourceHandleProtoDescriptor instead')
const ResourceHandleProto$json = {
  '1': 'ResourceHandleProto',
  '2': [
    {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    {'1': 'container', '3': 2, '4': 1, '5': 9, '10': 'container'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'hash_code', '3': 4, '4': 1, '5': 4, '10': 'hashCode'},
    {'1': 'maybe_type_name', '3': 5, '4': 1, '5': 9, '10': 'maybeTypeName'},
    {
      '1': 'dtypes_and_shapes',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.ResourceHandleProto.DtypeAndShape',
      '10': 'dtypesAndShapes'
    },
  ],
  '3': [ResourceHandleProto_DtypeAndShape$json],
  '9': [
    {'1': 7, '2': 8},
  ],
};

@$core.Deprecated('Use resourceHandleProtoDescriptor instead')
const ResourceHandleProto_DtypeAndShape$json = {
  '1': 'DtypeAndShape',
  '2': [
    {
      '1': 'dtype',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
    {
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
    'ChNSZXNvdXJjZUhhbmRsZVByb3RvEhYKBmRldmljZRgBIAEoCVIGZGV2aWNlEhwKCWNvbnRhaW'
    '5lchgCIAEoCVIJY29udGFpbmVyEhIKBG5hbWUYAyABKAlSBG5hbWUSGwoJaGFzaF9jb2RlGAQg'
    'ASgEUghoYXNoQ29kZRImCg9tYXliZV90eXBlX25hbWUYBSABKAlSDW1heWJlVHlwZU5hbWUSWQ'
    'oRZHR5cGVzX2FuZF9zaGFwZXMYBiADKAsyLS50ZW5zb3JmbG93LlJlc291cmNlSGFuZGxlUHJv'
    'dG8uRHR5cGVBbmRTaGFwZVIPZHR5cGVzQW5kU2hhcGVzGm8KDUR0eXBlQW5kU2hhcGUSKgoFZH'
    'R5cGUYASABKA4yFC50ZW5zb3JmbG93LkRhdGFUeXBlUgVkdHlwZRIyCgVzaGFwZRgCIAEoCzIc'
    'LnRlbnNvcmZsb3cuVGVuc29yU2hhcGVQcm90b1IFc2hhcGVKBAgHEAg=');
