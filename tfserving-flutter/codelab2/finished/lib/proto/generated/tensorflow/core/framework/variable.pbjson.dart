///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/variable.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use variableSynchronizationDescriptor instead')
const VariableSynchronization$json = const {
  '1': 'VariableSynchronization',
  '2': const [
    const {'1': 'VARIABLE_SYNCHRONIZATION_AUTO', '2': 0},
    const {'1': 'VARIABLE_SYNCHRONIZATION_NONE', '2': 1},
    const {'1': 'VARIABLE_SYNCHRONIZATION_ON_WRITE', '2': 2},
    const {'1': 'VARIABLE_SYNCHRONIZATION_ON_READ', '2': 3},
  ],
};

/// Descriptor for `VariableSynchronization`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List variableSynchronizationDescriptor =
    $convert.base64Decode(
        'ChdWYXJpYWJsZVN5bmNocm9uaXphdGlvbhIhCh1WQVJJQUJMRV9TWU5DSFJPTklaQVRJT05fQVVUTxAAEiEKHVZBUklBQkxFX1NZTkNIUk9OSVpBVElPTl9OT05FEAESJQohVkFSSUFCTEVfU1lOQ0hST05JWkFUSU9OX09OX1dSSVRFEAISJAogVkFSSUFCTEVfU1lOQ0hST05JWkFUSU9OX09OX1JFQUQQAw==');
@$core.Deprecated('Use variableAggregationDescriptor instead')
const VariableAggregation$json = const {
  '1': 'VariableAggregation',
  '2': const [
    const {'1': 'VARIABLE_AGGREGATION_NONE', '2': 0},
    const {'1': 'VARIABLE_AGGREGATION_SUM', '2': 1},
    const {'1': 'VARIABLE_AGGREGATION_MEAN', '2': 2},
    const {'1': 'VARIABLE_AGGREGATION_ONLY_FIRST_REPLICA', '2': 3},
  ],
};

/// Descriptor for `VariableAggregation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List variableAggregationDescriptor = $convert.base64Decode(
    'ChNWYXJpYWJsZUFnZ3JlZ2F0aW9uEh0KGVZBUklBQkxFX0FHR1JFR0FUSU9OX05PTkUQABIcChhWQVJJQUJMRV9BR0dSRUdBVElPTl9TVU0QARIdChlWQVJJQUJMRV9BR0dSRUdBVElPTl9NRUFOEAISKwonVkFSSUFCTEVfQUdHUkVHQVRJT05fT05MWV9GSVJTVF9SRVBMSUNBEAM=');
@$core.Deprecated('Use variableDefDescriptor instead')
const VariableDef$json = const {
  '1': 'VariableDef',
  '2': const [
    const {'1': 'variable_name', '3': 1, '4': 1, '5': 9, '10': 'variableName'},
    const {
      '1': 'initial_value_name',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'initialValueName'
    },
    const {
      '1': 'initializer_name',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'initializerName'
    },
    const {'1': 'snapshot_name', '3': 3, '4': 1, '5': 9, '10': 'snapshotName'},
    const {
      '1': 'save_slice_info_def',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SaveSliceInfoDef',
      '10': 'saveSliceInfoDef'
    },
    const {'1': 'is_resource', '3': 5, '4': 1, '5': 8, '10': 'isResource'},
    const {'1': 'trainable', '3': 7, '4': 1, '5': 8, '10': 'trainable'},
    const {
      '1': 'synchronization',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.VariableSynchronization',
      '10': 'synchronization'
    },
    const {
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
    'CgtWYXJpYWJsZURlZhIjCg12YXJpYWJsZV9uYW1lGAEgASgJUgx2YXJpYWJsZU5hbWUSLAoSaW5pdGlhbF92YWx1ZV9uYW1lGAYgASgJUhBpbml0aWFsVmFsdWVOYW1lEikKEGluaXRpYWxpemVyX25hbWUYAiABKAlSD2luaXRpYWxpemVyTmFtZRIjCg1zbmFwc2hvdF9uYW1lGAMgASgJUgxzbmFwc2hvdE5hbWUSSwoTc2F2ZV9zbGljZV9pbmZvX2RlZhgEIAEoCzIcLnRlbnNvcmZsb3cuU2F2ZVNsaWNlSW5mb0RlZlIQc2F2ZVNsaWNlSW5mb0RlZhIfCgtpc19yZXNvdXJjZRgFIAEoCFIKaXNSZXNvdXJjZRIcCgl0cmFpbmFibGUYByABKAhSCXRyYWluYWJsZRJNCg9zeW5jaHJvbml6YXRpb24YCCABKA4yIy50ZW5zb3JmbG93LlZhcmlhYmxlU3luY2hyb25pemF0aW9uUg9zeW5jaHJvbml6YXRpb24SQQoLYWdncmVnYXRpb24YCSABKA4yHy50ZW5zb3JmbG93LlZhcmlhYmxlQWdncmVnYXRpb25SC2FnZ3JlZ2F0aW9u');
@$core.Deprecated('Use saveSliceInfoDefDescriptor instead')
const SaveSliceInfoDef$json = const {
  '1': 'SaveSliceInfoDef',
  '2': const [
    const {'1': 'full_name', '3': 1, '4': 1, '5': 9, '10': 'fullName'},
    const {'1': 'full_shape', '3': 2, '4': 3, '5': 3, '10': 'fullShape'},
    const {'1': 'var_offset', '3': 3, '4': 3, '5': 3, '10': 'varOffset'},
    const {'1': 'var_shape', '3': 4, '4': 3, '5': 3, '10': 'varShape'},
  ],
};

/// Descriptor for `SaveSliceInfoDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveSliceInfoDefDescriptor = $convert.base64Decode(
    'ChBTYXZlU2xpY2VJbmZvRGVmEhsKCWZ1bGxfbmFtZRgBIAEoCVIIZnVsbE5hbWUSHQoKZnVsbF9zaGFwZRgCIAMoA1IJZnVsbFNoYXBlEh0KCnZhcl9vZmZzZXQYAyADKANSCXZhck9mZnNldBIbCgl2YXJfc2hhcGUYBCADKANSCHZhclNoYXBl');
