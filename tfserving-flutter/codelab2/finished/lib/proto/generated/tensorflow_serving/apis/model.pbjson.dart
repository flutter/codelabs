//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/model.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use modelSpecDescriptor instead')
const ModelSpec$json = {
  '1': 'ModelSpec',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'version',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int64Value',
      '9': 0,
      '10': 'version'
    },
    {
      '1': 'version_label',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'versionLabel'
    },
    {'1': 'signature_name', '3': 3, '4': 1, '5': 9, '10': 'signatureName'},
  ],
  '8': [
    {'1': 'version_choice'},
  ],
};

/// Descriptor for `ModelSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelSpecDescriptor = $convert.base64Decode(
    'CglNb2RlbFNwZWMSEgoEbmFtZRgBIAEoCVIEbmFtZRI3Cgd2ZXJzaW9uGAIgASgLMhsuZ29vZ2'
    'xlLnByb3RvYnVmLkludDY0VmFsdWVIAFIHdmVyc2lvbhIlCg12ZXJzaW9uX2xhYmVsGAQgASgJ'
    'SABSDHZlcnNpb25MYWJlbBIlCg5zaWduYXR1cmVfbmFtZRgDIAEoCVINc2lnbmF0dXJlTmFtZU'
    'IQCg52ZXJzaW9uX2Nob2ljZQ==');
