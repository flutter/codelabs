///
//  Generated code. Do not modify.
//  source: tensorflow/core/example/example.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use exampleDescriptor instead')
const Example$json = const {
  '1': 'Example',
  '2': const [
    const {
      '1': 'features',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.Features',
      '10': 'features'
    },
  ],
};

/// Descriptor for `Example`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exampleDescriptor = $convert.base64Decode(
    'CgdFeGFtcGxlEjAKCGZlYXR1cmVzGAEgASgLMhQudGVuc29yZmxvdy5GZWF0dXJlc1IIZmVhdHVyZXM=');
@$core.Deprecated('Use sequenceExampleDescriptor instead')
const SequenceExample$json = const {
  '1': 'SequenceExample',
  '2': const [
    const {
      '1': 'context',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.Features',
      '10': 'context'
    },
    const {
      '1': 'feature_lists',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FeatureLists',
      '10': 'featureLists'
    },
  ],
};

/// Descriptor for `SequenceExample`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sequenceExampleDescriptor = $convert.base64Decode(
    'Cg9TZXF1ZW5jZUV4YW1wbGUSLgoHY29udGV4dBgBIAEoCzIULnRlbnNvcmZsb3cuRmVhdHVyZXNSB2NvbnRleHQSPQoNZmVhdHVyZV9saXN0cxgCIAEoCzIYLnRlbnNvcmZsb3cuRmVhdHVyZUxpc3RzUgxmZWF0dXJlTGlzdHM=');
