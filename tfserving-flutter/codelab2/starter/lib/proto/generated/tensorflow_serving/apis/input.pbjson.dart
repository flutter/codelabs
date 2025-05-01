//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/input.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use exampleListDescriptor instead')
const ExampleList$json = {
  '1': 'ExampleList',
  '2': [
    {'1': 'examples', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.Example', '10': 'examples'},
  ],
};

/// Descriptor for `ExampleList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exampleListDescriptor = $convert.base64Decode(
    'CgtFeGFtcGxlTGlzdBIvCghleGFtcGxlcxgBIAMoCzITLnRlbnNvcmZsb3cuRXhhbXBsZVIIZX'
    'hhbXBsZXM=');

@$core.Deprecated('Use exampleListWithContextDescriptor instead')
const ExampleListWithContext$json = {
  '1': 'ExampleListWithContext',
  '2': [
    {'1': 'examples', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.Example', '10': 'examples'},
    {'1': 'context', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.Example', '10': 'context'},
  ],
};

/// Descriptor for `ExampleListWithContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exampleListWithContextDescriptor = $convert.base64Decode(
    'ChZFeGFtcGxlTGlzdFdpdGhDb250ZXh0Ei8KCGV4YW1wbGVzGAEgAygLMhMudGVuc29yZmxvdy'
    '5FeGFtcGxlUghleGFtcGxlcxItCgdjb250ZXh0GAIgASgLMhMudGVuc29yZmxvdy5FeGFtcGxl'
    'Ugdjb250ZXh0');

@$core.Deprecated('Use inputDescriptor instead')
const Input$json = {
  '1': 'Input',
  '2': [
    {
      '1': 'example_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ExampleList',
      '8': {'5': true},
      '9': 0,
      '10': 'exampleList',
    },
    {
      '1': 'example_list_with_context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ExampleListWithContext',
      '8': {'5': true},
      '9': 0,
      '10': 'exampleListWithContext',
    },
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `Input`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputDescriptor = $convert.base64Decode(
    'CgVJbnB1dBJICgxleGFtcGxlX2xpc3QYASABKAsyHy50ZW5zb3JmbG93LnNlcnZpbmcuRXhhbX'
    'BsZUxpc3RCAigBSABSC2V4YW1wbGVMaXN0EmsKGWV4YW1wbGVfbGlzdF93aXRoX2NvbnRleHQY'
    'AiABKAsyKi50ZW5zb3JmbG93LnNlcnZpbmcuRXhhbXBsZUxpc3RXaXRoQ29udGV4dEICKAFIAF'
    'IWZXhhbXBsZUxpc3RXaXRoQ29udGV4dEIGCgRraW5k');

