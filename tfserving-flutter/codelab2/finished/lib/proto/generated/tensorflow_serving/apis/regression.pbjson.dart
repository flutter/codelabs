///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/regression.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use regressionDescriptor instead')
const Regression$json = const {
  '1': 'Regression',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 2, '10': 'value'},
  ],
};

/// Descriptor for `Regression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionDescriptor =
    $convert.base64Decode('CgpSZWdyZXNzaW9uEhQKBXZhbHVlGAEgASgCUgV2YWx1ZQ==');
@$core.Deprecated('Use regressionResultDescriptor instead')
const RegressionResult$json = const {
  '1': 'RegressionResult',
  '2': const [
    const {
      '1': 'regressions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.serving.Regression',
      '10': 'regressions'
    },
  ],
};

/// Descriptor for `RegressionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionResultDescriptor = $convert.base64Decode(
    'ChBSZWdyZXNzaW9uUmVzdWx0EkAKC3JlZ3Jlc3Npb25zGAEgAygLMh4udGVuc29yZmxvdy5zZXJ2aW5nLlJlZ3Jlc3Npb25SC3JlZ3Jlc3Npb25z');
@$core.Deprecated('Use regressionRequestDescriptor instead')
const RegressionRequest$json = const {
  '1': 'RegressionRequest',
  '2': const [
    const {
      '1': 'model_spec',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ModelSpec',
      '10': 'modelSpec'
    },
    const {
      '1': 'input',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.Input',
      '10': 'input'
    },
  ],
};

/// Descriptor for `RegressionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionRequestDescriptor = $convert.base64Decode(
    'ChFSZWdyZXNzaW9uUmVxdWVzdBI8Cgptb2RlbF9zcGVjGAEgASgLMh0udGVuc29yZmxvdy5zZXJ2aW5nLk1vZGVsU3BlY1IJbW9kZWxTcGVjEi8KBWlucHV0GAIgASgLMhkudGVuc29yZmxvdy5zZXJ2aW5nLklucHV0UgVpbnB1dA==');
@$core.Deprecated('Use regressionResponseDescriptor instead')
const RegressionResponse$json = const {
  '1': 'RegressionResponse',
  '2': const [
    const {
      '1': 'model_spec',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ModelSpec',
      '10': 'modelSpec'
    },
    const {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.RegressionResult',
      '10': 'result'
    },
  ],
};

/// Descriptor for `RegressionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regressionResponseDescriptor = $convert.base64Decode(
    'ChJSZWdyZXNzaW9uUmVzcG9uc2USPAoKbW9kZWxfc3BlYxgCIAEoCzIdLnRlbnNvcmZsb3cuc2VydmluZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxI8CgZyZXN1bHQYASABKAsyJC50ZW5zb3JmbG93LnNlcnZpbmcuUmVncmVzc2lvblJlc3VsdFIGcmVzdWx0');
