//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/node_def.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nodeDefDescriptor instead')
const NodeDef$json = {
  '1': 'NodeDef',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'op', '3': 2, '4': 1, '5': 9, '10': 'op'},
    {'1': 'input', '3': 3, '4': 3, '5': 9, '10': 'input'},
    {'1': 'device', '3': 4, '4': 1, '5': 9, '10': 'device'},
    {
      '1': 'attr',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NodeDef.AttrEntry',
      '10': 'attr'
    },
    {
      '1': 'experimental_debug_info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.NodeDef.ExperimentalDebugInfo',
      '10': 'experimentalDebugInfo'
    },
    {
      '1': 'experimental_type',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FullTypeDef',
      '10': 'experimentalType'
    },
  ],
  '3': [NodeDef_AttrEntry$json, NodeDef_ExperimentalDebugInfo$json],
};

@$core.Deprecated('Use nodeDefDescriptor instead')
const NodeDef_AttrEntry$json = {
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

@$core.Deprecated('Use nodeDefDescriptor instead')
const NodeDef_ExperimentalDebugInfo$json = {
  '1': 'ExperimentalDebugInfo',
  '2': [
    {
      '1': 'original_node_names',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'originalNodeNames'
    },
    {
      '1': 'original_func_names',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'originalFuncNames'
    },
  ],
};

/// Descriptor for `NodeDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDefDescriptor = $convert.base64Decode(
    'CgdOb2RlRGVmEhIKBG5hbWUYASABKAlSBG5hbWUSDgoCb3AYAiABKAlSAm9wEhQKBWlucHV0GA'
    'MgAygJUgVpbnB1dBIWCgZkZXZpY2UYBCABKAlSBmRldmljZRIxCgRhdHRyGAUgAygLMh0udGVu'
    'c29yZmxvdy5Ob2RlRGVmLkF0dHJFbnRyeVIEYXR0chJhChdleHBlcmltZW50YWxfZGVidWdfaW'
    '5mbxgGIAEoCzIpLnRlbnNvcmZsb3cuTm9kZURlZi5FeHBlcmltZW50YWxEZWJ1Z0luZm9SFWV4'
    'cGVyaW1lbnRhbERlYnVnSW5mbxJEChFleHBlcmltZW50YWxfdHlwZRgHIAEoCzIXLnRlbnNvcm'
    'Zsb3cuRnVsbFR5cGVEZWZSEGV4cGVyaW1lbnRhbFR5cGUaTgoJQXR0ckVudHJ5EhAKA2tleRgB'
    'IAEoCVIDa2V5EisKBXZhbHVlGAIgASgLMhUudGVuc29yZmxvdy5BdHRyVmFsdWVSBXZhbHVlOg'
    'I4ARp3ChVFeHBlcmltZW50YWxEZWJ1Z0luZm8SLgoTb3JpZ2luYWxfbm9kZV9uYW1lcxgBIAMo'
    'CVIRb3JpZ2luYWxOb2RlTmFtZXMSLgoTb3JpZ2luYWxfZnVuY19uYW1lcxgCIAMoCVIRb3JpZ2'
    'luYWxGdW5jTmFtZXM=');
