//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/inference.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use inferenceTaskDescriptor instead')
const InferenceTask$json = {
  '1': 'InferenceTask',
  '2': [
    {'1': 'model_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'method_name', '3': 2, '4': 1, '5': 9, '10': 'methodName'},
  ],
};

/// Descriptor for `InferenceTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inferenceTaskDescriptor = $convert.base64Decode(
    'Cg1JbmZlcmVuY2VUYXNrEjwKCm1vZGVsX3NwZWMYASABKAsyHS50ZW5zb3JmbG93LnNlcnZpbm'
    'cuTW9kZWxTcGVjUgltb2RlbFNwZWMSHwoLbWV0aG9kX25hbWUYAiABKAlSCm1ldGhvZE5hbWU=');

@$core.Deprecated('Use inferenceResultDescriptor instead')
const InferenceResult$json = {
  '1': 'InferenceResult',
  '2': [
    {'1': 'model_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'classification_result', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.serving.ClassificationResult', '9': 0, '10': 'classificationResult'},
    {'1': 'regression_result', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.serving.RegressionResult', '9': 0, '10': 'regressionResult'},
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `InferenceResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inferenceResultDescriptor = $convert.base64Decode(
    'Cg9JbmZlcmVuY2VSZXN1bHQSPAoKbW9kZWxfc3BlYxgBIAEoCzIdLnRlbnNvcmZsb3cuc2Vydm'
    'luZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxJfChVjbGFzc2lmaWNhdGlvbl9yZXN1bHQYAiABKAsy'
    'KC50ZW5zb3JmbG93LnNlcnZpbmcuQ2xhc3NpZmljYXRpb25SZXN1bHRIAFIUY2xhc3NpZmljYX'
    'Rpb25SZXN1bHQSUwoRcmVncmVzc2lvbl9yZXN1bHQYAyABKAsyJC50ZW5zb3JmbG93LnNlcnZp'
    'bmcuUmVncmVzc2lvblJlc3VsdEgAUhByZWdyZXNzaW9uUmVzdWx0QggKBnJlc3VsdA==');

@$core.Deprecated('Use multiInferenceRequestDescriptor instead')
const MultiInferenceRequest$json = {
  '1': 'MultiInferenceRequest',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.serving.InferenceTask', '10': 'tasks'},
    {'1': 'input', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.serving.Input', '10': 'input'},
  ],
};

/// Descriptor for `MultiInferenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiInferenceRequestDescriptor = $convert.base64Decode(
    'ChVNdWx0aUluZmVyZW5jZVJlcXVlc3QSNwoFdGFza3MYASADKAsyIS50ZW5zb3JmbG93LnNlcn'
    'ZpbmcuSW5mZXJlbmNlVGFza1IFdGFza3MSLwoFaW5wdXQYAiABKAsyGS50ZW5zb3JmbG93LnNl'
    'cnZpbmcuSW5wdXRSBWlucHV0');

@$core.Deprecated('Use multiInferenceResponseDescriptor instead')
const MultiInferenceResponse$json = {
  '1': 'MultiInferenceResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.serving.InferenceResult', '10': 'results'},
  ],
};

/// Descriptor for `MultiInferenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiInferenceResponseDescriptor = $convert.base64Decode(
    'ChZNdWx0aUluZmVyZW5jZVJlc3BvbnNlEj0KB3Jlc3VsdHMYASADKAsyIy50ZW5zb3JmbG93Ln'
    'NlcnZpbmcuSW5mZXJlbmNlUmVzdWx0UgdyZXN1bHRz');

