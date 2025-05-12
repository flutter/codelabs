//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/variable.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use variableSynchronizationDescriptor instead')
const VariableSynchronization$json = {
  '1': 'VariableSynchronization',
  '2': [
    {'1': 'VARIABLE_SYNCHRONIZATION_AUTO', '2': 0},
    {'1': 'VARIABLE_SYNCHRONIZATION_NONE', '2': 1},
    {'1': 'VARIABLE_SYNCHRONIZATION_ON_WRITE', '2': 2},
    {'1': 'VARIABLE_SYNCHRONIZATION_ON_READ', '2': 3},
  ],
};

/// Descriptor for `VariableSynchronization`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List variableSynchronizationDescriptor = $convert.base64Decode(
    'ChdWYXJpYWJsZVN5bmNocm9uaXphdGlvbhIhCh1WQVJJQUJMRV9TWU5DSFJPTklaQVRJT05fQV'
    'VUTxAAEiEKHVZBUklBQkxFX1NZTkNIUk9OSVpBVElPTl9OT05FEAESJQohVkFSSUFCTEVfU1lO'
    'Q0hST05JWkFUSU9OX09OX1dSSVRFEAISJAogVkFSSUFCTEVfU1lOQ0hST05JWkFUSU9OX09OX1'
    'JFQUQQAw==');

@$core.Deprecated('Use variableAggregationDescriptor instead')
const VariableAggregation$json = {
  '1': 'VariableAggregation',
  '2': [
    {'1': 'VARIABLE_AGGREGATION_NONE', '2': 0},
    {'1': 'VARIABLE_AGGREGATION_SUM', '2': 1},
    {'1': 'VARIABLE_AGGREGATION_MEAN', '2': 2},
    {'1': 'VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA', '2': 3},
  ],
};

/// Descriptor for `VariableAggregation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List variableAggregationDescriptor = $convert.base64Decode(
    'ChNWYXJpYWJsZUFnZ3JlZ2F0aW9uEh0KGVZBUklBQkxFX0FHR1JFR0FUSU9OX05PTkUQABIcCh'
    'hWQVJJQUJMRV9BR0dSRUdBVElPTl9TVU0QARIdChlWQVJJQUJMRV9BR0dSRUdBVElPTl9NRUFO'
    'EAISKwonVkFSSUFCTEVfQUdHUkVHQVRJT05fT05MWV9GSVJTVF9SRVBMSUNBEAM=');

@$core.Deprecated('Use variableDefDescriptor instead')
const VariableDef$json = {
  '1': 'VariableDef',
  '2': [
    {'1': 'variable_name', '3': 1, '4': 1, '5': 9, '10': 'variableName'},
    {
      '1': 'initial_value_name',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'initialValueName'
    },
    {'1': 'initializer_name', '3': 2, '4': 1, '5': 9, '10': 'initializerName'},
    {'1': 'snapshot_name', '3': 3, '4': 1, '5': 9, '10': 'snapshotName'},
    {
      '1': 'save_slice_info_def',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SaveSliceInfoDef',
      '10': 'saveSliceInfoDef'
    },
    {'1': 'is_resource', '3': 5, '4': 1, '5': 8, '10': 'isResource'},
    {'1': 'trainable', '3': 7, '4': 1, '5': 8, '10': 'trainable'},
    {
      '1': 'synchronization',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.VariableSynchronization',
      '10': 'synchronization'
    },
    {
      '1': 'aggregation',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.VariableAggregation',
      '10': 'aggregation'
    },
  ],
};

/// Descriptor for `VariableDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableDefDescriptor = $convert.base64Decode(
    'CgtWYXJpYWJsZURlZhIjCg12YXJpYWJsZV9uYW1lGAEgASgJUgx2YXJpYWJsZU5hbWUSLAoSaW'
    '5pdGlhbF92YWx1ZV9uYW1lGAYgASgJUhBpbml0aWFsVmFsdWVOYW1lEikKEGluaXRpYWxpemVy'
    'X25hbWUYAiABKAlSD2luaXRpYWxpemVyTmFtZRIjCg1zbmFwc2hvdF9uYW1lGAMgASgJUgxzbm'
    'Fwc2hvdE5hbWUSSwoTc2F2ZV9zbGljZV9pbmZvX2RlZhgEIAEoCzIcLnRlbnNvcmZsb3cuU2F2'
    'ZVNsaWNlSW5mb0RlZlIQc2F2ZVNsaWNlSW5mb0RlZhIfCgtpc19yZXNvdXJjZRgFIAEoCFIKaX'
    'NSZXNvdXJjZRIcCgl0cmFpbmFibGUYByABKAhSCXRyYWluYWJsZRJNCg9zeW5jaHJvbml6YXRp'
    'b24YCCABKA4yIy50ZW5zb3JmbG93LlZhcmlhYmxlU3luY2hyb25pemF0aW9uUg9zeW5jaHJvbm'
    'l6YXRpb24SQQoLYWdncmVnYXRpb24YCSABKA4yHy50ZW5zb3JmbG93LlZhcmlhYmxlQWdncmVn'
    'YXRpb25SC2FnZ3JlZ2F0aW9u');

@$core.Deprecated('Use saveSliceInfoDefDescriptor instead')
const SaveSliceInfoDef$json = {
  '1': 'SaveSliceInfoDef',
  '2': [
    {'1': 'full_name', '3': 1, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'full_shape', '3': 2, '4': 3, '5': 3, '10': 'fullShape'},
    {'1': 'var_offset', '3': 3, '4': 3, '5': 3, '10': 'varOffset'},
    {'1': 'var_shape', '3': 4, '4': 3, '5': 3, '10': 'varShape'},
  ],
};

/// Descriptor for `SaveSliceInfoDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveSliceInfoDefDescriptor = $convert.base64Decode(
    'ChBTYXZlU2xpY2VJbmZvRGVmEhsKCWZ1bGxfbmFtZRgBIAEoCVIIZnVsbE5hbWUSHQoKZnVsbF'
    '9zaGFwZRgCIAMoA1IJZnVsbFNoYXBlEh0KCnZhcl9vZmZzZXQYAyADKANSCXZhck9mZnNldBIb'
    'Cgl2YXJfc2hhcGUYBCADKANSCHZhclNoYXBl');
