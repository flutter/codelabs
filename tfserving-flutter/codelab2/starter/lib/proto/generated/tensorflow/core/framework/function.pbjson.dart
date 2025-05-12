//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/function.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use functionDefLibraryDescriptor instead')
const FunctionDefLibrary$json = {
  '1': 'FunctionDefLibrary',
  '2': [
    {
      '1': 'function',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef',
      '10': 'function'
    },
    {
      '1': 'gradient',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.GradientDef',
      '10': 'gradient'
    },
    {
      '1': 'registered_gradients',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.RegisteredGradient',
      '10': 'registeredGradients'
    },
  ],
};

/// Descriptor for `FunctionDefLibrary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionDefLibraryDescriptor = $convert.base64Decode(
    'ChJGdW5jdGlvbkRlZkxpYnJhcnkSMwoIZnVuY3Rpb24YASADKAsyFy50ZW5zb3JmbG93LkZ1bm'
    'N0aW9uRGVmUghmdW5jdGlvbhIzCghncmFkaWVudBgCIAMoCzIXLnRlbnNvcmZsb3cuR3JhZGll'
    'bnREZWZSCGdyYWRpZW50ElEKFHJlZ2lzdGVyZWRfZ3JhZGllbnRzGAMgAygLMh4udGVuc29yZm'
    'xvdy5SZWdpc3RlcmVkR3JhZGllbnRSE3JlZ2lzdGVyZWRHcmFkaWVudHM=');

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef$json = {
  '1': 'FunctionDef',
  '2': [
    {
      '1': 'signature',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.OpDef',
      '10': 'signature'
    },
    {
      '1': 'attr',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.AttrEntry',
      '10': 'attr'
    },
    {
      '1': 'arg_attr',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ArgAttrEntry',
      '10': 'argAttr'
    },
    {
      '1': 'resource_arg_unique_id',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ResourceArgUniqueIdEntry',
      '10': 'resourceArgUniqueId'
    },
    {
      '1': 'node_def',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NodeDef',
      '10': 'nodeDef'
    },
    {
      '1': 'ret',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.RetEntry',
      '10': 'ret'
    },
    {
      '1': 'control_ret',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ControlRetEntry',
      '10': 'controlRet'
    },
  ],
  '3': [
    FunctionDef_AttrEntry$json,
    FunctionDef_ArgAttrs$json,
    FunctionDef_ArgAttrEntry$json,
    FunctionDef_ResourceArgUniqueIdEntry$json,
    FunctionDef_RetEntry$json,
    FunctionDef_ControlRetEntry$json
  ],
  '9': [
    {'1': 2, '2': 3},
  ],
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_AttrEntry$json = {
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

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ArgAttrs$json = {
  '1': 'ArgAttrs',
  '2': [
    {
      '1': 'attr',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ArgAttrs.AttrEntry',
      '10': 'attr'
    },
  ],
  '3': [FunctionDef_ArgAttrs_AttrEntry$json],
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ArgAttrs_AttrEntry$json = {
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

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ArgAttrEntry$json = {
  '1': 'ArgAttrEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ArgAttrs',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ResourceArgUniqueIdEntry$json = {
  '1': 'ResourceArgUniqueIdEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_RetEntry$json = {
  '1': 'RetEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ControlRetEntry$json = {
  '1': 'ControlRetEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FunctionDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionDefDescriptor = $convert.base64Decode(
    'CgtGdW5jdGlvbkRlZhIvCglzaWduYXR1cmUYASABKAsyES50ZW5zb3JmbG93Lk9wRGVmUglzaW'
    'duYXR1cmUSNQoEYXR0chgFIAMoCzIhLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuQXR0ckVudHJ5'
    'UgRhdHRyEj8KCGFyZ19hdHRyGAcgAygLMiQudGVuc29yZmxvdy5GdW5jdGlvbkRlZi5BcmdBdH'
    'RyRW50cnlSB2FyZ0F0dHISZQoWcmVzb3VyY2VfYXJnX3VuaXF1ZV9pZBgIIAMoCzIwLnRlbnNv'
    'cmZsb3cuRnVuY3Rpb25EZWYuUmVzb3VyY2VBcmdVbmlxdWVJZEVudHJ5UhNyZXNvdXJjZUFyZ1'
    'VuaXF1ZUlkEi4KCG5vZGVfZGVmGAMgAygLMhMudGVuc29yZmxvdy5Ob2RlRGVmUgdub2RlRGVm'
    'EjIKA3JldBgEIAMoCzIgLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuUmV0RW50cnlSA3JldBJICg'
    'tjb250cm9sX3JldBgGIAMoCzInLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuQ29udHJvbFJldEVu'
    'dHJ5Ugpjb250cm9sUmV0Gk4KCUF0dHJFbnRyeRIQCgNrZXkYASABKAlSA2tleRIrCgV2YWx1ZR'
    'gCIAEoCzIVLnRlbnNvcmZsb3cuQXR0clZhbHVlUgV2YWx1ZToCOAEamgEKCEFyZ0F0dHJzEj4K'
    'BGF0dHIYASADKAsyKi50ZW5zb3JmbG93LkZ1bmN0aW9uRGVmLkFyZ0F0dHJzLkF0dHJFbnRyeV'
    'IEYXR0chpOCglBdHRyRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSKwoFdmFsdWUYAiABKAsyFS50'
    'ZW5zb3JmbG93LkF0dHJWYWx1ZVIFdmFsdWU6AjgBGlwKDEFyZ0F0dHJFbnRyeRIQCgNrZXkYAS'
    'ABKA1SA2tleRI2CgV2YWx1ZRgCIAEoCzIgLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuQXJnQXR0'
    'cnNSBXZhbHVlOgI4ARpGChhSZXNvdXJjZUFyZ1VuaXF1ZUlkRW50cnkSEAoDa2V5GAEgASgNUg'
    'NrZXkSFAoFdmFsdWUYAiABKA1SBXZhbHVlOgI4ARo2CghSZXRFbnRyeRIQCgNrZXkYASABKAlS'
    'A2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGj0KD0NvbnRyb2xSZXRFbnRyeRIQCgNrZX'
    'kYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBSgQIAhAD');

@$core.Deprecated('Use gradientDefDescriptor instead')
const GradientDef$json = {
  '1': 'GradientDef',
  '2': [
    {'1': 'function_name', '3': 1, '4': 1, '5': 9, '10': 'functionName'},
    {'1': 'gradient_func', '3': 2, '4': 1, '5': 9, '10': 'gradientFunc'},
  ],
};

/// Descriptor for `GradientDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientDefDescriptor = $convert.base64Decode(
    'CgtHcmFkaWVudERlZhIjCg1mdW5jdGlvbl9uYW1lGAEgASgJUgxmdW5jdGlvbk5hbWUSIwoNZ3'
    'JhZGllbnRfZnVuYxgCIAEoCVIMZ3JhZGllbnRGdW5j');

@$core.Deprecated('Use registeredGradientDescriptor instead')
const RegisteredGradient$json = {
  '1': 'RegisteredGradient',
  '2': [
    {'1': 'gradient_func', '3': 1, '4': 1, '5': 9, '10': 'gradientFunc'},
    {
      '1': 'registered_op_type',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'registeredOpType'
    },
  ],
};

/// Descriptor for `RegisteredGradient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registeredGradientDescriptor = $convert.base64Decode(
    'ChJSZWdpc3RlcmVkR3JhZGllbnQSIwoNZ3JhZGllbnRfZnVuYxgBIAEoCVIMZ3JhZGllbnRGdW'
    '5jEiwKEnJlZ2lzdGVyZWRfb3BfdHlwZRgCIAEoCVIQcmVnaXN0ZXJlZE9wVHlwZQ==');
