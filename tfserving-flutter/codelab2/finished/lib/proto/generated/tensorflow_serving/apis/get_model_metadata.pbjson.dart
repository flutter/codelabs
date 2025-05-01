//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/get_model_metadata.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use signatureDefMapDescriptor instead')
const SignatureDefMap$json = {
  '1': 'SignatureDefMap',
  '2': [
    {'1': 'signature_def', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.serving.SignatureDefMap.SignatureDefEntry', '10': 'signatureDef'},
  ],
  '3': [SignatureDefMap_SignatureDefEntry$json],
};

@$core.Deprecated('Use signatureDefMapDescriptor instead')
const SignatureDefMap_SignatureDefEntry$json = {
  '1': 'SignatureDefEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.SignatureDef', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SignatureDefMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDefMapDescriptor = $convert.base64Decode(
    'Cg9TaWduYXR1cmVEZWZNYXASWgoNc2lnbmF0dXJlX2RlZhgBIAMoCzI1LnRlbnNvcmZsb3cuc2'
    'VydmluZy5TaWduYXR1cmVEZWZNYXAuU2lnbmF0dXJlRGVmRW50cnlSDHNpZ25hdHVyZURlZhpZ'
    'ChFTaWduYXR1cmVEZWZFbnRyeRIQCgNrZXkYASABKAlSA2tleRIuCgV2YWx1ZRgCIAEoCzIYLn'
    'RlbnNvcmZsb3cuU2lnbmF0dXJlRGVmUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use getModelMetadataRequestDescriptor instead')
const GetModelMetadataRequest$json = {
  '1': 'GetModelMetadataRequest',
  '2': [
    {'1': 'model_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'metadata_field', '3': 2, '4': 3, '5': 9, '10': 'metadataField'},
  ],
};

/// Descriptor for `GetModelMetadataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getModelMetadataRequestDescriptor = $convert.base64Decode(
    'ChdHZXRNb2RlbE1ldGFkYXRhUmVxdWVzdBI8Cgptb2RlbF9zcGVjGAEgASgLMh0udGVuc29yZm'
    'xvdy5zZXJ2aW5nLk1vZGVsU3BlY1IJbW9kZWxTcGVjEiUKDm1ldGFkYXRhX2ZpZWxkGAIgAygJ'
    'Ug1tZXRhZGF0YUZpZWxk');

@$core.Deprecated('Use getModelMetadataResponseDescriptor instead')
const GetModelMetadataResponse$json = {
  '1': 'GetModelMetadataResponse',
  '2': [
    {'1': 'model_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.serving.ModelSpec', '10': 'modelSpec'},
    {'1': 'metadata', '3': 2, '4': 3, '5': 11, '6': '.tensorflow.serving.GetModelMetadataResponse.MetadataEntry', '10': 'metadata'},
  ],
  '3': [GetModelMetadataResponse_MetadataEntry$json],
};

@$core.Deprecated('Use getModelMetadataResponseDescriptor instead')
const GetModelMetadataResponse_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GetModelMetadataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getModelMetadataResponseDescriptor = $convert.base64Decode(
    'ChhHZXRNb2RlbE1ldGFkYXRhUmVzcG9uc2USPAoKbW9kZWxfc3BlYxgBIAEoCzIdLnRlbnNvcm'
    'Zsb3cuc2VydmluZy5Nb2RlbFNwZWNSCW1vZGVsU3BlYxJWCghtZXRhZGF0YRgCIAMoCzI6LnRl'
    'bnNvcmZsb3cuc2VydmluZy5HZXRNb2RlbE1ldGFkYXRhUmVzcG9uc2UuTWV0YWRhdGFFbnRyeV'
    'IIbWV0YWRhdGEaUQoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIqCgV2YWx1ZRgC'
    'IAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSBXZhbHVlOgI4AQ==');

