///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/predict.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use predictRequestDescriptor instead')
const PredictRequest$json = const {
  '1': 'PredictRequest',
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
      '1': 'inputs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.serving.PredictRequest.InputsEntry',
      '10': 'inputs'
    },
    const {'1': 'output_filter', '3': 3, '4': 3, '5': 9, '10': 'outputFilter'},
  ],
  '3': const [PredictRequest_InputsEntry$json],
};

@$core.Deprecated('Use predictRequestDescriptor instead')
const PredictRequest_InputsEntry$json = const {
  '1': 'InputsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `PredictRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictRequestDescriptor = $convert.base64Decode(
    'Cg5QcmVkaWN0UmVxdWVzdBI8Cgptb2RlbF9zcGVjGAEgASgLMh0udGVuc29yZmxvdy5zZXJ2aW5nLk1vZGVsU3BlY1IJbW9kZWxTcGVjEkYKBmlucHV0cxgCIAMoCzIuLnRlbnNvcmZsb3cuc2VydmluZy5QcmVkaWN0UmVxdWVzdC5JbnB1dHNFbnRyeVIGaW5wdXRzEiMKDW91dHB1dF9maWx0ZXIYAyADKAlSDG91dHB1dEZpbHRlchpSCgtJbnB1dHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRItCgV2YWx1ZRgCIAEoCzIXLnRlbnNvcmZsb3cuVGVuc29yUHJvdG9SBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use predictResponseDescriptor instead')
const PredictResponse$json = const {
  '1': 'PredictResponse',
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
      '1': 'outputs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.serving.PredictResponse.OutputsEntry',
      '10': 'outputs'
    },
  ],
  '3': const [PredictResponse_OutputsEntry$json],
};

@$core.Deprecated('Use predictResponseDescriptor instead')
const PredictResponse_OutputsEntry$json = const {
  '1': 'OutputsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `PredictResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictResponseDescriptor = $convert.base64Decode(
    'Cg9QcmVkaWN0UmVzcG9uc2USPAoKbW9kZWxfc3BlYxgCIAEoCzIdLnRlbnNvcmZsb3cuc2VydmluZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxJKCgdvdXRwdXRzGAEgAygLMjAudGVuc29yZmxvdy5zZXJ2aW5nLlByZWRpY3RSZXNwb25zZS5PdXRwdXRzRW50cnlSB291dHB1dHMaUwoMT3V0cHV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ei0KBXZhbHVlGAIgASgLMhcudGVuc29yZmxvdy5UZW5zb3JQcm90b1IFdmFsdWU6AjgB');
