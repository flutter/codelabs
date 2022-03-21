///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/trackable_object_graph.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph$json = const {
  '1': 'TrackableObjectGraph',
  '2': const [
    const {
      '1': 'nodes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject',
      '10': 'nodes'
    },
  ],
  '3': const [TrackableObjectGraph_TrackableObject$json],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject$json = const {
  '1': 'TrackableObject',
  '2': const [
    const {
      '1': 'children',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject.ObjectReference',
      '10': 'children'
    },
    const {
      '1': 'attributes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject.SerializedTensor',
      '10': 'attributes'
    },
    const {
      '1': 'slot_variables',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.tensorflow.TrackableObjectGraph.TrackableObject.SlotVariableReference',
      '10': 'slotVariables'
    },
    const {
      '1': 'registered_saver',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.RegisteredSaver',
      '10': 'registeredSaver'
    },
    const {
      '1': 'has_checkpoint_values',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'hasCheckpointValues'
    },
  ],
  '3': const [
    TrackableObjectGraph_TrackableObject_ObjectReference$json,
    TrackableObjectGraph_TrackableObject_SerializedTensor$json,
    TrackableObjectGraph_TrackableObject_SlotVariableReference$json
  ],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject_ObjectReference$json = const {
  '1': 'ObjectReference',
  '2': const [
    const {'1': 'node_id', '3': 1, '4': 1, '5': 5, '10': 'nodeId'},
    const {'1': 'local_name', '3': 2, '4': 1, '5': 9, '10': 'localName'},
  ],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject_SerializedTensor$json = const {
  '1': 'SerializedTensor',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'full_name', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    const {
      '1': 'checkpoint_key',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'checkpointKey'
    },
    const {
      '1': 'optional_restore',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'optionalRestore'
    },
  ],
};

@$core.Deprecated('Use trackableObjectGraphDescriptor instead')
const TrackableObjectGraph_TrackableObject_SlotVariableReference$json = const {
  '1': 'SlotVariableReference',
  '2': const [
    const {
      '1': 'original_variable_node_id',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'originalVariableNodeId'
    },
    const {'1': 'slot_name', '3': 2, '4': 1, '5': 9, '10': 'slotName'},
    const {
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
    'ChRUcmFja2FibGVPYmplY3RHcmFwaBJGCgVub2RlcxgBIAMoCzIwLnRlbnNvcmZsb3cuVHJhY2thYmxlT2JqZWN0R3JhcGguVHJhY2thYmxlT2JqZWN0UgVub2RlcxrhBgoPVHJhY2thYmxlT2JqZWN0ElwKCGNoaWxkcmVuGAEgAygLMkAudGVuc29yZmxvdy5UcmFja2FibGVPYmplY3RHcmFwaC5UcmFja2FibGVPYmplY3QuT2JqZWN0UmVmZXJlbmNlUghjaGlsZHJlbhJhCgphdHRyaWJ1dGVzGAIgAygLMkEudGVuc29yZmxvdy5UcmFja2FibGVPYmplY3RHcmFwaC5UcmFja2FibGVPYmplY3QuU2VyaWFsaXplZFRlbnNvclIKYXR0cmlidXRlcxJtCg5zbG90X3ZhcmlhYmxlcxgDIAMoCzJGLnRlbnNvcmZsb3cuVHJhY2thYmxlT2JqZWN0R3JhcGguVHJhY2thYmxlT2JqZWN0LlNsb3RWYXJpYWJsZVJlZmVyZW5jZVINc2xvdFZhcmlhYmxlcxJGChByZWdpc3RlcmVkX3NhdmVyGAQgASgLMhsudGVuc29yZmxvdy5SZWdpc3RlcmVkU2F2ZXJSD3JlZ2lzdGVyZWRTYXZlchJOChVoYXNfY2hlY2twb2ludF92YWx1ZXMYBSABKAsyGi5nb29nbGUucHJvdG9idWYuQm9vbFZhbHVlUhNoYXNDaGVja3BvaW50VmFsdWVzGkkKD09iamVjdFJlZmVyZW5jZRIXCgdub2RlX2lkGAEgASgFUgZub2RlSWQSHQoKbG9jYWxfbmFtZRgCIAEoCVIJbG9jYWxOYW1lGpUBChBTZXJpYWxpemVkVGVuc29yEhIKBG5hbWUYASABKAlSBG5hbWUSGwoJZnVsbF9uYW1lGAIgASgJUghmdWxsTmFtZRIlCg5jaGVja3BvaW50X2tleRgDIAEoCVINY2hlY2twb2ludEtleRIpChBvcHRpb25hbF9yZXN0b3JlGAQgASgIUg9vcHRpb25hbFJlc3RvcmUaogEKFVNsb3RWYXJpYWJsZVJlZmVyZW5jZRI5ChlvcmlnaW5hbF92YXJpYWJsZV9ub2RlX2lkGAEgASgFUhZvcmlnaW5hbFZhcmlhYmxlTm9kZUlkEhsKCXNsb3RfbmFtZRgCIAEoCVIIc2xvdE5hbWUSMQoVc2xvdF92YXJpYWJsZV9ub2RlX2lkGAMgASgFUhJzbG90VmFyaWFibGVOb2RlSWQ=');
@$core.Deprecated('Use registeredSaverDescriptor instead')
const RegisteredSaver$json = const {
  '1': 'RegisteredSaver',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'object_name', '3': 2, '4': 1, '5': 9, '10': 'objectName'},
  ],
};

/// Descriptor for `RegisteredSaver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registeredSaverDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlcmVkU2F2ZXISEgoEbmFtZRgBIAEoCVIEbmFtZRIfCgtvYmplY3RfbmFtZRgCIAEoCVIKb2JqZWN0TmFtZQ==');
