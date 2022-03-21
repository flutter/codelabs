///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/classification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use classDescriptor instead')
const Class$json = const {
  '1': 'Class',
  '2': const [
    const {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'score', '3': 2, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `Class`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classDescriptor = $convert.base64Decode(
    'CgVDbGFzcxIUCgVsYWJlbBgBIAEoCVIFbGFiZWwSFAoFc2NvcmUYAiABKAJSBXNjb3Jl');
@$core.Deprecated('Use classificationsDescriptor instead')
const Classifications$json = const {
  '1': 'Classifications',
  '2': const [
    const {
      '1': 'classes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.serving.Class',
      '10': 'classes'
    },
  ],
};

/// Descriptor for `Classifications`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationsDescriptor = $convert.base64Decode(
    'Cg9DbGFzc2lmaWNhdGlvbnMSMwoHY2xhc3NlcxgBIAMoCzIZLnRlbnNvcmZsb3cuc2VydmluZy5DbGFzc1IHY2xhc3Nlcw==');
@$core.Deprecated('Use classificationResultDescriptor instead')
const ClassificationResult$json = const {
  '1': 'ClassificationResult',
  '2': const [
    const {
      '1': 'classifications',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.serving.Classifications',
      '10': 'classifications'
    },
  ],
};

/// Descriptor for `ClassificationResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationResultDescriptor = $convert.base64Decode(
    'ChRDbGFzc2lmaWNhdGlvblJlc3VsdBJNCg9jbGFzc2lmaWNhdGlvbnMYASADKAsyIy50ZW5zb3JmbG93LnNlcnZpbmcuQ2xhc3NpZmljYXRpb25zUg9jbGFzc2lmaWNhdGlvbnM=');
@$core.Deprecated('Use classificationRequestDescriptor instead')
const ClassificationRequest$json = const {
  '1': 'ClassificationRequest',
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

/// Descriptor for `ClassificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationRequestDescriptor = $convert.base64Decode(
    'ChVDbGFzc2lmaWNhdGlvblJlcXVlc3QSPAoKbW9kZWxfc3BlYxgBIAEoCzIdLnRlbnNvcmZsb3cuc2VydmluZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxIvCgVpbnB1dBgCIAEoCzIZLnRlbnNvcmZsb3cuc2VydmluZy5JbnB1dFIFaW5wdXQ=');
@$core.Deprecated('Use classificationResponseDescriptor instead')
const ClassificationResponse$json = const {
  '1': 'ClassificationResponse',
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
      '6': '.tensorflow.serving.ClassificationResult',
      '10': 'result'
    },
  ],
};

/// Descriptor for `ClassificationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classificationResponseDescriptor =
    $convert.base64Decode(
        'ChZDbGFzc2lmaWNhdGlvblJlc3BvbnNlEjwKCm1vZGVsX3NwZWMYAiABKAsyHS50ZW5zb3JmbG93LnNlcnZpbmcuTW9kZWxTcGVjUgltb2RlbFNwZWMSQAoGcmVzdWx0GAEgASgLMigudGVuc29yZmxvdy5zZXJ2aW5nLkNsYXNzaWZpY2F0aW9uUmVzdWx0UgZyZXN1bHQ=');
