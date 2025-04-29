//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/regression.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use regressionDescriptor instead')
const Regression$json = {
  '1': 'Regression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `Regression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionDescriptor = $convert.base64Decode(
    'CgpSZWdyZXNzaW9uEhQKBXZhbHVlGAEgASgCUgV2YWx1ZQ==');

@$core.Deprecated('Use regressionResultDescriptor instead')
const RegressionResult$json = {
  '1': 'RegressionResult',
  '2': [
    {'1': 'regressions', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.serving.Regression', '10': 'regressions'},
  ],
};

/// Descriptor for `RegressionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionResultDescriptor = $convert.base64Decode(
    'ChBSZWdyZXNzaW9uUmVzdWx0EkAKC3JlZ3Jlc3Npb25zGAEgAygLMh4udGVuc29yZmxvdy5zZX'
    'J2aW5nLlJlZ3Jlc3Npb25SC3JlZ3Jlc3Npb25z');

@$core.Deprecated('Use regressionRequestDescriptor instead')
const RegressionRequest$json = {
  '1': 'RegressionRequest',
  '2': [
    {'1': 'model_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'input', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.serving.Input', '10': 'input'},
  ],
};

/// Descriptor for `RegressionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionRequestDescriptor = $convert.base64Decode(
    'ChFSZWdyZXNzaW9uUmVxdWVzdBI8Cgptb2RlbF9zcGVjGAEgASgLMh0udGVuc29yZmxvdy5zZX'
    'J2aW5nLk1vZGVsU3BlY1IJbW9kZWxTcGVjEi8KBWlucHV0GAIgASgLMhkudGVuc29yZmxvdy5z'
    'ZXJ2aW5nLklucHV0UgVpbnB1dA==');

@$core.Deprecated('Use regressionResponseDescriptor instead')
const RegressionResponse$json = {
  '1': 'RegressionResponse',
  '2': [
    {'1': 'model_spec', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.RegressionResult', '10': 'result'},
  ],
};

/// Descriptor for `RegressionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionResponseDescriptor = $convert.base64Decode(
    'ChJSZWdyZXNzaW9uUmVzcG9uc2USPAoKbW9kZWxfc3BlYxgCIAEoCzIdLnRlbnNvcmZsb3cuc2'
    'VydmluZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxI8CgZyZXN1bHQYASABKAsyJC50ZW5zb3JmbG93'
    'LnNlcnZpbmcuUmVncmVzc2lvblJlc3VsdFIGcmVzdWx0');

