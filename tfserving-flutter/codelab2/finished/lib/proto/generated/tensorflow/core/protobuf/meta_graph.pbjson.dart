//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/meta_graph.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef$json = {
  '1': 'MetaGraphDef',
  '2': [
    {'1': 'meta_info_def', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.MetaGraphDef.MetaInfoDef', '10': 'metaInfoDef'},
    {'1': 'graph_def', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.GraphDef', '10': 'graphDef'},
    {'1': 'saver_def', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.SaverDef', '10': 'saverDef'},
    {'1': 'collection_def', '3': 4, '4': 3, '5': 11, '6': '.tensorflow.MetaGraphDef.CollectionDefEntry', '10': 'collectionDef'},
    {'1': 'signature_def', '3': 5, '4': 3, '5': 11, '6': '.tensorflow.MetaGraphDef.SignatureDefEntry', '10': 'signatureDef'},
    {'1': 'asset_file_def', '3': 6, '4': 3, '5': 11, '6': '.tensorflow.AssetFileDef', '10': 'assetFileDef'},
    {'1': 'object_graph_def', '3': 7, '4': 1, '5': 11, '6': '.tensorflow.SavedObjectGraph', '10': 'objectGraphDef'},
  ],
  '3': [MetaGraphDef_MetaInfoDef$json, MetaGraphDef_CollectionDefEntry$json, MetaGraphDef_SignatureDefEntry$json],
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_MetaInfoDef$json = {
  '1': 'MetaInfoDef',
  '2': [
    {'1': 'meta_graph_version', '3': 1, '4': 1, '5': 9, '10': 'metaGraphVersion'},
    {'1': 'stripped_op_list', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.OpList', '10': 'strippedOpList'},
    {'1': 'any_info', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'anyInfo'},
    {'1': 'tags', '3': 4, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'tensorflow_version', '3': 5, '4': 1, '5': 9, '10': 'tensorflowVersion'},
    {'1': 'tensorflow_git_version', '3': 6, '4': 1, '5': 9, '10': 'tensorflowGitVersion'},
    {'1': 'stripped_default_attrs', '3': 7, '4': 1, '5': 8, '10': 'strippedDefaultAttrs'},
    {'1': 'function_aliases', '3': 8, '4': 3, '5': 11, '6': '.tensorflow.MetaGraphDef.MetaInfoDef.FunctionAliasesEntry', '10': 'functionAliases'},
  ],
  '3': [MetaGraphDef_MetaInfoDef_FunctionAliasesEntry$json],
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_MetaInfoDef_FunctionAliasesEntry$json = {
  '1': 'FunctionAliasesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_CollectionDefEntry$json = {
  '1': 'CollectionDefEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use metaGraphDefDescriptor instead')
const MetaGraphDef_SignatureDefEntry$json = {
  '1': 'SignatureDefEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.SignatureDef', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MetaGraphDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metaGraphDefDescriptor = $convert.base64Decode(
    'CgxNZXRhR3JhcGhEZWYSSAoNbWV0YV9pbmZvX2RlZhgBIAEoCzIkLnRlbnNvcmZsb3cuTWV0YU'
    'dyYXBoRGVmLk1ldGFJbmZvRGVmUgttZXRhSW5mb0RlZhIxCglncmFwaF9kZWYYAiABKAsyFC50'
    'ZW5zb3JmbG93LkdyYXBoRGVmUghncmFwaERlZhIxCglzYXZlcl9kZWYYAyABKAsyFC50ZW5zb3'
    'JmbG93LlNhdmVyRGVmUghzYXZlckRlZhJSCg5jb2xsZWN0aW9uX2RlZhgEIAMoCzIrLnRlbnNv'
    'cmZsb3cuTWV0YUdyYXBoRGVmLkNvbGxlY3Rpb25EZWZFbnRyeVINY29sbGVjdGlvbkRlZhJPCg'
    '1zaWduYXR1cmVfZGVmGAUgAygLMioudGVuc29yZmxvdy5NZXRhR3JhcGhEZWYuU2lnbmF0dXJl'
    'RGVmRW50cnlSDHNpZ25hdHVyZURlZhI+Cg5hc3NldF9maWxlX2RlZhgGIAMoCzIYLnRlbnNvcm'
    'Zsb3cuQXNzZXRGaWxlRGVmUgxhc3NldEZpbGVEZWYSRgoQb2JqZWN0X2dyYXBoX2RlZhgHIAEo'
    'CzIcLnRlbnNvcmZsb3cuU2F2ZWRPYmplY3RHcmFwaFIOb2JqZWN0R3JhcGhEZWYagwQKC01ldG'
    'FJbmZvRGVmEiwKEm1ldGFfZ3JhcGhfdmVyc2lvbhgBIAEoCVIQbWV0YUdyYXBoVmVyc2lvbhI8'
    'ChBzdHJpcHBlZF9vcF9saXN0GAIgASgLMhIudGVuc29yZmxvdy5PcExpc3RSDnN0cmlwcGVkT3'
    'BMaXN0Ei8KCGFueV9pbmZvGAMgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIHYW55SW5mbxIS'
    'CgR0YWdzGAQgAygJUgR0YWdzEi0KEnRlbnNvcmZsb3dfdmVyc2lvbhgFIAEoCVIRdGVuc29yZm'
    'xvd1ZlcnNpb24SNAoWdGVuc29yZmxvd19naXRfdmVyc2lvbhgGIAEoCVIUdGVuc29yZmxvd0dp'
    'dFZlcnNpb24SNAoWc3RyaXBwZWRfZGVmYXVsdF9hdHRycxgHIAEoCFIUc3RyaXBwZWREZWZhdW'
    'x0QXR0cnMSZAoQZnVuY3Rpb25fYWxpYXNlcxgIIAMoCzI5LnRlbnNvcmZsb3cuTWV0YUdyYXBo'
    'RGVmLk1ldGFJbmZvRGVmLkZ1bmN0aW9uQWxpYXNlc0VudHJ5Ug9mdW5jdGlvbkFsaWFzZXMaQg'
    'oURnVuY3Rpb25BbGlhc2VzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlS'
    'BXZhbHVlOgI4ARpbChJDb2xsZWN0aW9uRGVmRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSLwoFdm'
    'FsdWUYAiABKAsyGS50ZW5zb3JmbG93LkNvbGxlY3Rpb25EZWZSBXZhbHVlOgI4ARpZChFTaWdu'
    'YXR1cmVEZWZFbnRyeRIQCgNrZXkYASABKAlSA2tleRIuCgV2YWx1ZRgCIAEoCzIYLnRlbnNvcm'
    'Zsb3cuU2lnbmF0dXJlRGVmUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef$json = {
  '1': 'CollectionDef',
  '2': [
    {'1': 'node_list', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.NodeList', '9': 0, '10': 'nodeList'},
    {'1': 'bytes_list', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.BytesList', '9': 0, '10': 'bytesList'},
    {'1': 'int64_list', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.Int64List', '9': 0, '10': 'int64List'},
    {'1': 'float_list', '3': 4, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.FloatList', '9': 0, '10': 'floatList'},
    {'1': 'any_list', '3': 5, '4': 1, '5': 11, '6': '.tensorflow.CollectionDef.AnyList', '9': 0, '10': 'anyList'},
  ],
  '3': [CollectionDef_NodeList$json, CollectionDef_BytesList$json, CollectionDef_Int64List$json, CollectionDef_FloatList$json, CollectionDef_AnyList$json],
  '8': [
    {'1': 'kind'},
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_NodeList$json = {
  '1': 'NodeList',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_BytesList$json = {
  '1': 'BytesList',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 12, '10': 'value'},
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_Int64List$json = {
  '1': 'Int64List',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 3,
      '8': {'2': true},
      '10': 'value',
    },
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_FloatList$json = {
  '1': 'FloatList',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '4': 3,
      '5': 2,
      '8': {'2': true},
      '10': 'value',
    },
  ],
};

@$core.Deprecated('Use collectionDefDescriptor instead')
const CollectionDef_AnyList$json = {
  '1': 'AnyList',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
  ],
};

/// Descriptor for `CollectionDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDefDescriptor = $convert.base64Decode(
    'Cg1Db2xsZWN0aW9uRGVmEkEKCW5vZGVfbGlzdBgBIAEoCzIiLnRlbnNvcmZsb3cuQ29sbGVjdG'
    'lvbkRlZi5Ob2RlTGlzdEgAUghub2RlTGlzdBJECgpieXRlc19saXN0GAIgASgLMiMudGVuc29y'
    'Zmxvdy5Db2xsZWN0aW9uRGVmLkJ5dGVzTGlzdEgAUglieXRlc0xpc3QSRAoKaW50NjRfbGlzdB'
    'gDIAEoCzIjLnRlbnNvcmZsb3cuQ29sbGVjdGlvbkRlZi5JbnQ2NExpc3RIAFIJaW50NjRMaXN0'
    'EkQKCmZsb2F0X2xpc3QYBCABKAsyIy50ZW5zb3JmbG93LkNvbGxlY3Rpb25EZWYuRmxvYXRMaX'
    'N0SABSCWZsb2F0TGlzdBI+CghhbnlfbGlzdBgFIAEoCzIhLnRlbnNvcmZsb3cuQ29sbGVjdGlv'
    'bkRlZi5BbnlMaXN0SABSB2FueUxpc3QaIAoITm9kZUxpc3QSFAoFdmFsdWUYASADKAlSBXZhbH'
    'VlGiEKCUJ5dGVzTGlzdBIUCgV2YWx1ZRgBIAMoDFIFdmFsdWUaJQoJSW50NjRMaXN0EhgKBXZh'
    'bHVlGAEgAygDQgIQAVIFdmFsdWUaJQoJRmxvYXRMaXN0EhgKBXZhbHVlGAEgAygCQgIQAVIFdm'
    'FsdWUaNQoHQW55TGlzdBIqCgV2YWx1ZRgBIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSBXZh'
    'bHVlQgYKBGtpbmQ=');

@$core.Deprecated('Use tensorInfoDescriptor instead')
const TensorInfo$json = {
  '1': 'TensorInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name'},
    {'1': 'coo_sparse', '3': 4, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo.CooSparse', '9': 0, '10': 'cooSparse'},
    {'1': 'composite_tensor', '3': 5, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo.CompositeTensor', '9': 0, '10': 'compositeTensor'},
    {'1': 'dtype', '3': 2, '4': 1, '5': 14, '6': '.tensorflow.DataType', '10': 'dtype'},
    {'1': 'tensor_shape', '3': 3, '4': 1, '5': 11, '6': '.tensorflow.TensorShapeProto', '10': 'tensorShape'},
  ],
  '3': [TensorInfo_CooSparse$json, TensorInfo_CompositeTensor$json],
  '8': [
    {'1': 'encoding'},
  ],
};

@$core.Deprecated('Use tensorInfoDescriptor instead')
const TensorInfo_CooSparse$json = {
  '1': 'CooSparse',
  '2': [
    {'1': 'values_tensor_name', '3': 1, '4': 1, '5': 9, '10': 'valuesTensorName'},
    {'1': 'indices_tensor_name', '3': 2, '4': 1, '5': 9, '10': 'indicesTensorName'},
    {'1': 'dense_shape_tensor_name', '3': 3, '4': 1, '5': 9, '10': 'denseShapeTensorName'},
  ],
};

@$core.Deprecated('Use tensorInfoDescriptor instead')
const TensorInfo_CompositeTensor$json = {
  '1': 'CompositeTensor',
  '2': [
    {'1': 'type_spec', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.TypeSpecProto', '10': 'typeSpec'},
    {'1': 'components', '3': 2, '4': 3, '5': 11, '6': '.tensorflow.TensorInfo', '10': 'components'},
  ],
};

/// Descriptor for `TensorInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tensorInfoDescriptor = $convert.base64Decode(
    'CgpUZW5zb3JJbmZvEhQKBG5hbWUYASABKAlIAFIEbmFtZRJBCgpjb29fc3BhcnNlGAQgASgLMi'
    'AudGVuc29yZmxvdy5UZW5zb3JJbmZvLkNvb1NwYXJzZUgAUgljb29TcGFyc2USUwoQY29tcG9z'
    'aXRlX3RlbnNvchgFIAEoCzImLnRlbnNvcmZsb3cuVGVuc29ySW5mby5Db21wb3NpdGVUZW5zb3'
    'JIAFIPY29tcG9zaXRlVGVuc29yEioKBWR0eXBlGAIgASgOMhQudGVuc29yZmxvdy5EYXRhVHlw'
    'ZVIFZHR5cGUSPwoMdGVuc29yX3NoYXBlGAMgASgLMhwudGVuc29yZmxvdy5UZW5zb3JTaGFwZV'
    'Byb3RvUgt0ZW5zb3JTaGFwZRqgAQoJQ29vU3BhcnNlEiwKEnZhbHVlc190ZW5zb3JfbmFtZRgB'
    'IAEoCVIQdmFsdWVzVGVuc29yTmFtZRIuChNpbmRpY2VzX3RlbnNvcl9uYW1lGAIgASgJUhFpbm'
    'RpY2VzVGVuc29yTmFtZRI1ChdkZW5zZV9zaGFwZV90ZW5zb3JfbmFtZRgDIAEoCVIUZGVuc2VT'
    'aGFwZVRlbnNvck5hbWUagQEKD0NvbXBvc2l0ZVRlbnNvchI2Cgl0eXBlX3NwZWMYASABKAsyGS'
    '50ZW5zb3JmbG93LlR5cGVTcGVjUHJvdG9SCHR5cGVTcGVjEjYKCmNvbXBvbmVudHMYAiADKAsy'
    'Fi50ZW5zb3JmbG93LlRlbnNvckluZm9SCmNvbXBvbmVudHNCCgoIZW5jb2Rpbmc=');

@$core.Deprecated('Use signatureDefDescriptor instead')
const SignatureDef$json = {
  '1': 'SignatureDef',
  '2': [
    {'1': 'inputs', '3': 1, '4': 3, '5': 11, '6': '.tensorflow.SignatureDef.InputsEntry', '10': 'inputs'},
    {'1': 'outputs', '3': 2, '4': 3, '5': 11, '6': '.tensorflow.SignatureDef.OutputsEntry', '10': 'outputs'},
    {'1': 'method_name', '3': 3, '4': 1, '5': 9, '10': 'methodName'},
  ],
  '3': [SignatureDef_InputsEntry$json, SignatureDef_OutputsEntry$json],
};

@$core.Deprecated('Use signatureDefDescriptor instead')
const SignatureDef_InputsEntry$json = {
  '1': 'InputsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use signatureDefDescriptor instead')
const SignatureDef_OutputsEntry$json = {
  '1': 'OutputsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SignatureDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDefDescriptor = $convert.base64Decode(
    'CgxTaWduYXR1cmVEZWYSPAoGaW5wdXRzGAEgAygLMiQudGVuc29yZmxvdy5TaWduYXR1cmVEZW'
    'YuSW5wdXRzRW50cnlSBmlucHV0cxI/CgdvdXRwdXRzGAIgAygLMiUudGVuc29yZmxvdy5TaWdu'
    'YXR1cmVEZWYuT3V0cHV0c0VudHJ5UgdvdXRwdXRzEh8KC21ldGhvZF9uYW1lGAMgASgJUgptZX'
    'Rob2ROYW1lGlEKC0lucHV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiwKBXZhbHVlGAIgASgL'
    'MhYudGVuc29yZmxvdy5UZW5zb3JJbmZvUgV2YWx1ZToCOAEaUgoMT3V0cHV0c0VudHJ5EhAKA2'
    'tleRgBIAEoCVIDa2V5EiwKBXZhbHVlGAIgASgLMhYudGVuc29yZmxvdy5UZW5zb3JJbmZvUgV2'
    'YWx1ZToCOAE=');

@$core.Deprecated('Use assetFileDefDescriptor instead')
const AssetFileDef$json = {
  '1': 'AssetFileDef',
  '2': [
    {'1': 'tensor_info', '3': 1, '4': 1, '5': 11, '6': '.tensorflow.TensorInfo', '10': 'tensorInfo'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
  ],
};

/// Descriptor for `AssetFileDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetFileDefDescriptor = $convert.base64Decode(
    'CgxBc3NldEZpbGVEZWYSNwoLdGVuc29yX2luZm8YASABKAsyFi50ZW5zb3JmbG93LlRlbnNvck'
    'luZm9SCnRlbnNvckluZm8SGgoIZmlsZW5hbWUYAiABKAlSCGZpbGVuYW1l');

