//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saved_object_graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use savedObjectGraphDescriptor instead')
const SavedObjectGraph$json = {
  '1': 'SavedObjectGraph',
  '2': [
    {
      '1': 'nodes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SavedObject',
      '10': 'nodes'
    },
    {
      '1': 'concrete_functions',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SavedObjectGraph.ConcreteFunctionsEntry',
      '10': 'concreteFunctions'
    },
  ],
  '3': [SavedObjectGraph_ConcreteFunctionsEntry$json],
};

@$core.Deprecated('Use savedObjectGraphDescriptor instead')
const SavedObjectGraph_ConcreteFunctionsEntry$json = {
  '1': 'ConcreteFunctionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedConcreteFunction',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `SavedObjectGraph`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedObjectGraphDescriptor = $convert.base64Decode(
    'ChBTYXZlZE9iamVjdEdyYXBoEi0KBW5vZGVzGAEgAygLMhcudGVuc29yZmxvdy5TYXZlZE9iam'
    'VjdFIFbm9kZXMSYgoSY29uY3JldGVfZnVuY3Rpb25zGAIgAygLMjMudGVuc29yZmxvdy5TYXZl'
    'ZE9iamVjdEdyYXBoLkNvbmNyZXRlRnVuY3Rpb25zRW50cnlSEWNvbmNyZXRlRnVuY3Rpb25zGm'
    'cKFkNvbmNyZXRlRnVuY3Rpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSNwoFdmFsdWUYAiAB'
    'KAsyIS50ZW5zb3JmbG93LlNhdmVkQ29uY3JldGVGdW5jdGlvblIFdmFsdWU6AjgB');

@$core.Deprecated('Use savedObjectDescriptor instead')
const SavedObject$json = {
  '1': 'SavedObject',
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
      '1': 'dependencies',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject.ObjectReference',
      '10': 'dependencies'
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
      '1': 'user_object',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedUserObject',
      '9': 0,
      '10': 'userObject'
    },
    {
      '1': 'asset',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedAsset',
      '9': 0,
      '10': 'asset'
    },
    {
      '1': 'function',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedFunction',
      '9': 0,
      '10': 'function'
    },
    {
      '1': 'variable',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedVariable',
      '9': 0,
      '10': 'variable'
    },
    {
      '1': 'bare_concrete_function',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedBareConcreteFunction',
      '9': 0,
      '10': 'bareConcreteFunction'
    },
    {
      '1': 'constant',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedConstant',
      '9': 0,
      '10': 'constant'
    },
    {
      '1': 'resource',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedResource',
      '9': 0,
      '10': 'resource'
    },
    {
      '1': 'captured_tensor',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CapturedTensor',
      '9': 0,
      '10': 'capturedTensor'
    },
    {
      '1': 'saveable_objects',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SavedObject.SaveableObjectsEntry',
      '10': 'saveableObjects'
    },
    {'1': 'registered_name', '3': 13, '4': 1, '5': 9, '10': 'registeredName'},
    {
      '1': 'serialized_user_proto',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'serializedUserProto'
    },
    {'1': 'registered_saver', '3': 16, '4': 1, '5': 9, '10': 'registeredSaver'},
  ],
  '3': [SavedObject_SaveableObjectsEntry$json],
  '8': [
    {'1': 'kind'},
  ],
  '9': [
    {'1': 2, '2': 3},
  ],
  '10': ['attributes'],
};

@$core.Deprecated('Use savedObjectDescriptor instead')
const SavedObject_SaveableObjectsEntry$json = {
  '1': 'SaveableObjectsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SaveableObject',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `SavedObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedObjectDescriptor = $convert.base64Decode(
    'CgtTYXZlZE9iamVjdBJcCghjaGlsZHJlbhgBIAMoCzJALnRlbnNvcmZsb3cuVHJhY2thYmxlT2'
    'JqZWN0R3JhcGguVHJhY2thYmxlT2JqZWN0Lk9iamVjdFJlZmVyZW5jZVIIY2hpbGRyZW4SZAoM'
    'ZGVwZW5kZW5jaWVzGA8gAygLMkAudGVuc29yZmxvdy5UcmFja2FibGVPYmplY3RHcmFwaC5Ucm'
    'Fja2FibGVPYmplY3QuT2JqZWN0UmVmZXJlbmNlUgxkZXBlbmRlbmNpZXMSbQoOc2xvdF92YXJp'
    'YWJsZXMYAyADKAsyRi50ZW5zb3JmbG93LlRyYWNrYWJsZU9iamVjdEdyYXBoLlRyYWNrYWJsZU'
    '9iamVjdC5TbG90VmFyaWFibGVSZWZlcmVuY2VSDXNsb3RWYXJpYWJsZXMSPgoLdXNlcl9vYmpl'
    'Y3QYBCABKAsyGy50ZW5zb3JmbG93LlNhdmVkVXNlck9iamVjdEgAUgp1c2VyT2JqZWN0Ei4KBW'
    'Fzc2V0GAUgASgLMhYudGVuc29yZmxvdy5TYXZlZEFzc2V0SABSBWFzc2V0EjcKCGZ1bmN0aW9u'
    'GAYgASgLMhkudGVuc29yZmxvdy5TYXZlZEZ1bmN0aW9uSABSCGZ1bmN0aW9uEjcKCHZhcmlhYm'
    'xlGAcgASgLMhkudGVuc29yZmxvdy5TYXZlZFZhcmlhYmxlSABSCHZhcmlhYmxlEl0KFmJhcmVf'
    'Y29uY3JldGVfZnVuY3Rpb24YCCABKAsyJS50ZW5zb3JmbG93LlNhdmVkQmFyZUNvbmNyZXRlRn'
    'VuY3Rpb25IAFIUYmFyZUNvbmNyZXRlRnVuY3Rpb24SNwoIY29uc3RhbnQYCSABKAsyGS50ZW5z'
    'b3JmbG93LlNhdmVkQ29uc3RhbnRIAFIIY29uc3RhbnQSNwoIcmVzb3VyY2UYCiABKAsyGS50ZW'
    '5zb3JmbG93LlNhdmVkUmVzb3VyY2VIAFIIcmVzb3VyY2USRQoPY2FwdHVyZWRfdGVuc29yGAwg'
    'ASgLMhoudGVuc29yZmxvdy5DYXB0dXJlZFRlbnNvckgAUg5jYXB0dXJlZFRlbnNvchJXChBzYX'
    'ZlYWJsZV9vYmplY3RzGAsgAygLMiwudGVuc29yZmxvdy5TYXZlZE9iamVjdC5TYXZlYWJsZU9i'
    'amVjdHNFbnRyeVIPc2F2ZWFibGVPYmplY3RzEicKD3JlZ2lzdGVyZWRfbmFtZRgNIAEoCVIOcm'
    'VnaXN0ZXJlZE5hbWUSSAoVc2VyaWFsaXplZF91c2VyX3Byb3RvGA4gASgLMhQuZ29vZ2xlLnBy'
    'b3RvYnVmLkFueVITc2VyaWFsaXplZFVzZXJQcm90bxIpChByZWdpc3RlcmVkX3NhdmVyGBAgAS'
    'gJUg9yZWdpc3RlcmVkU2F2ZXIaXgoUU2F2ZWFibGVPYmplY3RzRW50cnkSEAoDa2V5GAEgASgJ'
    'UgNrZXkSMAoFdmFsdWUYAiABKAsyGi50ZW5zb3JmbG93LlNhdmVhYmxlT2JqZWN0UgV2YWx1ZT'
    'oCOAFCBgoEa2luZEoECAIQA1IKYXR0cmlidXRlcw==');

@$core.Deprecated('Use savedUserObjectDescriptor instead')
const SavedUserObject$json = {
  '1': 'SavedUserObject',
  '2': [
    {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    {
      '1': 'version',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.VersionDef',
      '10': 'version'
    },
    {
      '1': 'metadata',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'metadata',
    },
  ],
};

/// Descriptor for `SavedUserObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedUserObjectDescriptor = $convert.base64Decode(
    'Cg9TYXZlZFVzZXJPYmplY3QSHgoKaWRlbnRpZmllchgBIAEoCVIKaWRlbnRpZmllchIwCgd2ZX'
    'JzaW9uGAIgASgLMhYudGVuc29yZmxvdy5WZXJzaW9uRGVmUgd2ZXJzaW9uEh4KCG1ldGFkYXRh'
    'GAMgASgJQgIYAVIIbWV0YWRhdGE=');

@$core.Deprecated('Use savedAssetDescriptor instead')
const SavedAsset$json = {
  '1': 'SavedAsset',
  '2': [
    {
      '1': 'asset_file_def_index',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'assetFileDefIndex'
    },
  ],
};

/// Descriptor for `SavedAsset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedAssetDescriptor = $convert.base64Decode(
    'CgpTYXZlZEFzc2V0Ei8KFGFzc2V0X2ZpbGVfZGVmX2luZGV4GAEgASgFUhFhc3NldEZpbGVEZW'
    'ZJbmRleA==');

@$core.Deprecated('Use savedFunctionDescriptor instead')
const SavedFunction$json = {
  '1': 'SavedFunction',
  '2': [
    {
      '1': 'concrete_functions',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'concreteFunctions'
    },
    {
      '1': 'function_spec',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FunctionSpec',
      '10': 'functionSpec'
    },
  ],
};

/// Descriptor for `SavedFunction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedFunctionDescriptor = $convert.base64Decode(
    'Cg1TYXZlZEZ1bmN0aW9uEi0KEmNvbmNyZXRlX2Z1bmN0aW9ucxgBIAMoCVIRY29uY3JldGVGdW'
    '5jdGlvbnMSPQoNZnVuY3Rpb25fc3BlYxgCIAEoCzIYLnRlbnNvcmZsb3cuRnVuY3Rpb25TcGVj'
    'UgxmdW5jdGlvblNwZWM=');

@$core.Deprecated('Use capturedTensorDescriptor instead')
const CapturedTensor$json = {
  '1': 'CapturedTensor',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'concrete_function',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'concreteFunction'
    },
  ],
};

/// Descriptor for `CapturedTensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List capturedTensorDescriptor = $convert.base64Decode(
    'Cg5DYXB0dXJlZFRlbnNvchISCgRuYW1lGAEgASgJUgRuYW1lEisKEWNvbmNyZXRlX2Z1bmN0aW'
    '9uGAIgASgJUhBjb25jcmV0ZUZ1bmN0aW9u');

@$core.Deprecated('Use savedConcreteFunctionDescriptor instead')
const SavedConcreteFunction$json = {
  '1': 'SavedConcreteFunction',
  '2': [
    {'1': 'bound_inputs', '3': 2, '4': 3, '5': 5, '10': 'boundInputs'},
    {
      '1': 'canonicalized_input_signature',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'canonicalizedInputSignature'
    },
    {
      '1': 'output_signature',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'outputSignature'
    },
  ],
};

/// Descriptor for `SavedConcreteFunction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedConcreteFunctionDescriptor = $convert.base64Decode(
    'ChVTYXZlZENvbmNyZXRlRnVuY3Rpb24SIQoMYm91bmRfaW5wdXRzGAIgAygFUgtib3VuZElucH'
    'V0cxJfCh1jYW5vbmljYWxpemVkX2lucHV0X3NpZ25hdHVyZRgDIAEoCzIbLnRlbnNvcmZsb3cu'
    'U3RydWN0dXJlZFZhbHVlUhtjYW5vbmljYWxpemVkSW5wdXRTaWduYXR1cmUSRgoQb3V0cHV0X3'
    'NpZ25hdHVyZRgEIAEoCzIbLnRlbnNvcmZsb3cuU3RydWN0dXJlZFZhbHVlUg9vdXRwdXRTaWdu'
    'YXR1cmU=');

@$core.Deprecated('Use savedBareConcreteFunctionDescriptor instead')
const SavedBareConcreteFunction$json = {
  '1': 'SavedBareConcreteFunction',
  '2': [
    {
      '1': 'concrete_function_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'concreteFunctionName'
    },
    {
      '1': 'argument_keywords',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'argumentKeywords'
    },
    {
      '1': 'allowed_positional_arguments',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'allowedPositionalArguments'
    },
    {
      '1': 'function_spec',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.FunctionSpec',
      '10': 'functionSpec'
    },
  ],
};

/// Descriptor for `SavedBareConcreteFunction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedBareConcreteFunctionDescriptor = $convert.base64Decode(
    'ChlTYXZlZEJhcmVDb25jcmV0ZUZ1bmN0aW9uEjQKFmNvbmNyZXRlX2Z1bmN0aW9uX25hbWUYAS'
    'ABKAlSFGNvbmNyZXRlRnVuY3Rpb25OYW1lEisKEWFyZ3VtZW50X2tleXdvcmRzGAIgAygJUhBh'
    'cmd1bWVudEtleXdvcmRzEkAKHGFsbG93ZWRfcG9zaXRpb25hbF9hcmd1bWVudHMYAyABKANSGm'
    'FsbG93ZWRQb3NpdGlvbmFsQXJndW1lbnRzEj0KDWZ1bmN0aW9uX3NwZWMYBCABKAsyGC50ZW5z'
    'b3JmbG93LkZ1bmN0aW9uU3BlY1IMZnVuY3Rpb25TcGVj');

@$core.Deprecated('Use savedConstantDescriptor instead')
const SavedConstant$json = {
  '1': 'SavedConstant',
  '2': [
    {'1': 'operation', '3': 1, '4': 1, '5': 9, '10': 'operation'},
  ],
};

/// Descriptor for `SavedConstant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedConstantDescriptor = $convert.base64Decode(
    'Cg1TYXZlZENvbnN0YW50EhwKCW9wZXJhdGlvbhgBIAEoCVIJb3BlcmF0aW9u');

@$core.Deprecated('Use savedVariableDescriptor instead')
const SavedVariable$json = {
  '1': 'SavedVariable',
  '2': [
    {
      '1': 'dtype',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
    {
      '1': 'shape',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    {'1': 'trainable', '3': 3, '4': 1, '5': 8, '10': 'trainable'},
    {
      '1': 'synchronization',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.VariableSynchronization',
      '10': 'synchronization'
    },
    {
      '1': 'aggregation',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.VariableAggregation',
      '10': 'aggregation'
    },
    {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    {'1': 'device', '3': 7, '4': 1, '5': 9, '10': 'device'},
    {
      '1': 'experimental_distributed_variable_components',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SavedVariable',
      '10': 'experimentalDistributedVariableComponents'
    },
  ],
};

/// Descriptor for `SavedVariable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedVariableDescriptor = $convert.base64Decode(
    'Cg1TYXZlZFZhcmlhYmxlEioKBWR0eXBlGAEgASgOMhQudGVuc29yZmxvdy5EYXRhVHlwZVIFZH'
    'R5cGUSMgoFc2hhcGUYAiABKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9SBXNoYXBl'
    'EhwKCXRyYWluYWJsZRgDIAEoCFIJdHJhaW5hYmxlEk0KD3N5bmNocm9uaXphdGlvbhgEIAEoDj'
    'IjLnRlbnNvcmZsb3cuVmFyaWFibGVTeW5jaHJvbml6YXRpb25SD3N5bmNocm9uaXphdGlvbhJB'
    'CgthZ2dyZWdhdGlvbhgFIAEoDjIfLnRlbnNvcmZsb3cuVmFyaWFibGVBZ2dyZWdhdGlvblILYW'
    'dncmVnYXRpb24SEgoEbmFtZRgGIAEoCVIEbmFtZRIWCgZkZXZpY2UYByABKAlSBmRldmljZRJ6'
    'CixleHBlcmltZW50YWxfZGlzdHJpYnV0ZWRfdmFyaWFibGVfY29tcG9uZW50cxgIIAMoCzIZLn'
    'RlbnNvcmZsb3cuU2F2ZWRWYXJpYWJsZVIpZXhwZXJpbWVudGFsRGlzdHJpYnV0ZWRWYXJpYWJs'
    'ZUNvbXBvbmVudHM=');

@$core.Deprecated('Use functionSpecDescriptor instead')
const FunctionSpec$json = {
  '1': 'FunctionSpec',
  '2': [
    {
      '1': 'fullargspec',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'fullargspec'
    },
    {'1': 'is_method', '3': 2, '4': 1, '5': 8, '10': 'isMethod'},
    {
      '1': 'input_signature',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'inputSignature'
    },
    {
      '1': 'jit_compile',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.FunctionSpec.JitCompile',
      '10': 'jitCompile'
    },
  ],
  '4': [FunctionSpec_JitCompile$json],
  '9': [
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use functionSpecDescriptor instead')
const FunctionSpec_JitCompile$json = {
  '1': 'JitCompile',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'ON', '2': 1},
    {'1': 'OFF', '2': 2},
  ],
};

/// Descriptor for `FunctionSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionSpecDescriptor = $convert.base64Decode(
    'CgxGdW5jdGlvblNwZWMSPQoLZnVsbGFyZ3NwZWMYASABKAsyGy50ZW5zb3JmbG93LlN0cnVjdH'
    'VyZWRWYWx1ZVILZnVsbGFyZ3NwZWMSGwoJaXNfbWV0aG9kGAIgASgIUghpc01ldGhvZBJECg9p'
    'bnB1dF9zaWduYXR1cmUYBSABKAsyGy50ZW5zb3JmbG93LlN0cnVjdHVyZWRWYWx1ZVIOaW5wdX'
    'RTaWduYXR1cmUSRAoLaml0X2NvbXBpbGUYBiABKA4yIy50ZW5zb3JmbG93LkZ1bmN0aW9uU3Bl'
    'Yy5KaXRDb21waWxlUgpqaXRDb21waWxlIioKCkppdENvbXBpbGUSCwoHREVGQVVMVBAAEgYKAk'
    '9OEAESBwoDT0ZGEAJKBAgDEARKBAgEEAU=');

@$core.Deprecated('Use savedResourceDescriptor instead')
const SavedResource$json = {
  '1': 'SavedResource',
  '2': [
    {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
  ],
};

/// Descriptor for `SavedResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedResourceDescriptor = $convert
    .base64Decode('Cg1TYXZlZFJlc291cmNlEhYKBmRldmljZRgBIAEoCVIGZGV2aWNl');

@$core.Deprecated('Use saveableObjectDescriptor instead')
const SaveableObject$json = {
  '1': 'SaveableObject',
  '2': [
    {'1': 'save_function', '3': 2, '4': 1, '5': 5, '10': 'saveFunction'},
    {'1': 'restore_function', '3': 3, '4': 1, '5': 5, '10': 'restoreFunction'},
  ],
};

/// Descriptor for `SaveableObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveableObjectDescriptor = $convert.base64Decode(
    'Cg5TYXZlYWJsZU9iamVjdBIjCg1zYXZlX2Z1bmN0aW9uGAIgASgFUgxzYXZlRnVuY3Rpb24SKQ'
    'oQcmVzdG9yZV9mdW5jdGlvbhgDIAEoBVIPcmVzdG9yZUZ1bmN0aW9u');
