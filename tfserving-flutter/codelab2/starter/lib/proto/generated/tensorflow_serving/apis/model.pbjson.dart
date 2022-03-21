///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use modelSpecDescriptor instead')
const ModelSpec$json = const {
  '1': 'ModelSpec',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'version',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int64Value',
      '9': 0,
      '10': 'version'
    },
    const {
      '1': 'version_label',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'versionLabel'
    },
    const {
      '1': 'signature_name',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'signatureName'
    },
  ],
  '8': const [
    const {'1': 'version_choice'},
  ],
};

/// Descriptor for `ModelSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelSpecDescriptor = $convert.base64Decode(
    'CglNb2RlbFNwZWMSEgoEbmFtZRgBIAEoCVIEbmFtZRI3Cgd2ZXJzaW9uGAIgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDY0VmFsdWVIAFIHdmVyc2lvbhIlCg12ZXJzaW9uX2xhYmVsGAQgASgJSABSDHZlcnNpb25MYWJlbBIlCg5zaWduYXR1cmVfbmFtZRgDIAEoCVINc2lnbmF0dXJlTmFtZUIQCg52ZXJzaW9uX2Nob2ljZQ==');
