//
//  Generated code. Do not modify.
//  source: tensorflow/core/example/example.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use exampleDescriptor instead')
const Example$json = {
  '1': 'Example',
  '2': [
    {'1': 'features', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.Features', '10': 'features'},
  ],
};

/// Descriptor for `Example`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exampleDescriptor = $convert.base64Decode(
    'CgdFeGFtcGxlEjAKCGZlYXR1cmVzGAEgASgLMhQudGVuc29yZmxvdy5GZWF0dXJlc1IIZmVhdH'
    'VyZXM=');

@$core.Deprecated('Use sequenceExampleDescriptor instead')
const SequenceExample$json = {
  '1': 'SequenceExample',
  '2': [
    {'1': 'context', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.Features', '10': 'context'},
    {'1': 'feature_lists', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.FeatureLists', '10': 'featureLists'},
  ],
};

/// Descriptor for `SequenceExample`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceExampleDescriptor = $convert.base64Decode(
    'Cg9TZXF1ZW5jZUV4YW1wbGUSLgoHY29udGV4dBgBIAEoCzIULnRlbnNvcmZsb3cuRmVhdHVyZX'
    'NSB2NvbnRleHQSPQoNZmVhdHVyZV9saXN0cxgCIAEoCzIYLnRlbnNvcmZsb3cuRmVhdHVyZUxp'
    'c3RzUgxmZWF0dXJlTGlzdHM=');

