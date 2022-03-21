///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/saved_object_graph.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use savedObjectGraphDescriptor instead')
const SavedObjectGraph$json = const {
  '1': 'SavedObjectGraph',
  '2': const [
    const {
      '1': 'nodes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SavedObject',
      '10': 'nodes'
    },
    const {
      '1': 'concrete_functions',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SavedObjectGraph.ConcreteFunctionsEntry',
      '10': 'concreteFunctions'
    },
  ],
  '3': const [SavedObjectGraph_ConcreteFunctionsEntry$json],
};

@$core.Deprecated('Use savedObjectGraphDescriptor instead')
const SavedObjectGraph_ConcreteFunctionsEntry$json = const {
  '1': 'ConcreteFunctionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedConcreteFunction',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `SavedObjectGraph`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedObjectGraphDescriptor = $convert.base64Decode(
    'ChBTYXZlZE9iamVjdEdyYXBoEi0KBW5vZGVzGAEgAygLMhcudGVuc29yZmxvdy5TYXZlZE9iamVjdFIFbm9kZXMSYgoSY29uY3JldGVfZnVuY3Rpb25zGAIgAygLMjMudGVuc29yZmxvdy5TYXZlZE9iamVjdEdyYXBoLkNvbmNyZXRlRnVuY3Rpb25zRW50cnlSEWNvbmNyZXRlRnVuY3Rpb25zGmcKFkNvbmNyZXRlRnVuY3Rpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSNwoFdmFsdWUYAiABKAsyIS50ZW5zb3JmbG93LlNhdmVkQ29uY3JldGVGdW5jdGlvblIFdmFsdWU6AjgB');
@$core.Deprecated('Use savedObjectDescriptor instead')
const SavedObject$json = const {
  '1': 'SavedObject',
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
      '1': 'dependencies',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TrackableObjectGraph.TrackableObject.ObjectReference',
      '10': 'dependencies'
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
      '1': 'user_object',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedUserObject',
      '9': 0,
      '10': 'userObject'
    },
    const {
      '1': 'asset',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedAsset',
      '9': 0,
      '10': 'asset'
    },
    const {
      '1': 'function',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedFunction',
      '9': 0,
      '10': 'function'
    },
    const {
      '1': 'variable',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedVariable',
      '9': 0,
      '10': 'variable'
    },
    const {
      '1': 'bare_concrete_function',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedBareConcreteFunction',
      '9': 0,
      '10': 'bareConcreteFunction'
    },
    const {
      '1': 'constant',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedConstant',
      '9': 0,
      '10': 'constant'
    },
    const {
      '1': 'resource',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedResource',
      '9': 0,
      '10': 'resource'
    },
    const {
      '1': 'captured_tensor',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CapturedTensor',
      '9': 0,
      '10': 'capturedTensor'
    },
    const {
      '1': 'saveable_objects',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SavedObject.SaveableObjectsEntry',
      '10': 'saveableObjects'
    },
    const {
      '1': 'registered_name',
      '3': 13,
      '4': 1,
      '5': 9,
      '10': 'registeredName'
    },
    const {
      '1': 'serialized_user_proto',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'serializedUserProto'
    },
    const {
      '1': 'registered_saver',
      '3': 16,
      '4': 1,
      '5': 9,
      '10': 'registeredSaver'
    },
  ],
  '3': const [SavedObject_SaveableObjectsEntry$json],
  '8': const [
    const {'1': 'kind'},
  ],
  '9': const [
    const {'1': 2, '2': 3},
  ],
  '10': const ['attributes'],
};

@$core.Deprecated('Use savedObjectDescriptor instead')
const SavedObject_SaveableObjectsEntry$json = const {
  '1': 'SaveableObjectsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SaveableObject',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `SavedObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedObjectDescriptor = $convert.base64Decode(
    'CgtTYXZlZE9iamVjdBJcCghjaGlsZHJlbhgBIAMoCzJALnRlbnNvcmZsb3cuVHJhY2thYmxlT2JqZWN0R3JhcGguVHJhY2thYmxlT2JqZWN0Lk9iamVjdFJlZmVyZW5jZVIIY2hpbGRyZW4SZAoMZGVwZW5kZW5jaWVzGA8gAygLMkAudGVuc29yZmxvdy5UcmFja2FibGVPYmplY3RHcmFwaC5UcmFja2FibGVPYmplY3QuT2JqZWN0UmVmZXJlbmNlUgxkZXBlbmRlbmNpZXMSbQoOc2xvdF92YXJpYWJsZXMYAyADKAsyRi50ZW5zb3JmbG93LlRyYWNrYWJsZU9iamVjdEdyYXBoLlRyYWNrYWJsZU9iamVjdC5TbG90VmFyaWFibGVSZWZlcmVuY2VSDXNsb3RWYXJpYWJsZXMSPgoLdXNlcl9vYmplY3QYBCABKAsyGy50ZW5zb3JmbG93LlNhdmVkVXNlck9iamVjdEgAUgp1c2VyT2JqZWN0Ei4KBWFzc2V0GAUgASgLMhYudGVuc29yZmxvdy5TYXZlZEFzc2V0SABSBWFzc2V0EjcKCGZ1bmN0aW9uGAYgASgLMhkudGVuc29yZmxvdy5TYXZlZEZ1bmN0aW9uSABSCGZ1bmN0aW9uEjcKCHZhcmlhYmxlGAcgASgLMhkudGVuc29yZmxvdy5TYXZlZFZhcmlhYmxlSABSCHZhcmlhYmxlEl0KFmJhcmVfY29uY3JldGVfZnVuY3Rpb24YCCABKAsyJS50ZW5zb3JmbG93LlNhdmVkQmFyZUNvbmNyZXRlRnVuY3Rpb25IAFIUYmFyZUNvbmNyZXRlRnVuY3Rpb24SNwoIY29uc3RhbnQYCSABKAsyGS50ZW5zb3JmbG93LlNhdmVkQ29uc3RhbnRIAFIIY29uc3RhbnQSNwoIcmVzb3VyY2UYCiABKAsyGS50ZW5zb3JmbG93LlNhdmVkUmVzb3VyY2VIAFIIcmVzb3VyY2USRQoPY2FwdHVyZWRfdGVuc29yGAwgASgLMhoudGVuc29yZmxvdy5DYXB0dXJlZFRlbnNvckgAUg5jYXB0dXJlZFRlbnNvchJXChBzYXZlYWJsZV9vYmplY3RzGAsgAygLMiwudGVuc29yZmxvdy5TYXZlZE9iamVjdC5TYXZlYWJsZU9iamVjdHNFbnRyeVIPc2F2ZWFibGVPYmplY3RzEicKD3JlZ2lzdGVyZWRfbmFtZRgNIAEoCVIOcmVnaXN0ZXJlZE5hbWUSSAoVc2VyaWFsaXplZF91c2VyX3Byb3RvGA4gASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVITc2VyaWFsaXplZFVzZXJQcm90bxIpChByZWdpc3RlcmVkX3NhdmVyGBAgASgJUg9yZWdpc3RlcmVkU2F2ZXIaXgoUU2F2ZWFibGVPYmplY3RzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSMAoFdmFsdWUYAiABKAsyGi50ZW5zb3JmbG93LlNhdmVhYmxlT2JqZWN0UgV2YWx1ZToCOAFCBgoEa2luZEoECAIQA1IKYXR0cmlidXRlcw==');
@$core.Deprecated('Use savedUserObjectDescriptor instead')
const SavedUserObject$json = const {
  '1': 'SavedUserObject',
  '2': const [
    const {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    const {
      '1': 'version',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.VersionDef',
      '10': 'version'
    },
    const {
      '1': 'metadata',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'metadata',
    },
  ],
};

/// Descriptor for `SavedUserObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedUserObjectDescriptor = $convert.base64Decode(
    'Cg9TYXZlZFVzZXJPYmplY3QSHgoKaWRlbnRpZmllchgBIAEoCVIKaWRlbnRpZmllchIwCgd2ZXJzaW9uGAIgASgLMhYudGVuc29yZmxvdy5WZXJzaW9uRGVmUgd2ZXJzaW9uEh4KCG1ldGFkYXRhGAMgASgJQgIYAVIIbWV0YWRhdGE=');
@$core.Deprecated('Use savedAssetDescriptor instead')
const SavedAsset$json = const {
  '1': 'SavedAsset',
  '2': const [
    const {
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
    'CgpTYXZlZEFzc2V0Ei8KFGFzc2V0X2ZpbGVfZGVmX2luZGV4GAEgASgFUhFhc3NldEZpbGVEZWZJbmRleA==');
@$core.Deprecated('Use savedFunctionDescriptor instead')
const SavedFunction$json = const {
  '1': 'SavedFunction',
  '2': const [
    const {
      '1': 'concrete_functions',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'concreteFunctions'
    },
    const {
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
    'Cg1TYXZlZEZ1bmN0aW9uEi0KEmNvbmNyZXRlX2Z1bmN0aW9ucxgBIAMoCVIRY29uY3JldGVGdW5jdGlvbnMSPQoNZnVuY3Rpb25fc3BlYxgCIAEoCzIYLnRlbnNvcmZsb3cuRnVuY3Rpb25TcGVjUgxmdW5jdGlvblNwZWM=');
@$core.Deprecated('Use capturedTensorDescriptor instead')
const CapturedTensor$json = const {
  '1': 'CapturedTensor',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
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
    'Cg5DYXB0dXJlZFRlbnNvchISCgRuYW1lGAEgASgJUgRuYW1lEisKEWNvbmNyZXRlX2Z1bmN0aW9uGAIgASgJUhBjb25jcmV0ZUZ1bmN0aW9u');
@$core.Deprecated('Use savedConcreteFunctionDescriptor instead')
const SavedConcreteFunction$json = const {
  '1': 'SavedConcreteFunction',
  '2': const [
    const {'1': 'bound_inputs', '3': 2, '4': 3, '5': 5, '10': 'boundInputs'},
    const {
      '1': 'canonicalized_input_signature',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'canonicalizedInputSignature'
    },
    const {
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
    'ChVTYXZlZENvbmNyZXRlRnVuY3Rpb24SIQoMYm91bmRfaW5wdXRzGAIgAygFUgtib3VuZElucHV0cxJfCh1jYW5vbmljYWxpemVkX2lucHV0X3NpZ25hdHVyZRgDIAEoCzIbLnRlbnNvcmZsb3cuU3RydWN0dXJlZFZhbHVlUhtjYW5vbmljYWxpemVkSW5wdXRTaWduYXR1cmUSRgoQb3V0cHV0X3NpZ25hdHVyZRgEIAEoCzIbLnRlbnNvcmZsb3cuU3RydWN0dXJlZFZhbHVlUg9vdXRwdXRTaWduYXR1cmU=');
@$core.Deprecated('Use savedBareConcreteFunctionDescriptor instead')
const SavedBareConcreteFunction$json = const {
  '1': 'SavedBareConcreteFunction',
  '2': const [
    const {
      '1': 'concrete_function_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'concreteFunctionName'
    },
    const {
      '1': 'argument_keywords',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'argumentKeywords'
    },
    const {
      '1': 'allowed_positional_arguments',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'allowedPositionalArguments'
    },
    const {
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
final $typed_data.Uint8List savedBareConcreteFunctionDescriptor =
    $convert.base64Decode(
        'ChlTYXZlZEJhcmVDb25jcmV0ZUZ1bmN0aW9uEjQKFmNvbmNyZXRlX2Z1bmN0aW9uX25hbWUYASABKAlSFGNvbmNyZXRlRnVuY3Rpb25OYW1lEisKEWFyZ3VtZW50X2tleXdvcmRzGAIgAygJUhBhcmd1bWVudEtleXdvcmRzEkAKHGFsbG93ZWRfcG9zaXRpb25hbF9hcmd1bWVudHMYAyABKANSGmFsbG93ZWRQb3NpdGlvbmFsQXJndW1lbnRzEj0KDWZ1bmN0aW9uX3NwZWMYBCABKAsyGC50ZW5zb3JmbG93LkZ1bmN0aW9uU3BlY1IMZnVuY3Rpb25TcGVj');
@$core.Deprecated('Use savedConstantDescriptor instead')
const SavedConstant$json = const {
  '1': 'SavedConstant',
  '2': const [
    const {'1': 'operation', '3': 1, '4': 1, '5': 9, '10': 'operation'},
  ],
};

/// Descriptor for `SavedConstant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedConstantDescriptor = $convert.base64Decode(
    'Cg1TYXZlZENvbnN0YW50EhwKCW9wZXJhdGlvbhgBIAEoCVIJb3BlcmF0aW9u');
@$core.Deprecated('Use savedVariableDescriptor instead')
const SavedVariable$json = const {
  '1': 'SavedVariable',
  '2': const [
    const {
      '1': 'dtype',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
    const {
      '1': 'shape',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    const {'1': 'trainable', '3': 3, '4': 1, '5': 8, '10': 'trainable'},
    const {
      '1': 'synchronization',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.VariableSynchronization',
      '10': 'synchronization'
    },
    const {
      '1': 'aggregation',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.VariableAggregation',
      '10': 'aggregation'
    },
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'device', '3': 7, '4': 1, '5': 9, '10': 'device'},
    const {
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
    'Cg1TYXZlZFZhcmlhYmxlEioKBWR0eXBlGAEgASgOMhQudGVuc29yZmxvdy5EYXRhVHlwZVIFZHR5cGUSMgoFc2hhcGUYAiABKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9SBXNoYXBlEhwKCXRyYWluYWJsZRgDIAEoCFIJdHJhaW5hYmxlEk0KD3N5bmNocm9uaXphdGlvbhgEIAEoDjIjLnRlbnNvcmZsb3cuVmFyaWFibGVTeW5jaHJvbml6YXRpb25SD3N5bmNocm9uaXphdGlvbhJBCgthZ2dyZWdhdGlvbhgFIAEoDjIfLnRlbnNvcmZsb3cuVmFyaWFibGVBZ2dyZWdhdGlvblILYWdncmVnYXRpb24SEgoEbmFtZRgGIAEoCVIEbmFtZRIWCgZkZXZpY2UYByABKAlSBmRldmljZRJ6CixleHBlcmltZW50YWxfZGlzdHJpYnV0ZWRfdmFyaWFibGVfY29tcG9uZW50cxgIIAMoCzIZLnRlbnNvcmZsb3cuU2F2ZWRWYXJpYWJsZVIpZXhwZXJpbWVudGFsRGlzdHJpYnV0ZWRWYXJpYWJsZUNvbXBvbmVudHM=');
@$core.Deprecated('Use functionSpecDescriptor instead')
const FunctionSpec$json = const {
  '1': 'FunctionSpec',
  '2': const [
    const {
      '1': 'fullargspec',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'fullargspec'
    },
    const {'1': 'is_method', '3': 2, '4': 1, '5': 8, '10': 'isMethod'},
    const {
      '1': 'input_signature',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'inputSignature'
    },
    const {
      '1': 'jit_compile',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.FunctionSpec.JitCompile',
      '10': 'jitCompile'
    },
  ],
  '4': const [FunctionSpec_JitCompile$json],
  '9': const [
    const {'1': 3, '2': 4},
    const {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use functionSpecDescriptor instead')
const FunctionSpec_JitCompile$json = const {
  '1': 'JitCompile',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'ON', '2': 1},
    const {'1': 'OFF', '2': 2},
  ],
};

/// Descriptor for `FunctionSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionSpecDescriptor = $convert.base64Decode(
    'CgxGdW5jdGlvblNwZWMSPQoLZnVsbGFyZ3NwZWMYASABKAsyGy50ZW5zb3JmbG93LlN0cnVjdHVyZWRWYWx1ZVILZnVsbGFyZ3NwZWMSGwoJaXNfbWV0aG9kGAIgASgIUghpc01ldGhvZBJECg9pbnB1dF9zaWduYXR1cmUYBSABKAsyGy50ZW5zb3JmbG93LlN0cnVjdHVyZWRWYWx1ZVIOaW5wdXRTaWduYXR1cmUSRAoLaml0X2NvbXBpbGUYBiABKA4yIy50ZW5zb3JmbG93LkZ1bmN0aW9uU3BlYy5KaXRDb21waWxlUgpqaXRDb21waWxlIioKCkppdENvbXBpbGUSCwoHREVGQVVMVBAAEgYKAk9OEAESBwoDT0ZGEAJKBAgDEARKBAgEEAU=');
@$core.Deprecated('Use savedResourceDescriptor instead')
const SavedResource$json = const {
  '1': 'SavedResource',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
  ],
};

/// Descriptor for `SavedResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List savedResourceDescriptor = $convert
    .base64Decode('Cg1TYXZlZFJlc291cmNlEhYKBmRldmljZRgBIAEoCVIGZGV2aWNl');
@$core.Deprecated('Use saveableObjectDescriptor instead')
const SaveableObject$json = const {
  '1': 'SaveableObject',
  '2': const [
    const {'1': 'save_function', '3': 2, '4': 1, '5': 5, '10': 'saveFunction'},
    const {
      '1': 'restore_function',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'restoreFunction'
    },
  ],
};

/// Descriptor for `SaveableObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveableObjectDescriptor = $convert.base64Decode(
    'Cg5TYXZlYWJsZU9iamVjdBIjCg1zYXZlX2Z1bmN0aW9uGAIgASgFUgxzYXZlRnVuY3Rpb24SKQoQcmVzdG9yZV9mdW5jdGlvbhgDIAEoBVIPcmVzdG9yZUZ1bmN0aW9u');
