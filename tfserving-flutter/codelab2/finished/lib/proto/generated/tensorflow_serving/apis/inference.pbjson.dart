///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/inference.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use inferenceTaskDescriptor instead')
const InferenceTask$json = const {
  '1': 'InferenceTask',
  '2': const [
    const {
      '1': 'model_spec',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ModelSpec',
      '10': 'modelSpec'
    },
    const {'1': 'method_name', '3': 2, '4': 1, '5': 9, '10': 'methodName'},
  ],
};

/// Descriptor for `InferenceTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inferenceTaskDescriptor = $convert.base64Decode(
    'Cg1JbmZlcmVuY2VUYXNrEjwKCm1vZGVsX3NwZWMYASABKAsyHS50ZW5zb3JmbG93LnNlcnZpbmcuTW9kZWxTcGVjUgltb2RlbFNwZWMSHwoLbWV0aG9kX25hbWUYAiABKAlSCm1ldGhvZE5hbWU=');
@$core.Deprecated('Use inferenceResultDescriptor instead')
const InferenceResult$json = const {
  '1': 'InferenceResult',
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
      '1': 'classification_result',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.ClassificationResult',
      '9': 0,
      '10': 'classificationResult'
    },
    const {
      '1': 'regression_result',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.serving.RegressionResult',
      '9': 0,
      '10': 'regressionResult'
    },
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

/// Descriptor for `InferenceResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inferenceResultDescriptor = $convert.base64Decode(
    'Cg9JbmZlcmVuY2VSZXN1bHQSPAoKbW9kZWxfc3BlYxgBIAEoCzIdLnRlbnNvcmZsb3cuc2VydmluZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxJfChVjbGFzc2lmaWNhdGlvbl9yZXN1bHQYAiABKAsyKC50ZW5zb3JmbG93LnNlcnZpbmcuQ2xhc3NpZmljYXRpb25SZXN1bHRIAFIUY2xhc3NpZmljYXRpb25SZXN1bHQSUwoRcmVncmVzc2lvbl9yZXN1bHQYAyABKAsyJC50ZW5zb3JmbG93LnNlcnZpbmcuUmVncmVzc2lvblJlc3VsdEgAUhByZWdyZXNzaW9uUmVzdWx0QggKBnJlc3VsdA==');
@$core.Deprecated('Use multiInferenceRequestDescriptor instead')
const MultiInferenceRequest$json = const {
  '1': 'MultiInferenceRequest',
  '2': const [
    const {
      '1': 'tasks',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.serving.InferenceTask',
      '10': 'tasks'
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

/// Descriptor for `MultiInferenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiInferenceRequestDescriptor = $convert.base64Decode(
    'ChVNdWx0aUluZmVyZW5jZVJlcXVlc3QSNwoFdGFza3MYASADKAsyIS50ZW5zb3JmbG93LnNlcnZpbmcuSW5mZXJlbmNlVGFza1IFdGFza3MSLwoFaW5wdXQYAiABKAsyGS50ZW5zb3JmbG93LnNlcnZpbmcuSW5wdXRSBWlucHV0');
@$core.Deprecated('Use multiInferenceResponseDescriptor instead')
const MultiInferenceResponse$json = const {
  '1': 'MultiInferenceResponse',
  '2': const [
    const {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.serving.InferenceResult',
      '10': 'results'
    },
  ],
};

/// Descriptor for `MultiInferenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiInferenceResponseDescriptor =
    $convert.base64Decode(
        'ChZNdWx0aUluZmVyZW5jZVJlc3BvbnNlEj0KB3Jlc3VsdHMYASADKAsyIy50ZW5zb3JmbG93LnNlcnZpbmcuSW5mZXJlbmNlUmVzdWx0UgdyZXN1bHRz');
