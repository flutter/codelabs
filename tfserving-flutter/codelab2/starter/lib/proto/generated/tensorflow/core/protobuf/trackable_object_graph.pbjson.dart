//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/trackable_object_graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph$json = {
  '1': 'TrackableObjectGraph',
  '2': [
    {
      '1': 'nodes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject',
      '10': 'nodes'
    },
  ],
  '3': [TrackableObjectGraph_TrackableObject$json],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject$json = {
  '1': 'TrackableObject',
  '2': [
    {
      '1': 'children',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject.ObjectReference',
      '10': 'children'
    },
    {
      '1': 'attributes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject.SerializedTensor',
      '10': 'attributes'
    },
    {
      '1': 'slot_variables',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.tensorflow.TrackableObjectGraph.TrackableObject.SlotVariableReference',
      '10': 'slotVariables'
    },
    {
      '1': 'registered_saver',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.RegisteredSaver',
      '10': 'registeredSaver'
    },
    {
      '1': 'has_checkpoint_values',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'hasCheckpointValues'
    },
  ],
  '3': [
    TrackableObjectGraph_TrackableObject_ObjectReference$json,
    TrackableObjectGraph_TrackableObject_SerializedTensor$json,
    TrackableObjectGraph_TrackableObject_SlotVariableReference$json
  ],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject_ObjectReference$json = {
  '1': 'ObjectReference',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 5, '10': 'nodeId'},
    {'1': 'local_name', '3': 2, '4': 1, '5': 9, '10': 'localName'},
  ],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject_SerializedTensor$json = {
  '1': 'SerializedTensor',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'full_name', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'checkpoint_key', '3': 3, '4': 1, '5': 9, '10': 'checkpointKey'},
    {'1': 'optional_restore', '3': 4, '4': 1, '5': 8, '10': 'optionalRestore'},
  ],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject_SlotVariableReference$json = {
  '1': 'SlotVariableReference',
  '2': [
    {
      '1': 'original_variable_node_id',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'originalVariableNodeId'
    },
    {'1': 'slot_name', '3': 2, '4': 1, '5': 9, '10': 'slotName'},
    {
      '1': 'slot_variable_node_id',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'slotVariableNodeId'
    },
  ],
};

/// Descriptor for `TrackableObjectGraph`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackableObjectGraphDescriptor = $convert.base64Decode(
    'ChRUcmFja2FibGVPYmplY3RHcmFwaBJGCgVub2RlcxgBIAMoCzIwLnRlbnNvcmZsb3cuVHJhY2'
    'thYmxlT2JqZWN0R3JhcGguVHJhY2thYmxlT2JqZWN0UgVub2RlcxrhBgoPVHJhY2thYmxlT2Jq'
    'ZWN0ElwKCGNoaWxkcmVuGAEgAygLMkAudGVuc29yZmxvdy5UcmFja2FibGVPYmplY3RHcmFwaC'
    '5UcmFja2FibGVPYmplY3QuT2JqZWN0UmVmZXJlbmNlUghjaGlsZHJlbhJhCgphdHRyaWJ1dGVz'
    'GAIgAygLMkEudGVuc29yZmxvdy5UcmFja2FibGVPYmplY3RHcmFwaC5UcmFja2FibGVPYmplY3'
    'QuU2VyaWFsaXplZFRlbnNvclIKYXR0cmlidXRlcxJtCg5zbG90X3ZhcmlhYmxlcxgDIAMoCzJG'
    'LnRlbnNvcmZsb3cuVHJhY2thYmxlT2JqZWN0R3JhcGguVHJhY2thYmxlT2JqZWN0LlNsb3RWYX'
    'JpYWJsZVJlZmVyZW5jZVINc2xvdFZhcmlhYmxlcxJGChByZWdpc3RlcmVkX3NhdmVyGAQgASgL'
    'MhsudGVuc29yZmxvdy5SZWdpc3RlcmVkU2F2ZXJSD3JlZ2lzdGVyZWRTYXZlchJOChVoYXNfY2'
    'hlY2twb2ludF92YWx1ZXMYBSABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUhNoYXND'
    'aGVja3BvaW50VmFsdWVzGkkKD09iamVjdFJlZmVyZW5jZRIXCgdub2RlX2lkGAEgASgFUgZub2'
    'RlSWQSHQoKbG9jYWxfbmFtZRgCIAEoCVIJbG9jYWxOYW1lGpUBChBTZXJpYWxpemVkVGVuc29y'
    'EhIKBG5hbWUYASABKAlSBG5hbWUSGwoJZnVsbF9uYW1lGAIgASgJUghmdWxsTmFtZRIlCg5jaG'
    'Vja3BvaW50X2tleRgDIAEoCVINY2hlY2twb2ludEtleRIpChBvcHRpb25hbF9yZXN0b3JlGAQg'
    'ASgIUg9vcHRpb25hbFJlc3RvcmUaogEKFVNsb3RWYXJpYWJsZVJlZmVyZW5jZRI5ChlvcmlnaW'
    '5hbF92YXJpYWJsZV9ub2RlX2lkGAEgASgFUhZvcmlnaW5hbFZhcmlhYmxlTm9kZUlkEhsKCXNs'
    'b3RfbmFtZRgCIAEoCVIIc2xvdE5hbWUSMQoVc2xvdF92YXJpYWJsZV9ub2RlX2lkGAMgASgFUh'
    'JzbG90VmFyaWFibGVOb2RlSWQ=');

@$core.Deprecated('Use registeredSaverDescriptor instead')
const RegisteredSaver$json = {
  '1': 'RegisteredSaver',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'object_name', '3': 2, '4': 1, '5': 9, '10': 'objectName'},
  ],
};

/// Descriptor for `RegisteredSaver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registeredSaverDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlcmVkU2F2ZXISEgoEbmFtZRgBIAEoCVIEbmFtZRIfCgtvYmplY3RfbmFtZRgCIA'
    'EoCVIKb2JqZWN0TmFtZQ==');
