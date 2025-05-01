//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/predict.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use predictRequestDescriptor instead')
const PredictRequest$json = {
  '1': 'PredictRequest',
  '2': [
    {'1': 'model_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'inputs', '3': 2, '4': 3, '5': 11, '6': '.tensorflow.serving.PredictRequest.InputsEntry', '10': 'inputs'},
    {'1': 'output_filter', '3': 3, '4': 3, '5': 9, '10': 'outputFilter'},
  ],
  '3': [PredictRequest_InputsEntry$json],
};

@$core.Deprecated('Use predictRequestDescriptor instead')
const PredictRequest_InputsEntry$json = {
  '1': 'InputsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.TensorProto', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PredictRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictRequestDescriptor = $convert.base64Decode(
    'Cg5QcmVkaWN0UmVxdWVzdBI8Cgptb2RlbF9zcGVjGAEgASgLMh0udGVuc29yZmxvdy5zZXJ2aW'
    '5nLk1vZGVsU3BlY1IJbW9kZWxTcGVjEkYKBmlucHV0cxgCIAMoCzIuLnRlbnNvcmZsb3cuc2Vy'
    'dmluZy5QcmVkaWN0UmVxdWVzdC5JbnB1dHNFbnRyeVIGaW5wdXRzEiMKDW91dHB1dF9maWx0ZX'
    'IYAyADKAlSDG91dHB1dEZpbHRlchpSCgtJbnB1dHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIt'
    'CgV2YWx1ZRgCIAEoCzIXLnRlbnNvcmZsb3cuVGVuc29yUHJvdG9SBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use predictResponseDescriptor instead')
const PredictResponse$json = {
  '1': 'PredictResponse',
  '2': [
    {'1': 'model_spec', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'outputs', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.serving.PredictResponse.OutputsEntry', '10': 'outputs'},
  ],
  '3': [PredictResponse_OutputsEntry$json],
};

@$core.Deprecated('Use predictResponseDescriptor instead')
const PredictResponse_OutputsEntry$json = {
  '1': 'OutputsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.TensorProto', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PredictResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predictResponseDescriptor = $convert.base64Decode(
    'Cg9QcmVkaWN0UmVzcG9uc2USPAoKbW9kZWxfc3BlYxgCIAEoCzIdLnRlbnNvcmZsb3cuc2Vydm'
    'luZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxJKCgdvdXRwdXRzGAEgAygLMjAudGVuc29yZmxvdy5z'
    'ZXJ2aW5nLlByZWRpY3RSZXNwb25zZS5PdXRwdXRzRW50cnlSB291dHB1dHMaUwoMT3V0cHV0c0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ei0KBXZhbHVlGAIgASgLMhcudGVuc29yZmxvdy5UZW5z'
    'b3JQcm90b1IFdmFsdWU6AjgB');

