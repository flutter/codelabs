//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/attr_value.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use attrValueDescriptor instead')
const AttrValue$json = {
  '1': 'AttrValue',
  '2': [
    {'1': 's', '3': 2, '4': 1, '5': 12, '9': 0, '10': 's'},
    {'1': 'i', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'i'},
    {'1': 'f', '3': 4, '4': 1, '5': 2, '9': 0, '10': 'f'},
    {'1': 'b', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'b'},
    {
      '1': 'type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '9': 0,
      '10': 'type'
    },
    {
      '1': 'shape',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '9': 0,
      '10': 'shape'
    },
    {
      '1': 'tensor',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '9': 0,
      '10': 'tensor'
    },
    {
      '1': 'list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue.ListValue',
      '9': 0,
      '10': 'list'
    },
    {
      '1': 'func',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.NameAttrList',
      '9': 0,
      '10': 'func'
    },
    {'1': 'placeholder', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'placeholder'},
  ],
  '3': [AttrValue_ListValue$json],
  '8': [
    {'1': 'value'},
  ],
};

@$core.Deprecated('Use attrValueDescriptor instead')
const AttrValue_ListValue$json = {
  '1': 'ListValue',
  '2': [
    {'1': 's', '3': 2, '4': 3, '5': 12, '10': 's'},
    {
      '1': 'i',
      '3': 3,
      '4': 3,
      '5': 3,
      '8': {'2': true},
      '10': 'i',
    },
    {
      '1': 'f',
      '3': 4,
      '4': 3,
      '5': 2,
      '8': {'2': true},
      '10': 'f',
    },
    {
      '1': 'b',
      '3': 5,
      '4': 3,
      '5': 8,
      '8': {'2': true},
      '10': 'b',
    },
    {
      '1': 'type',
      '3': 6,
      '4': 3,
      '5': 14,
      '6': '.tensorflow.DataType',
      '8': {'2': true},
      '10': 'type',
    },
    {
      '1': 'shape',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    {
      '1': 'tensor',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'tensor'
    },
    {
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
    'CglBdHRyVmFsdWUSDgoBcxgCIAEoDEgAUgFzEg4KAWkYAyABKANIAFIBaRIOCgFmGAQgASgCSA'
    'BSAWYSDgoBYhgFIAEoCEgAUgFiEioKBHR5cGUYBiABKA4yFC50ZW5zb3JmbG93LkRhdGFUeXBl'
    'SABSBHR5cGUSNAoFc2hhcGUYByABKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9IAF'
    'IFc2hhcGUSMQoGdGVuc29yGAggASgLMhcudGVuc29yZmxvdy5UZW5zb3JQcm90b0gAUgZ0ZW5z'
    'b3ISNQoEbGlzdBgBIAEoCzIfLnRlbnNvcmZsb3cuQXR0clZhbHVlLkxpc3RWYWx1ZUgAUgRsaX'
    'N0Ei4KBGZ1bmMYCiABKAsyGC50ZW5zb3JmbG93Lk5hbWVBdHRyTGlzdEgAUgRmdW5jEiIKC3Bs'
    'YWNlaG9sZGVyGAkgASgJSABSC3BsYWNlaG9sZGVyGpACCglMaXN0VmFsdWUSDAoBcxgCIAMoDF'
    'IBcxIQCgFpGAMgAygDQgIQAVIBaRIQCgFmGAQgAygCQgIQAVIBZhIQCgFiGAUgAygIQgIQAVIB'
    'YhIsCgR0eXBlGAYgAygOMhQudGVuc29yZmxvdy5EYXRhVHlwZUICEAFSBHR5cGUSMgoFc2hhcG'
    'UYByADKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9SBXNoYXBlEi8KBnRlbnNvchgI'
    'IAMoCzIXLnRlbnNvcmZsb3cuVGVuc29yUHJvdG9SBnRlbnNvchIsCgRmdW5jGAkgAygLMhgudG'
    'Vuc29yZmxvdy5OYW1lQXR0ckxpc3RSBGZ1bmNCBwoFdmFsdWU=');

@$core.Deprecated('Use nameAttrListDescriptor instead')
const NameAttrList$json = {
  '1': 'NameAttrList',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'attr',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NameAttrList.AttrEntry',
      '10': 'attr'
    },
  ],
  '3': [NameAttrList_AttrEntry$json],
};

@$core.Deprecated('Use nameAttrListDescriptor instead')
const NameAttrList_AttrEntry$json = {
  '1': 'AttrEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `NameAttrList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nameAttrListDescriptor = $convert.base64Decode(
    'CgxOYW1lQXR0ckxpc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRI2CgRhdHRyGAIgAygLMiIudGVuc2'
    '9yZmxvdy5OYW1lQXR0ckxpc3QuQXR0ckVudHJ5UgRhdHRyGk4KCUF0dHJFbnRyeRIQCgNrZXkY'
    'ASABKAlSA2tleRIrCgV2YWx1ZRgCIAEoCzIVLnRlbnNvcmZsb3cuQXR0clZhbHVlUgV2YWx1ZT'
    'oCOAE=');
