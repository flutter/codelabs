///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/attr_value.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use attrValueDescriptor instead')
const AttrValue$json = const {
  '1': 'AttrValue',
  '2': const [
    const {'1': 's', '3': 2, '4': 1, '5': 12, '9': 0, '10': 's'},
    const {'1': 'i', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'i'},
    const {'1': 'f', '3': 4, '4': 1, '5': 2, '9': 0, '10': 'f'},
    const {'1': 'b', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'b'},
    const {
      '1': 'type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '9': 0,
      '10': 'type'
    },
    const {
      '1': 'shape',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '9': 0,
      '10': 'shape'
    },
    const {
      '1': 'tensor',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '9': 0,
      '10': 'tensor'
    },
    const {
      '1': 'list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue.ListValue',
      '9': 0,
      '10': 'list'
    },
    const {
      '1': 'func',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.NameAttrList',
      '9': 0,
      '10': 'func'
    },
    const {
      '1': 'placeholder',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'placeholder'
    },
  ],
  '3': const [AttrValue_ListValue$json],
  '8': const [
    const {'1': 'value'},
  ],
};

@$core.Deprecated('Use attrValueDescriptor instead')
const AttrValue_ListValue$json = const {
  '1': 'ListValue',
  '2': const [
    const {'1': 's', '3': 2, '4': 3, '5': 12, '10': 's'},
    const {
      '1': 'i',
      '3': 3,
      '4': 3,
      '5': 3,
      '8': const {'2': true},
      '10': 'i',
    },
    const {
      '1': 'f',
      '3': 4,
      '4': 3,
      '5': 2,
      '8': const {'2': true},
      '10': 'f',
    },
    const {
      '1': 'b',
      '3': 5,
      '4': 3,
      '5': 8,
      '8': const {'2': true},
      '10': 'b',
    },
    const {
      '1': 'type',
      '3': 6,
      '4': 3,
      '5': 14,
      '6': '.tensorflow.DataType',
      '8': const {'2': true},
      '10': 'type',
    },
    const {
      '1': 'shape',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    const {
      '1': 'tensor',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'tensor'
    },
    const {
      '1': 'func',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NameAttrList',
      '10': 'func'
    },
  ],
};

/// Descriptor for `AttrValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attrValueDescriptor = $convert.base64Decode(
    'CglBdHRyVmFsdWUSDgoBcxgCIAEoDEgAUgFzEg4KAWkYAyABKANIAFIBaRIOCgFmGAQgASgCSABSAWYSDgoBYhgFIAEoCEgAUgFiEioKBHR5cGUYBiABKA4yFC50ZW5zb3JmbG93LkRhdGFUeXBlSABSBHR5cGUSNAoFc2hhcGUYByABKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9IAFIFc2hhcGUSMQoGdGVuc29yGAggASgLMhcudGVuc29yZmxvdy5UZW5zb3JQcm90b0gAUgZ0ZW5zb3ISNQoEbGlzdBgBIAEoCzIfLnRlbnNvcmZsb3cuQXR0clZhbHVlLkxpc3RWYWx1ZUgAUgRsaXN0Ei4KBGZ1bmMYCiABKAsyGC50ZW5zb3JmbG93Lk5hbWVBdHRyTGlzdEgAUgRmdW5jEiIKC3BsYWNlaG9sZGVyGAkgASgJSABSC3BsYWNlaG9sZGVyGpACCglMaXN0VmFsdWUSDAoBcxgCIAMoDFIBcxIQCgFpGAMgAygDQgIQAVIBaRIQCgFmGAQgAygCQgIQAVIBZhIQCgFiGAUgAygIQgIQAVIBYhIsCgR0eXBlGAYgAygOMhQudGVuc29yZmxvdy5EYXRhVHlwZUICEAFSBHR5cGUSMgoFc2hhcGUYByADKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9SBXNoYXBlEi8KBnRlbnNvchgIIAMoCzIXLnRlbnNvcmZsb3cuVGVuc29yUHJvdG9SBnRlbnNvchIsCgRmdW5jGAkgAygLMhgudGVuc29yZmxvdy5OYW1lQXR0ckxpc3RSBGZ1bmNCBwoFdmFsdWU=');
@$core.Deprecated('Use nameAttrListDescriptor instead')
const NameAttrList$json = const {
  '1': 'NameAttrList',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'attr',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NameAttrList.AttrEntry',
      '10': 'attr'
    },
  ],
  '3': const [NameAttrList_AttrEntry$json],
};

@$core.Deprecated('Use nameAttrListDescriptor instead')
const NameAttrList_AttrEntry$json = const {
  '1': 'AttrEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `NameAttrList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nameAttrListDescriptor = $convert.base64Decode(
    'CgxOYW1lQXR0ckxpc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRI2CgRhdHRyGAIgAygLMiIudGVuc29yZmxvdy5OYW1lQXR0ckxpc3QuQXR0ckVudHJ5UgRhdHRyGk4KCUF0dHJFbnRyeRIQCgNrZXkYASABKAlSA2tleRIrCgV2YWx1ZRgCIAEoCzIVLnRlbnNvcmZsb3cuQXR0clZhbHVlUgV2YWx1ZToCOAE=');
