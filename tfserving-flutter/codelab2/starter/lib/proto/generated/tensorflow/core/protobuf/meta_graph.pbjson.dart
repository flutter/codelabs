///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/meta_graph.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef$json = const {
  '1': 'MetaGraphDef',
  '2': const [
    const {
      '1': 'meta_info_def',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.MetaGraphDef.MetaInfoDef',
      '10': 'metaInfoDef'
    },
    const {
      '1': 'graph_def',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.GraphDef',
      '10': 'graphDef'
    },
    const {
      '1': 'saver_def',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SaverDef',
      '10': 'saverDef'
    },
    const {
      '1': 'collection_def',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.MetaGraphDef.CollectionDefEntry',
      '10': 'collectionDef'
    },
    const {
      '1': 'signature_def',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.MetaGraphDef.SignatureDefEntry',
      '10': 'signatureDef'
    },
    const {
      '1': 'asset_file_def',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.AssetFileDef',
      '10': 'assetFileDef'
    },
    const {
      '1': 'object_graph_def',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SavedObjectGraph',
      '10': 'objectGraphDef'
    },
  ],
  '3': const [
    MetaGraphDef_MetaInfoDef$json,
    MetaGraphDef_CollectionDefEntry$json,
    MetaGraphDef_SignatureDefEntry$json
  ],
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_MetaInfoDef$json = const {
  '1': 'MetaInfoDef',
  '2': const [
    const {
      '1': 'meta_graph_version',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'metaGraphVersion'
    },
    const {
      '1': 'stripped_op_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.OpList',
      '10': 'strippedOpList'
    },
    const {
      '1': 'any_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'anyInfo'
    },
    const {'1': 'tags', '3': 4, '4': 3, '5': 9, '10': 'tags'},
    const {
      '1': 'tensorflow_version',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'tensorflowVersion'
    },
    const {
      '1': 'tensorflow_git_version',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'tensorflowGitVersion'
    },
    const {
      '1': 'stripped_default_attrs',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'strippedDefaultAttrs'
    },
    const {
      '1': 'function_aliases',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.MetaGraphDef.MetaInfoDef.FunctionAliasesEntry',
      '10': 'functionAliases'
    },
  ],
  '3': const [MetaGraphDef_MetaInfoDef_FunctionAliasesEntry$json],
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_MetaInfoDef_FunctionAliasesEntry$json = const {
  '1': 'FunctionAliasesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_CollectionDefEntry$json = const {
  '1': 'CollectionDefEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CollectionDef',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_SignatureDefEntry$json = const {
  '1': 'SignatureDefEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.SignatureDef',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `MetaGraphDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metaGraphDefDescriptor = $convert.base64Decode(
    'CgxNZXRhR3JhcGhEZWYSSAoNbWV0YV9pbmZvX2RlZhgBIAEoCzIkLnRlbnNvcmZsb3cuTWV0YUdyYXBoRGVmLk1ldGFJbmZvRGVmUgttZXRhSW5mb0RlZhIxCglncmFwaF9kZWYYAiABKAsyFC50ZW5zb3JmbG93LkdyYXBoRGVmUghncmFwaERlZhIxCglzYXZlcl9kZWYYAyABKAsyFC50ZW5zb3JmbG93LlNhdmVyRGVmUghzYXZlckRlZhJSCg5jb2xsZWN0aW9uX2RlZhgEIAMoCzIrLnRlbnNvcmZsb3cuTWV0YUdyYXBoRGVmLkNvbGxlY3Rpb25EZWZFbnRyeVINY29sbGVjdGlvbkRlZhJPCg1zaWduYXR1cmVfZGVmGAUgAygLMioudGVuc29yZmxvdy5NZXRhR3JhcGhEZWYuU2lnbmF0dXJlRGVmRW50cnlSDHNpZ25hdHVyZURlZhI+Cg5hc3NldF9maWxlX2RlZhgGIAMoCzIYLnRlbnNvcmZsb3cuQXNzZXRGaWxlRGVmUgxhc3NldEZpbGVEZWYSRgoQb2JqZWN0X2dyYXBoX2RlZhgHIAEoCzIcLnRlbnNvcmZsb3cuU2F2ZWRPYmplY3RHcmFwaFIOb2JqZWN0R3JhcGhEZWYagwQKC01ldGFJbmZvRGVmEiwKEm1ldGFfZ3JhcGhfdmVyc2lvbhgBIAEoCVIQbWV0YUdyYXBoVmVyc2lvbhI8ChBzdHJpcHBlZF9vcF9saXN0GAIgASgLMhIudGVuc29yZmxvdy5PcExpc3RSDnN0cmlwcGVkT3BMaXN0Ei8KCGFueV9pbmZvGAMgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIHYW55SW5mbxISCgR0YWdzGAQgAygJUgR0YWdzEi0KEnRlbnNvcmZsb3dfdmVyc2lvbhgFIAEoCVIRdGVuc29yZmxvd1ZlcnNpb24SNAoWdGVuc29yZmxvd19naXRfdmVyc2lvbhgGIAEoCVIUdGVuc29yZmxvd0dpdFZlcnNpb24SNAoWc3RyaXBwZWRfZGVmYXVsdF9hdHRycxgHIAEoCFIUc3RyaXBwZWREZWZhdWx0QXR0cnMSZAoQZnVuY3Rpb25fYWxpYXNlcxgIIAMoCzI5LnRlbnNvcmZsb3cuTWV0YUdyYXBoRGVmLk1ldGFJbmZvRGVmLkZ1bmN0aW9uQWxpYXNlc0VudHJ5Ug9mdW5jdGlvbkFsaWFzZXMaQgoURnVuY3Rpb25BbGlhc2VzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARpbChJDb2xsZWN0aW9uRGVmRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSLwoFdmFsdWUYAiABKAsyGS50ZW5zb3JmbG93LkNvbGxlY3Rpb25EZWZSBXZhbHVlOgI4ARpZChFTaWduYXR1cmVEZWZFbnRyeRIQCgNrZXkYASABKAlSA2tleRIuCgV2YWx1ZRgCIAEoCzIYLnRlbnNvcmZsb3cuU2lnbmF0dXJlRGVmUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef$json = const {
  '1': 'CollectionDef',
  '2': const [
    const {
      '1': 'node_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CollectionDef.NodeList',
      '9': 0,
      '10': 'nodeList'
    },
    const {
      '1': 'bytes_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CollectionDef.BytesList',
      '9': 0,
      '10': 'bytesList'
    },
    const {
      '1': 'int64_list',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CollectionDef.Int64List',
      '9': 0,
      '10': 'int64List'
    },
    const {
      '1': 'float_list',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CollectionDef.FloatList',
      '9': 0,
      '10': 'floatList'
    },
    const {
      '1': 'any_list',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.CollectionDef.AnyList',
      '9': 0,
      '10': 'anyList'
    },
  ],
  '3': const [
    CollectionDef_NodeList$json,
    CollectionDef_BytesList$json,
    CollectionDef_Int64List$json,
    CollectionDef_FloatList$json,
    CollectionDef_AnyList$json
  ],
  '8': const [
    const {'1': 'kind'},
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_NodeList$json = const {
  '1': 'NodeList',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_BytesList$json = const {
  '1': 'BytesList',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 12, '10': 'value'},
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_Int64List$json = const {
  '1': 'Int64List',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 3,
      '8': const {'2': true},
      '10': 'value',
    },
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_FloatList$json = const {
  '1': 'FloatList',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 2,
      '8': const {'2': true},
      '10': 'value',
    },
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_AnyList$json = const {
  '1': 'AnyList',
  '2': const [
    const {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'value'
    },
  ],
};

/// Descriptor for `CollectionDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDefDescriptor = $convert.base64Decode(
    'Cg1Db2xsZWN0aW9uRGVmEkEKCW5vZGVfbGlzdBgBIAEoCzIiLnRlbnNvcmZsb3cuQ29sbGVjdGlvbkRlZi5Ob2RlTGlzdEgAUghub2RlTGlzdBJECgpieXRlc19saXN0GAIgASgLMiMudGVuc29yZmxvdy5Db2xsZWN0aW9uRGVmLkJ5dGVzTGlzdEgAUglieXRlc0xpc3QSRAoKaW50NjRfbGlzdBgDIAEoCzIjLnRlbnNvcmZsb3cuQ29sbGVjdGlvbkRlZi5JbnQ2NExpc3RIAFIJaW50NjRMaXN0EkQKCmZsb2F0X2xpc3QYBCABKAsyIy50ZW5zb3JmbG93LkNvbGxlY3Rpb25EZWYuRmxvYXRMaXN0SABSCWZsb2F0TGlzdBI+CghhbnlfbGlzdBgFIAEoCzIhLnRlbnNvcmZsb3cuQ29sbGVjdGlvbkRlZi5BbnlMaXN0SABSB2FueUxpc3QaIAoITm9kZUxpc3QSFAoFdmFsdWUYASADKAlSBXZhbHVlGiEKCUJ5dGVzTGlzdBIUCgV2YWx1ZRgBIAMoDFIFdmFsdWUaJQoJSW50NjRMaXN0EhgKBXZhbHVlGAEgAygDQgIQAVIFdmFsdWUaJQoJRmxvYXRMaXN0EhgKBXZhbHVlGAEgAygCQgIQAVIFdmFsdWUaNQoHQW55TGlzdBIqCgV2YWx1ZRgBIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSBXZhbHVlQgYKBGtpbmQ=');
@$core.Deprecated('Use tensorInfoDescriptor instead')
const TensorInfo$json = const {
  '1': 'TensorInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name'},
    const {
      '1': 'coo_sparse',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorInfo.CooSparse',
      '9': 0,
      '10': 'cooSparse'
    },
    const {
      '1': 'composite_tensor',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorInfo.CompositeTensor',
      '9': 0,
      '10': 'compositeTensor'
    },
    const {
      '1': 'dtype',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
    const {
      '1': 'tensor_shape',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'tensorShape'
    },
  ],
  '3': const [TensorInfo_CooSparse$json, TensorInfo_CompositeTensor$json],
  '8': const [
    const {'1': 'encoding'},
  ],
};

@$core.Deprecated('Use tensorInfoDescriptor instead')
const TensorInfo_CooSparse$json = const {
  '1': 'CooSparse',
  '2': const [
    const {
      '1': 'values_tensor_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'valuesTensorName'
    },
    const {
      '1': 'indices_tensor_name',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'indicesTensorName'
    },
    const {
      '1': 'dense_shape_tensor_name',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'denseShapeTensorName'
    },
  ],
};

@$core.Deprecated('Use tensorInfoDescriptor instead')
const TensorInfo_CompositeTensor$json = const {
  '1': 'CompositeTensor',
  '2': const [
    const {
      '1': 'type_spec',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TypeSpecProto',
      '10': 'typeSpec'
    },
    const {
      '1': 'components',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorInfo',
      '10': 'components'
    },
  ],
};

/// Descriptor for `TensorInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tensorInfoDescriptor = $convert.base64Decode(
    'CgpUZW5zb3JJbmZvEhQKBG5hbWUYASABKAlIAFIEbmFtZRJBCgpjb29fc3BhcnNlGAQgASgLMiAudGVuc29yZmxvdy5UZW5zb3JJbmZvLkNvb1NwYXJzZUgAUgljb29TcGFyc2USUwoQY29tcG9zaXRlX3RlbnNvchgFIAEoCzImLnRlbnNvcmZsb3cuVGVuc29ySW5mby5Db21wb3NpdGVUZW5zb3JIAFIPY29tcG9zaXRlVGVuc29yEioKBWR0eXBlGAIgASgOMhQudGVuc29yZmxvdy5EYXRhVHlwZVIFZHR5cGUSPwoMdGVuc29yX3NoYXBlGAMgASgLMhwudGVuc29yZmxvdy5UZW5zb3JTaGFwZVByb3RvUgt0ZW5zb3JTaGFwZRqgAQoJQ29vU3BhcnNlEiwKEnZhbHVlc190ZW5zb3JfbmFtZRgBIAEoCVIQdmFsdWVzVGVuc29yTmFtZRIuChNpbmRpY2VzX3RlbnNvcl9uYW1lGAIgASgJUhFpbmRpY2VzVGVuc29yTmFtZRI1ChdkZW5zZV9zaGFwZV90ZW5zb3JfbmFtZRgDIAEoCVIUZGVuc2VTaGFwZVRlbnNvck5hbWUagQEKD0NvbXBvc2l0ZVRlbnNvchI2Cgl0eXBlX3NwZWMYASABKAsyGS50ZW5zb3JmbG93LlR5cGVTcGVjUHJvdG9SCHR5cGVTcGVjEjYKCmNvbXBvbmVudHMYAiADKAsyFi50ZW5zb3JmbG93LlRlbnNvckluZm9SCmNvbXBvbmVudHNCCgoIZW5jb2Rpbmc=');
@$core.Deprecated('Use signatureDefDescriptor instead')
const SignatureDef$json = const {
  '1': 'SignatureDef',
  '2': const [
    const {
      '1': 'inputs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SignatureDef.InputsEntry',
      '10': 'inputs'
    },
    const {
      '1': 'outputs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.SignatureDef.OutputsEntry',
      '10': 'outputs'
    },
    const {'1': 'method_name', '3': 3, '4': 1, '5': 9, '10': 'methodName'},
  ],
  '3': const [SignatureDef_InputsEntry$json, SignatureDef_OutputsEntry$json],
};

@$core.Deprecated('Use signatureDefDescriptor instead')
const SignatureDef_InputsEntry$json = const {
  '1': 'InputsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorInfo',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use signatureDefDescriptor instead')
const SignatureDef_OutputsEntry$json = const {
  '1': 'OutputsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorInfo',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `SignatureDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDefDescriptor = $convert.base64Decode(
    'CgxTaWduYXR1cmVEZWYSPAoGaW5wdXRzGAEgAygLMiQudGVuc29yZmxvdy5TaWduYXR1cmVEZWYuSW5wdXRzRW50cnlSBmlucHV0cxI/CgdvdXRwdXRzGAIgAygLMiUudGVuc29yZmxvdy5TaWduYXR1cmVEZWYuT3V0cHV0c0VudHJ5UgdvdXRwdXRzEh8KC21ldGhvZF9uYW1lGAMgASgJUgptZXRob2ROYW1lGlEKC0lucHV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiwKBXZhbHVlGAIgASgLMhYudGVuc29yZmxvdy5UZW5zb3JJbmZvUgV2YWx1ZToCOAEaUgoMT3V0cHV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiwKBXZhbHVlGAIgASgLMhYudGVuc29yZmxvdy5UZW5zb3JJbmZvUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use assetFileDefDescriptor instead')
const AssetFileDef$json = const {
  '1': 'AssetFileDef',
  '2': const [
    const {
      '1': 'tensor_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorInfo',
      '10': 'tensorInfo'
    },
    const {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
  ],
};

/// Descriptor for `AssetFileDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetFileDefDescriptor = $convert.base64Decode(
    'CgxBc3NldEZpbGVEZWYSNwoLdGVuc29yX2luZm8YASABKAsyFi50ZW5zb3JmbG93LlRlbnNvckluZm9SCnRlbnNvckluZm8SGgoIZmlsZW5hbWUYAiABKAlSCGZpbGVuYW1l');
