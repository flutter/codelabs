///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/node_def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nodeDefDescriptor instead')
const NodeDef$json = const {
  '1': 'NodeDef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'op', '3': 2, '4': 1, '5': 9, '10': 'op'},
    const {'1': 'input', '3': 3, '4': 3, '5': 9, '10': 'input'},
    const {'1': 'device', '3': 4, '4': 1, '5': 9, '10': 'device'},
    const {
      '1': 'attr',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.NodeDef.AttrEntry',
      '10': 'attr'
    },
    const {
      '1': 'experimental_debug_info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.NodeDef.ExperimentalDebugInfo',
      '10': 'experimentalDebugInfo'
    },
    const {
      '1': 'experimental_type',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FullTypeDef',
      '10': 'experimentalType'
    },
  ],
  '3': const [NodeDef_AttrEntry$json, NodeDef_ExperimentalDebugInfo$json],
};

@$core.Deprecated('Use nodeDefDescriptor instead')
const NodeDef_AttrEntry$json = const {
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

@$core.Deprecated('Use nodeDefDescriptor instead')
const NodeDef_ExperimentalDebugInfo$json = const {
  '1': 'ExperimentalDebugInfo',
  '2': const [
    const {
      '1': 'original_node_names',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'originalNodeNames'
    },
    const {
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
    'CgdOb2RlRGVmEhIKBG5hbWUYASABKAlSBG5hbWUSDgoCb3AYAiABKAlSAm9wEhQKBWlucHV0GAMgAygJUgVpbnB1dBIWCgZkZXZpY2UYBCABKAlSBmRldmljZRIxCgRhdHRyGAUgAygLMh0udGVuc29yZmxvdy5Ob2RlRGVmLkF0dHJFbnRyeVIEYXR0chJhChdleHBlcmltZW50YWxfZGVidWdfaW5mbxgGIAEoCzIpLnRlbnNvcmZsb3cuTm9kZURlZi5FeHBlcmltZW50YWxEZWJ1Z0luZm9SFWV4cGVyaW1lbnRhbERlYnVnSW5mbxJEChFleHBlcmltZW50YWxfdHlwZRgHIAEoCzIXLnRlbnNvcmZsb3cuRnVsbFR5cGVEZWZSEGV4cGVyaW1lbnRhbFR5cGUaTgoJQXR0ckVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EisKBXZhbHVlGAIgASgLMhUudGVuc29yZmxvdy5BdHRyVmFsdWVSBXZhbHVlOgI4ARp3ChVFeHBlcmltZW50YWxEZWJ1Z0luZm8SLgoTb3JpZ2luYWxfbm9kZV9uYW1lcxgBIAMoCVIRb3JpZ2luYWxOb2RlTmFtZXMSLgoTb3JpZ2luYWxfZnVuY19uYW1lcxgCIAMoCVIRb3JpZ2luYWxGdW5jTmFtZXM=');
