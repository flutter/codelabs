///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/function.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use functionDefLibraryDescriptor instead')
const FunctionDefLibrary$json = const {
  '1': 'FunctionDefLibrary',
  '2': const [
    const {
      '1': 'function',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef',
      '10': 'function'
    },
    const {
      '1': 'gradient',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.GradientDef',
      '10': 'gradient'
    },
    const {
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
    'ChJGdW5jdGlvbkRlZkxpYnJhcnkSMwoIZnVuY3Rpb24YASADKAsyFy50ZW5zb3JmbG93LkZ1bmN0aW9uRGVmUghmdW5jdGlvbhIzCghncmFkaWVudBgCIAMoCzIXLnRlbnNvcmZsb3cuR3JhZGllbnREZWZSCGdyYWRpZW50ElEKFHJlZ2lzdGVyZWRfZ3JhZGllbnRzGAMgAygLMh4udGVuc29yZmxvdy5SZWdpc3RlcmVkR3JhZGllbnRSE3JlZ2lzdGVyZWRHcmFkaWVudHM=');
@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef$json = const {
  '1': 'FunctionDef',
  '2': const [
    const {
      '1': 'signature',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.OpDef',
      '10': 'signature'
    },
    const {
      '1': 'attr',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.AttrEntry',
      '10': 'attr'
    },
    const {
      '1': 'arg_attr',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ArgAttrEntry',
      '10': 'argAttr'
    },
    const {
      '1': 'resource_arg_unique_id',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ResourceArgUniqueIdEntry',
      '10': 'resourceArgUniqueId'
    },
    const {
      '1': 'node_def',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NodeDef',
      '10': 'nodeDef'
    },
    const {
      '1': 'ret',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.RetEntry',
      '10': 'ret'
    },
    const {
      '1': 'control_ret',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ControlRetEntry',
      '10': 'controlRet'
    },
  ],
  '3': const [
    FunctionDef_AttrEntry$json,
    FunctionDef_ArgAttrs$json,
    FunctionDef_ArgAttrEntry$json,
    FunctionDef_ResourceArgUniqueIdEntry$json,
    FunctionDef_RetEntry$json,
    FunctionDef_ControlRetEntry$json
  ],
  '9': const [
    const {'1': 2, '2': 3},
  ],
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_AttrEntry$json = const {
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

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ArgAttrs$json = const {
  '1': 'ArgAttrs',
  '2': const [
    const {
      '1': 'attr',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ArgAttrs.AttrEntry',
      '10': 'attr'
    },
  ],
  '3': const [FunctionDef_ArgAttrs_AttrEntry$json],
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ArgAttrs_AttrEntry$json = const {
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

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ArgAttrEntry$json = const {
  '1': 'ArgAttrEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FunctionDef.ArgAttrs',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ResourceArgUniqueIdEntry$json = const {
  '1': 'ResourceArgUniqueIdEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_RetEntry$json = const {
  '1': 'RetEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use functionDefDescriptor instead')
const FunctionDef_ControlRetEntry$json = const {
  '1': 'ControlRetEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `FunctionDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionDefDescriptor = $convert.base64Decode(
    'CgtGdW5jdGlvbkRlZhIvCglzaWduYXR1cmUYASABKAsyES50ZW5zb3JmbG93Lk9wRGVmUglzaWduYXR1cmUSNQoEYXR0chgFIAMoCzIhLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuQXR0ckVudHJ5UgRhdHRyEj8KCGFyZ19hdHRyGAcgAygLMiQudGVuc29yZmxvdy5GdW5jdGlvbkRlZi5BcmdBdHRyRW50cnlSB2FyZ0F0dHISZQoWcmVzb3VyY2VfYXJnX3VuaXF1ZV9pZBgIIAMoCzIwLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuUmVzb3VyY2VBcmdVbmlxdWVJZEVudHJ5UhNyZXNvdXJjZUFyZ1VuaXF1ZUlkEi4KCG5vZGVfZGVmGAMgAygLMhMudGVuc29yZmxvdy5Ob2RlRGVmUgdub2RlRGVmEjIKA3JldBgEIAMoCzIgLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuUmV0RW50cnlSA3JldBJICgtjb250cm9sX3JldBgGIAMoCzInLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuQ29udHJvbFJldEVudHJ5Ugpjb250cm9sUmV0Gk4KCUF0dHJFbnRyeRIQCgNrZXkYASABKAlSA2tleRIrCgV2YWx1ZRgCIAEoCzIVLnRlbnNvcmZsb3cuQXR0clZhbHVlUgV2YWx1ZToCOAEamgEKCEFyZ0F0dHJzEj4KBGF0dHIYASADKAsyKi50ZW5zb3JmbG93LkZ1bmN0aW9uRGVmLkFyZ0F0dHJzLkF0dHJFbnRyeVIEYXR0chpOCglBdHRyRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSKwoFdmFsdWUYAiABKAsyFS50ZW5zb3JmbG93LkF0dHJWYWx1ZVIFdmFsdWU6AjgBGlwKDEFyZ0F0dHJFbnRyeRIQCgNrZXkYASABKA1SA2tleRI2CgV2YWx1ZRgCIAEoCzIgLnRlbnNvcmZsb3cuRnVuY3Rpb25EZWYuQXJnQXR0cnNSBXZhbHVlOgI4ARpGChhSZXNvdXJjZUFyZ1VuaXF1ZUlkRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSFAoFdmFsdWUYAiABKA1SBXZhbHVlOgI4ARo2CghSZXRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGj0KD0NvbnRyb2xSZXRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBSgQIAhAD');
@$core.Deprecated('Use gradientDefDescriptor instead')
const GradientDef$json = const {
  '1': 'GradientDef',
  '2': const [
    const {'1': 'function_name', '3': 1, '4': 1, '5': 9, '10': 'functionName'},
    const {'1': 'gradient_func', '3': 2, '4': 1, '5': 9, '10': 'gradientFunc'},
  ],
};

/// Descriptor for `GradientDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientDefDescriptor = $convert.base64Decode(
    'CgtHcmFkaWVudERlZhIjCg1mdW5jdGlvbl9uYW1lGAEgASgJUgxmdW5jdGlvbk5hbWUSIwoNZ3JhZGllbnRfZnVuYxgCIAEoCVIMZ3JhZGllbnRGdW5j');
@$core.Deprecated('Use registeredGradientDescriptor instead')
const RegisteredGradient$json = const {
  '1': 'RegisteredGradient',
  '2': const [
    const {'1': 'gradient_func', '3': 1, '4': 1, '5': 9, '10': 'gradientFunc'},
    const {
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
    'ChJSZWdpc3RlcmVkR3JhZGllbnQSIwoNZ3JhZGllbnRfZnVuYxgBIAEoCVIMZ3JhZGllbnRGdW5jEiwKEnJlZ2lzdGVyZWRfb3BfdHlwZRgCIAEoCVIQcmVnaXN0ZXJlZE9wVHlwZQ==');
