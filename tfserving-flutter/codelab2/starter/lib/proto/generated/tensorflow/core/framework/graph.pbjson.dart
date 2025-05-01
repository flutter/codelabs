//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use graphDefDescriptor instead')
const GraphDef$json = {
  '1': 'GraphDef',
  '2': [
    {'1': 'node', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.NodeDef', '10': 'node'},
    {'1': 'versions', '3': 4, '4': 1, '5': 11, '6': '.tensorflow.VersionDef', '10': 'versions'},
    {
      '1': 'version',
      '3': 3,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'version',
    },
    {'1': 'library', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.FunctionDefLibrary', '10': 'library'},
  ],
};

/// Descriptor for `GraphDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List graphDefDescriptor = $convert.base64Decode(
    'CghHcmFwaERlZhInCgRub2RlGAEgAygLMhMudGVuc29yZmxvdy5Ob2RlRGVmUgRub2RlEjIKCH'
    'ZlcnNpb25zGAQgASgLMhYudGVuc29yZmxvdy5WZXJzaW9uRGVmUgh2ZXJzaW9ucxIcCgd2ZXJz'
    'aW9uGAMgASgFQgIYAVIHdmVyc2lvbhI4CgdsaWJyYXJ5GAIgASgLMh4udGVuc29yZmxvdy5GdW'
    '5jdGlvbkRlZkxpYnJhcnlSB2xpYnJhcnk=');

