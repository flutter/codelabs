//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/classification.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use classDescriptor instead')
const Class$json = {
  '1': 'Class',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'score', '3': 2, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `Class`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classDescriptor = $convert.base64Decode(
    'CgVDbGFzcxIUCgVsYWJlbBgBIAEoCVIFbGFiZWwSFAoFc2NvcmUYAiABKAJSBXNjb3Jl');

@$core.Deprecated('Use classificationsDescriptor instead')
const Classifications$json = {
  '1': 'Classifications',
  '2': [
    {'1': 'classes', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.serving.Class', '10': 'classes'},
  ],
};

/// Descriptor for `Classifications`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationsDescriptor = $convert.base64Decode(
    'Cg9DbGFzc2lmaWNhdGlvbnMSMwoHY2xhc3NlcxgBIAMoCzIZLnRlbnNvcmZsb3cuc2VydmluZy'
    '5DbGFzc1IHY2xhc3Nlcw==');

@$core.Deprecated('Use classificationResultDescriptor instead')
const ClassificationResult$json = {
  '1': 'ClassificationResult',
  '2': [
    {'1': 'classifications', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.serving.Classifications', '10': 'classifications'},
  ],
};

/// Descriptor for `ClassificationResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationResultDescriptor = $convert.base64Decode(
    'ChRDbGFzc2lmaWNhdGlvblJlc3VsdBJNCg9jbGFzc2lmaWNhdGlvbnMYASADKAsyIy50ZW5zb3'
    'JmbG93LnNlcnZpbmcuQ2xhc3NpZmljYXRpb25zUg9jbGFzc2lmaWNhdGlvbnM=');

@$core.Deprecated('Use classificationRequestDescriptor instead')
const ClassificationRequest$json = {
  '1': 'ClassificationRequest',
  '2': [
    {'1': 'model_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'input', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.serving.Input', '10': 'input'},
  ],
};

/// Descriptor for `ClassificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationRequestDescriptor = $convert.base64Decode(
    'ChVDbGFzc2lmaWNhdGlvblJlcXVlc3QSPAoKbW9kZWxfc3BlYxgBIAEoCzIdLnRlbnNvcmZsb3'
    'cuc2VydmluZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxIvCgVpbnB1dBgCIAEoCzIZLnRlbnNvcmZs'
    'b3cuc2VydmluZy5JbnB1dFIFaW5wdXQ=');

@$core.Deprecated('Use classificationResponseDescriptor instead')
const ClassificationResponse$json = {
  '1': 'ClassificationResponse',
  '2': [
    {'1': 'model_spec', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ClassificationResult', '10': 'result'},
  ],
};

/// Descriptor for `ClassificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationResponseDescriptor = $convert.base64Decode(
    'ChZDbGFzc2lmaWNhdGlvblJlc3BvbnNlEjwKCm1vZGVsX3NwZWMYAiABKAsyHS50ZW5zb3JmbG'
    '93LnNlcnZpbmcuTW9kZWxTcGVjUgltb2RlbFNwZWMSQAoGcmVzdWx0GAEgASgLMigudGVuc29y'
    'Zmxvdy5zZXJ2aW5nLkNsYXNzaWZpY2F0aW9uUmVzdWx0UgZyZXN1bHQ=');

