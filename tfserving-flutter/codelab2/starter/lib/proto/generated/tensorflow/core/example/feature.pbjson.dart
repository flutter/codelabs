///
//  Generated code. Do not modify.
//  source: tensorflow/core/example/feature.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bytesListDescriptor instead')
const BytesList$json = const {
  '1': 'BytesList',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `BytesList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bytesListDescriptor =
    $convert.base64Decode('CglCeXRlc0xpc3QSFAoFdmFsdWUYASADKAxSBXZhbHVl');
@$core.Deprecated('Use floatListDescriptor instead')
const FloatList$json = const {
  '1': 'FloatList',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 2,
      '8': const {'2': true},
      '10': 'value',
    },
  ],
};

/// Descriptor for `FloatList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatListDescriptor = $convert
    .base64Decode('CglGbG9hdExpc3QSGAoFdmFsdWUYASADKAJCAhABUgV2YWx1ZQ==');
@$core.Deprecated('Use int64ListDescriptor instead')
const Int64List$json = const {
  '1': 'Int64List',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 3,
      '8': const {'2': true},
      '10': 'value',
    },
  ],
};

/// Descriptor for `Int64List`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64ListDescriptor = $convert
    .base64Decode('CglJbnQ2NExpc3QSGAoFdmFsdWUYASADKANCAhABUgV2YWx1ZQ==');
@$core.Deprecated('Use featureDescriptor instead')
const Feature$json = const {
  '1': 'Feature',
  '2': const [
    const {
      '1': 'bytes_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.BytesList',
      '9': 0,
      '10': 'bytesList'
    },
    const {
      '1': 'float_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FloatList',
      '9': 0,
      '10': 'floatList'
    },
    const {
      '1': 'int64_list',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.Int64List',
      '9': 0,
      '10': 'int64List'
    },
  ],
  '8': const [
    const {'1': 'kind'},
  ],
};

/// Descriptor for `Feature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureDescriptor = $convert.base64Decode(
    'CgdGZWF0dXJlEjYKCmJ5dGVzX2xpc3QYASABKAsyFS50ZW5zb3JmbG93LkJ5dGVzTGlzdEgAUglieXRlc0xpc3QSNgoKZmxvYXRfbGlzdBgCIAEoCzIVLnRlbnNvcmZsb3cuRmxvYXRMaXN0SABSCWZsb2F0TGlzdBI2CgppbnQ2NF9saXN0GAMgASgLMhUudGVuc29yZmxvdy5JbnQ2NExpc3RIAFIJaW50NjRMaXN0QgYKBGtpbmQ=');
@$core.Deprecated('Use featuresDescriptor instead')
const Features$json = const {
  '1': 'Features',
  '2': const [
    const {
      '1': 'feature',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.Features.FeatureEntry',
      '10': 'feature'
    },
  ],
  '3': const [Features_FeatureEntry$json],
};

@$core.Deprecated('Use featuresDescriptor instead')
const Features_FeatureEntry$json = const {
  '1': 'FeatureEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.Feature',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `Features`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featuresDescriptor = $convert.base64Decode(
    'CghGZWF0dXJlcxI7CgdmZWF0dXJlGAEgAygLMiEudGVuc29yZmxvdy5GZWF0dXJlcy5GZWF0dXJlRW50cnlSB2ZlYXR1cmUaTwoMRmVhdHVyZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EikKBXZhbHVlGAIgASgLMhMudGVuc29yZmxvdy5GZWF0dXJlUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use featureListDescriptor instead')
const FeatureList$json = const {
  '1': 'FeatureList',
  '2': const [
    const {
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
    'CgtGZWF0dXJlTGlzdBItCgdmZWF0dXJlGAEgAygLMhMudGVuc29yZmxvdy5GZWF0dXJlUgdmZWF0dXJl');
@$core.Deprecated('Use featureListsDescriptor instead')
const FeatureLists$json = const {
  '1': 'FeatureLists',
  '2': const [
    const {
      '1': 'feature_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FeatureLists.FeatureListEntry',
      '10': 'featureList'
    },
  ],
  '3': const [FeatureLists_FeatureListEntry$json],
};

@$core.Deprecated('Use featureListsDescriptor instead')
const FeatureLists_FeatureListEntry$json = const {
  '1': 'FeatureListEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FeatureList',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `FeatureLists`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureListsDescriptor = $convert.base64Decode(
    'CgxGZWF0dXJlTGlzdHMSTAoMZmVhdHVyZV9saXN0GAEgAygLMikudGVuc29yZmxvdy5GZWF0dXJlTGlzdHMuRmVhdHVyZUxpc3RFbnRyeVILZmVhdHVyZUxpc3QaVwoQRmVhdHVyZUxpc3RFbnRyeRIQCgNrZXkYASABKAlSA2tleRItCgV2YWx1ZRgCIAEoCzIXLnRlbnNvcmZsb3cuRmVhdHVyZUxpc3RSBXZhbHVlOgI4AQ==');
