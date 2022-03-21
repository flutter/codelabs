///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/op_def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use opDefDescriptor instead')
const OpDef$json = const {
  '1': 'OpDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'input_arg',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.ArgDef',
      '10': 'inputArg'
    },
    const {
      '1': 'output_arg',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.ArgDef',
      '10': 'outputArg'
    },
    const {
      '1': 'control_output',
      '3': 20,
      '4': 3,
      '5': 9,
      '10': 'controlOutput'
    },
    const {
      '1': 'attr',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.AttrDef',
      '10': 'attr'
    },
    const {
      '1': 'deprecation',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.OpDeprecation',
      '10': 'deprecation'
    },
    const {'1': 'summary', '3': 5, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'is_commutative',
      '3': 18,
      '4': 1,
      '5': 8,
      '10': 'isCommutative'
    },
    const {'1': 'is_aggregate', '3': 16, '4': 1, '5': 8, '10': 'isAggregate'},
    const {'1': 'is_stateful', '3': 17, '4': 1, '5': 8, '10': 'isStateful'},
    const {
      '1': 'allows_uninitialized_input',
      '3': 19,
      '4': 1,
      '5': 8,
      '10': 'allowsUninitializedInput'
    },
    const {
      '1': 'is_distributed_communication',
      '3': 21,
      '4': 1,
      '5': 8,
      '10': 'isDistributedCommunication'
    },
  ],
  '3': const [OpDef_ArgDef$json, OpDef_AttrDef$json],
};

@$core.Deprecated('Use opDefDescriptor instead')
const OpDef_ArgDef$json = const {
  '1': 'ArgDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'type'
    },
    const {'1': 'type_attr', '3': 4, '4': 1, '5': 9, '10': 'typeAttr'},
    const {'1': 'number_attr', '3': 5, '4': 1, '5': 9, '10': 'numberAttr'},
    const {'1': 'type_list_attr', '3': 6, '4': 1, '5': 9, '10': 'typeListAttr'},
    const {
      '1': 'handle_data',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.ResourceHandleProto.DtypeAndShape',
      '10': 'handleData'
    },
    const {'1': 'is_ref', '3': 16, '4': 1, '5': 8, '10': 'isRef'},
    const {
      '1': 'experimental_full_type',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FullTypeDef',
      '10': 'experimentalFullType'
    },
  ],
};

@$core.Deprecated('Use opDefDescriptor instead')
const OpDef_AttrDef$json = const {
  '1': 'AttrDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {
      '1': 'default_value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'defaultValue'
    },
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'has_minimum', '3': 5, '4': 1, '5': 8, '10': 'hasMinimum'},
    const {'1': 'minimum', '3': 6, '4': 1, '5': 3, '10': 'minimum'},
    const {
      '1': 'allowed_values',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'allowedValues'
    },
  ],
};

/// Descriptor for `OpDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opDefDescriptor = $convert.base64Decode(
    'CgVPcERlZhISCgRuYW1lGAEgASgJUgRuYW1lEjUKCWlucHV0X2FyZxgCIAMoCzIYLnRlbnNvcmZsb3cuT3BEZWYuQXJnRGVmUghpbnB1dEFyZxI3CgpvdXRwdXRfYXJnGAMgAygLMhgudGVuc29yZmxvdy5PcERlZi5BcmdEZWZSCW91dHB1dEFyZxIlCg5jb250cm9sX291dHB1dBgUIAMoCVINY29udHJvbE91dHB1dBItCgRhdHRyGAQgAygLMhkudGVuc29yZmxvdy5PcERlZi5BdHRyRGVmUgRhdHRyEjsKC2RlcHJlY2F0aW9uGAggASgLMhkudGVuc29yZmxvdy5PcERlcHJlY2F0aW9uUgtkZXByZWNhdGlvbhIYCgdzdW1tYXJ5GAUgASgJUgdzdW1tYXJ5EiAKC2Rlc2NyaXB0aW9uGAYgASgJUgtkZXNjcmlwdGlvbhIlCg5pc19jb21tdXRhdGl2ZRgSIAEoCFINaXNDb21tdXRhdGl2ZRIhCgxpc19hZ2dyZWdhdGUYECABKAhSC2lzQWdncmVnYXRlEh8KC2lzX3N0YXRlZnVsGBEgASgIUgppc1N0YXRlZnVsEjwKGmFsbG93c191bmluaXRpYWxpemVkX2lucHV0GBMgASgIUhhhbGxvd3NVbmluaXRpYWxpemVkSW5wdXQSQAocaXNfZGlzdHJpYnV0ZWRfY29tbXVuaWNhdGlvbhgVIAEoCFIaaXNEaXN0cmlidXRlZENvbW11bmljYXRpb24aggMKBkFyZ0RlZhISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIoCgR0eXBlGAMgASgOMhQudGVuc29yZmxvdy5EYXRhVHlwZVIEdHlwZRIbCgl0eXBlX2F0dHIYBCABKAlSCHR5cGVBdHRyEh8KC251bWJlcl9hdHRyGAUgASgJUgpudW1iZXJBdHRyEiQKDnR5cGVfbGlzdF9hdHRyGAYgASgJUgx0eXBlTGlzdEF0dHISTgoLaGFuZGxlX2RhdGEYByADKAsyLS50ZW5zb3JmbG93LlJlc291cmNlSGFuZGxlUHJvdG8uRHR5cGVBbmRTaGFwZVIKaGFuZGxlRGF0YRIVCgZpc19yZWYYECABKAhSBWlzUmVmEk0KFmV4cGVyaW1lbnRhbF9mdWxsX3R5cGUYESABKAsyFy50ZW5zb3JmbG93LkZ1bGxUeXBlRGVmUhRleHBlcmltZW50YWxGdWxsVHlwZRqIAgoHQXR0ckRlZhISCgRuYW1lGAEgASgJUgRuYW1lEhIKBHR5cGUYAiABKAlSBHR5cGUSOgoNZGVmYXVsdF92YWx1ZRgDIAEoCzIVLnRlbnNvcmZsb3cuQXR0clZhbHVlUgxkZWZhdWx0VmFsdWUSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEh8KC2hhc19taW5pbXVtGAUgASgIUgpoYXNNaW5pbXVtEhgKB21pbmltdW0YBiABKANSB21pbmltdW0SPAoOYWxsb3dlZF92YWx1ZXMYByABKAsyFS50ZW5zb3JmbG93LkF0dHJWYWx1ZVINYWxsb3dlZFZhbHVlcw==');
@$core.Deprecated('Use opDeprecationDescriptor instead')
const OpDeprecation$json = const {
  '1': 'OpDeprecation',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'explanation', '3': 2, '4': 1, '5': 9, '10': 'explanation'},
  ],
};

/// Descriptor for `OpDeprecation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opDeprecationDescriptor = $convert.base64Decode(
    'Cg1PcERlcHJlY2F0aW9uEhgKB3ZlcnNpb24YASABKAVSB3ZlcnNpb24SIAoLZXhwbGFuYXRpb24YAiABKAlSC2V4cGxhbmF0aW9u');
@$core.Deprecated('Use opListDescriptor instead')
const OpList$json = const {
  '1': 'OpList',
  '2': const [
    const {
      '1': 'op',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef',
      '10': 'op'
    },
  ],
};

/// Descriptor for `OpList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opListDescriptor = $convert.base64Decode(
    'CgZPcExpc3QSIQoCb3AYASADKAsyES50ZW5zb3JmbG93Lk9wRGVmUgJvcA==');
