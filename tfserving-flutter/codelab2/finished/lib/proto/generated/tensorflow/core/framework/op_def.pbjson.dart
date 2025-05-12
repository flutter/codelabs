//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/op_def.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use opDefDescriptor instead')
const OpDef$json = {
  '1': 'OpDef',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'input_arg',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.ArgDef',
      '10': 'inputArg'
    },
    {
      '1': 'output_arg',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.ArgDef',
      '10': 'outputArg'
    },
    {'1': 'control_output', '3': 20, '4': 3, '5': 9, '10': 'controlOutput'},
    {
      '1': 'attr',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.OpDef.AttrDef',
      '10': 'attr'
    },
    {
      '1': 'deprecation',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.OpDeprecation',
      '10': 'deprecation'
    },
    {'1': 'summary', '3': 5, '4': 1, '5': 9, '10': 'summary'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    {'1': 'is_commutative', '3': 18, '4': 1, '5': 8, '10': 'isCommutative'},
    {'1': 'is_aggregate', '3': 16, '4': 1, '5': 8, '10': 'isAggregate'},
    {'1': 'is_stateful', '3': 17, '4': 1, '5': 8, '10': 'isStateful'},
    {
      '1': 'allows_uninitialized_input',
      '3': 19,
      '4': 1,
      '5': 8,
      '10': 'allowsUninitializedInput'
    },
    {
      '1': 'is_distributed_communication',
      '3': 21,
      '4': 1,
      '5': 8,
      '10': 'isDistributedCommunication'
    },
  ],
  '3': [OpDef_ArgDef$json, OpDef_AttrDef$json],
};

@$core.Deprecated('Use opDefDescriptor instead')
const OpDef_ArgDef$json = {
  '1': 'ArgDef',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'type'
    },
    {'1': 'type_attr', '3': 4, '4': 1, '5': 9, '10': 'typeAttr'},
    {'1': 'number_attr', '3': 5, '4': 1, '5': 9, '10': 'numberAttr'},
    {'1': 'type_list_attr', '3': 6, '4': 1, '5': 9, '10': 'typeListAttr'},
    {
      '1': 'handle_data',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.ResourceHandleProto.DtypeAndShape',
      '10': 'handleData'
    },
    {'1': 'is_ref', '3': 16, '4': 1, '5': 8, '10': 'isRef'},
    {
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
const OpDef_AttrDef$json = {
  '1': 'AttrDef',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'default_value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.AttrValue',
      '10': 'defaultValue'
    },
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'has_minimum', '3': 5, '4': 1, '5': 8, '10': 'hasMinimum'},
    {'1': 'minimum', '3': 6, '4': 1, '5': 3, '10': 'minimum'},
    {
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
    'CgVPcERlZhISCgRuYW1lGAEgASgJUgRuYW1lEjUKCWlucHV0X2FyZxgCIAMoCzIYLnRlbnNvcm'
    'Zsb3cuT3BEZWYuQXJnRGVmUghpbnB1dEFyZxI3CgpvdXRwdXRfYXJnGAMgAygLMhgudGVuc29y'
    'Zmxvdy5PcERlZi5BcmdEZWZSCW91dHB1dEFyZxIlCg5jb250cm9sX291dHB1dBgUIAMoCVINY2'
    '9udHJvbE91dHB1dBItCgRhdHRyGAQgAygLMhkudGVuc29yZmxvdy5PcERlZi5BdHRyRGVmUgRh'
    'dHRyEjsKC2RlcHJlY2F0aW9uGAggASgLMhkudGVuc29yZmxvdy5PcERlcHJlY2F0aW9uUgtkZX'
    'ByZWNhdGlvbhIYCgdzdW1tYXJ5GAUgASgJUgdzdW1tYXJ5EiAKC2Rlc2NyaXB0aW9uGAYgASgJ'
    'UgtkZXNjcmlwdGlvbhIlCg5pc19jb21tdXRhdGl2ZRgSIAEoCFINaXNDb21tdXRhdGl2ZRIhCg'
    'xpc19hZ2dyZWdhdGUYECABKAhSC2lzQWdncmVnYXRlEh8KC2lzX3N0YXRlZnVsGBEgASgIUgpp'
    'c1N0YXRlZnVsEjwKGmFsbG93c191bmluaXRpYWxpemVkX2lucHV0GBMgASgIUhhhbGxvd3NVbm'
    'luaXRpYWxpemVkSW5wdXQSQAocaXNfZGlzdHJpYnV0ZWRfY29tbXVuaWNhdGlvbhgVIAEoCFIa'
    'aXNEaXN0cmlidXRlZENvbW11bmljYXRpb24aggMKBkFyZ0RlZhISCgRuYW1lGAEgASgJUgRuYW'
    '1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIoCgR0eXBlGAMgASgOMhQudGVu'
    'c29yZmxvdy5EYXRhVHlwZVIEdHlwZRIbCgl0eXBlX2F0dHIYBCABKAlSCHR5cGVBdHRyEh8KC2'
    '51bWJlcl9hdHRyGAUgASgJUgpudW1iZXJBdHRyEiQKDnR5cGVfbGlzdF9hdHRyGAYgASgJUgx0'
    'eXBlTGlzdEF0dHISTgoLaGFuZGxlX2RhdGEYByADKAsyLS50ZW5zb3JmbG93LlJlc291cmNlSG'
    'FuZGxlUHJvdG8uRHR5cGVBbmRTaGFwZVIKaGFuZGxlRGF0YRIVCgZpc19yZWYYECABKAhSBWlz'
    'UmVmEk0KFmV4cGVyaW1lbnRhbF9mdWxsX3R5cGUYESABKAsyFy50ZW5zb3JmbG93LkZ1bGxUeX'
    'BlRGVmUhRleHBlcmltZW50YWxGdWxsVHlwZRqIAgoHQXR0ckRlZhISCgRuYW1lGAEgASgJUgRu'
    'YW1lEhIKBHR5cGUYAiABKAlSBHR5cGUSOgoNZGVmYXVsdF92YWx1ZRgDIAEoCzIVLnRlbnNvcm'
    'Zsb3cuQXR0clZhbHVlUgxkZWZhdWx0VmFsdWUSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2Ny'
    'aXB0aW9uEh8KC2hhc19taW5pbXVtGAUgASgIUgpoYXNNaW5pbXVtEhgKB21pbmltdW0YBiABKA'
    'NSB21pbmltdW0SPAoOYWxsb3dlZF92YWx1ZXMYByABKAsyFS50ZW5zb3JmbG93LkF0dHJWYWx1'
    'ZVINYWxsb3dlZFZhbHVlcw==');

@$core.Deprecated('Use opDeprecationDescriptor instead')
const OpDeprecation$json = {
  '1': 'OpDeprecation',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    {'1': 'explanation', '3': 2, '4': 1, '5': 9, '10': 'explanation'},
  ],
};

/// Descriptor for `OpDeprecation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opDeprecationDescriptor = $convert.base64Decode(
    'Cg1PcERlcHJlY2F0aW9uEhgKB3ZlcnNpb24YASABKAVSB3ZlcnNpb24SIAoLZXhwbGFuYXRpb2'
    '4YAiABKAlSC2V4cGxhbmF0aW9u');

@$core.Deprecated('Use opListDescriptor instead')
const OpList$json = {
  '1': 'OpList',
  '2': [
    {'1': 'op', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.OpDef', '10': 'op'},
  ],
};

/// Descriptor for `OpList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opListDescriptor = $convert.base64Decode(
    'CgZPcExpc3QSIQoCb3AYASADKAsyES50ZW5zb3JmbG93Lk9wRGVmUgJvcA==');
