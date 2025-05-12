//
//  Generated code. Do not modify.
//  source: tensorflow/core/example/feature.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bytesListDescriptor instead')
const BytesList$json = {
  '1': 'BytesList',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `BytesList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bytesListDescriptor =
    $convert.base64Decode('CglCeXRlc0xpc3QSFAoFdmFsdWUYASADKAxSBXZhbHVl');

@$core.Deprecated('Use floatListDescriptor instead')
const FloatList$json = {
  '1': 'FloatList',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 2,
      '8': {'2': true},
      '10': 'value',
    },
  ],
};

/// Descriptor for `FloatList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatListDescriptor = $convert
    .base64Decode('CglGbG9hdExpc3QSGAoFdmFsdWUYASADKAJCAhABUgV2YWx1ZQ==');

@$core.Deprecated('Use int64ListDescriptor instead')
const Int64List$json = {
  '1': 'Int64List',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 3,
      '8': {'2': true},
      '10': 'value',
    },
  ],
};

/// Descriptor for `Int64List`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64ListDescriptor = $convert
    .base64Decode('CglJbnQ2NExpc3QSGAoFdmFsdWUYASADKANCAhABUgV2YWx1ZQ==');

@$core.Deprecated('Use featureDescriptor instead')
const Feature$json = {
  '1': 'Feature',
  '2': [
    {
      '1': 'bytes_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.BytesList',
      '9': 0,
      '10': 'bytesList'
    },
    {
      '1': 'float_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FloatList',
      '9': 0,
      '10': 'floatList'
    },
    {
      '1': 'int64_list',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.Int64List',
      '9': 0,
      '10': 'int64List'
    },
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `Feature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureDescriptor = $convert.base64Decode(
    'CgdGZWF0dXJlEjYKCmJ5dGVzX2xpc3QYASABKAsyFS50ZW5zb3JmbG93LkJ5dGVzTGlzdEgAUg'
    'lieXRlc0xpc3QSNgoKZmxvYXRfbGlzdBgCIAEoCzIVLnRlbnNvcmZsb3cuRmxvYXRMaXN0SABS'
    'CWZsb2F0TGlzdBI2CgppbnQ2NF9saXN0GAMgASgLMhUudGVuc29yZmxvdy5JbnQ2NExpc3RIAF'
    'IJaW50NjRMaXN0QgYKBGtpbmQ=');

@$core.Deprecated('Use featuresDescriptor instead')
const Features$json = {
  '1': 'Features',
  '2': [
    {
      '1': 'feature',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.Features.FeatureEntry',
      '10': 'feature'
    },
  ],
  '3': [Features_FeatureEntry$json],
};

@$core.Deprecated('Use featuresDescriptor instead')
const Features_FeatureEntry$json = {
  '1': 'FeatureEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.Feature',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `Features`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featuresDescriptor = $convert.base64Decode(
    'CghGZWF0dXJlcxI7CgdmZWF0dXJlGAEgAygLMiEudGVuc29yZmxvdy5GZWF0dXJlcy5GZWF0dX'
    'JlRW50cnlSB2ZlYXR1cmUaTwoMRmVhdHVyZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EikKBXZh'
    'bHVlGAIgASgLMhMudGVuc29yZmxvdy5GZWF0dXJlUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use featureListDescriptor instead')
const FeatureList$json = {
  '1': 'FeatureList',
  '2': [
    {
      '1': 'feature',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.Feature',
      '10': 'feature'
    },
  ],
};

/// Descriptor for `FeatureList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureListDescriptor = $convert.base64Decode(
    'CgtGZWF0dXJlTGlzdBItCgdmZWF0dXJlGAEgAygLMhMudGVuc29yZmxvdy5GZWF0dXJlUgdmZW'
    'F0dXJl');

@$core.Deprecated('Use featureListsDescriptor instead')
const FeatureLists$json = {
  '1': 'FeatureLists',
  '2': [
    {
      '1': 'feature_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FeatureLists.FeatureListEntry',
      '10': 'featureList'
    },
  ],
  '3': [FeatureLists_FeatureListEntry$json],
};

@$core.Deprecated('Use featureListsDescriptor instead')
const FeatureLists_FeatureListEntry$json = {
  '1': 'FeatureListEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FeatureList',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `FeatureLists`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureListsDescriptor = $convert.base64Decode(
    'CgxGZWF0dXJlTGlzdHMSTAoMZmVhdHVyZV9saXN0GAEgAygLMikudGVuc29yZmxvdy5GZWF0dX'
    'JlTGlzdHMuRmVhdHVyZUxpc3RFbnRyeVILZmVhdHVyZUxpc3QaVwoQRmVhdHVyZUxpc3RFbnRy'
    'eRIQCgNrZXkYASABKAlSA2tleRItCgV2YWx1ZRgCIAEoCzIXLnRlbnNvcmZsb3cuRmVhdHVyZU'
    'xpc3RSBXZhbHVlOgI4AQ==');
