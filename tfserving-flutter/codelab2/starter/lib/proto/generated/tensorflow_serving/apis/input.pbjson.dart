///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/input.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use exampleListDescriptor instead')
const ExampleList$json = const {
  '1': 'ExampleList',
  '2': const [
    const {
      '1': 'examples',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.Example',
      '10': 'examples'
    },
  ],
};

/// Descriptor for `ExampleList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exampleListDescriptor = $convert.base64Decode(
    'CgtFeGFtcGxlTGlzdBIvCghleGFtcGxlcxgBIAMoCzITLnRlbnNvcmZsb3cuRXhhbXBsZVIIZXhhbXBsZXM=');
@$core.Deprecated('Use exampleListWithContextDescriptor instead')
const ExampleListWithContext$json = const {
  '1': 'ExampleListWithContext',
  '2': const [
    const {
      '1': 'examples',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.Example',
      '10': 'examples'
    },
    const {
      '1': 'context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.Example',
      '10': 'context'
    },
  ],
};

/// Descriptor for `ExampleListWithContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exampleListWithContextDescriptor =
    $convert.base64Decode(
        'ChZFeGFtcGxlTGlzdFdpdGhDb250ZXh0Ei8KCGV4YW1wbGVzGAEgAygLMhMudGVuc29yZmxvdy5FeGFtcGxlUghleGFtcGxlcxItCgdjb250ZXh0GAIgASgLMhMudGVuc29yZmxvdy5FeGFtcGxlUgdjb250ZXh0');
@$core.Deprecated('Use inputDescriptor instead')
const Input$json = const {
  '1': 'Input',
  '2': const [
    const {
      '1': 'example_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ExampleList',
      '8': const {'5': true},
      '9': 0,
      '10': 'exampleList',
    },
    const {
      '1': 'example_list_with_context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ExampleListWithContext',
      '8': const {'5': true},
      '9': 0,
      '10': 'exampleListWithContext',
    },
  ],
  '8': const [
    const {'1': 'kind'},
  ],
};

/// Descriptor for `Input`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputDescriptor = $convert.base64Decode(
    'CgVJbnB1dBJICgxleGFtcGxlX2xpc3QYASABKAsyHy50ZW5zb3JmbG93LnNlcnZpbmcuRXhhbXBsZUxpc3RCAigBSABSC2V4YW1wbGVMaXN0EmsKGWV4YW1wbGVfbGlzdF93aXRoX2NvbnRleHQYAiABKAsyKi50ZW5zb3JmbG93LnNlcnZpbmcuRXhhbXBsZUxpc3RXaXRoQ29udGV4dEICKAFIAFIWZXhhbXBsZUxpc3RXaXRoQ29udGV4dEIGCgRraW5k');
