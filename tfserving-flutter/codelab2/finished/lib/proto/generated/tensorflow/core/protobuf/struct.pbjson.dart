//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/struct.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use structuredValueDescriptor instead')
const StructuredValue$json = {
  '1': 'StructuredValue',
  '2': [
    {
      '1': 'none_value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.NoneValue',
      '9': 0,
      '10': 'noneValue'
    },
    {
      '1': 'float64_value',
      '3': 11,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'float64Value'
    },
    {'1': 'int64_value', '3': 12, '4': 1, '5': 18, '9': 0, '10': 'int64Value'},
    {'1': 'string_value', '3': 13, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'bool_value', '3': 14, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {
      '1': 'tensor_shape_value',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '9': 0,
      '10': 'tensorShapeValue'
    },
    {
      '1': 'tensor_dtype_value',
      '3': 32,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '9': 0,
      '10': 'tensorDtypeValue'
    },
    {
      '1': 'tensor_spec_value',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorSpecProto',
      '9': 0,
      '10': 'tensorSpecValue'
    },
    {
      '1': 'type_spec_value',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TypeSpecProto',
      '9': 0,
      '10': 'typeSpecValue'
    },
    {
      '1': 'bounded_tensor_spec_value',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.BoundedTensorSpecProto',
      '9': 0,
      '10': 'boundedTensorSpecValue'
    },
    {
      '1': 'list_value',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.ListValue',
      '9': 0,
      '10': 'listValue'
    },
    {
      '1': 'tuple_value',
      '3': 52,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TupleValue',
      '9': 0,
      '10': 'tupleValue'
    },
    {
      '1': 'dict_value',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.DictValue',
      '9': 0,
      '10': 'dictValue'
    },
    {
      '1': 'named_tuple_value',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.NamedTupleValue',
      '9': 0,
      '10': 'namedTupleValue'
    },
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `StructuredValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structuredValueDescriptor = $convert.base64Decode(
    'Cg9TdHJ1Y3R1cmVkVmFsdWUSNgoKbm9uZV92YWx1ZRgBIAEoCzIVLnRlbnNvcmZsb3cuTm9uZV'
    'ZhbHVlSABSCW5vbmVWYWx1ZRIlCg1mbG9hdDY0X3ZhbHVlGAsgASgBSABSDGZsb2F0NjRWYWx1'
    'ZRIhCgtpbnQ2NF92YWx1ZRgMIAEoEkgAUgppbnQ2NFZhbHVlEiMKDHN0cmluZ192YWx1ZRgNIA'
    'EoCUgAUgtzdHJpbmdWYWx1ZRIfCgpib29sX3ZhbHVlGA4gASgISABSCWJvb2xWYWx1ZRJMChJ0'
    'ZW5zb3Jfc2hhcGVfdmFsdWUYHyABKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9IAF'
    'IQdGVuc29yU2hhcGVWYWx1ZRJEChJ0ZW5zb3JfZHR5cGVfdmFsdWUYICABKA4yFC50ZW5zb3Jm'
    'bG93LkRhdGFUeXBlSABSEHRlbnNvckR0eXBlVmFsdWUSSQoRdGVuc29yX3NwZWNfdmFsdWUYIS'
    'ABKAsyGy50ZW5zb3JmbG93LlRlbnNvclNwZWNQcm90b0gAUg90ZW5zb3JTcGVjVmFsdWUSQwoP'
    'dHlwZV9zcGVjX3ZhbHVlGCIgASgLMhkudGVuc29yZmxvdy5UeXBlU3BlY1Byb3RvSABSDXR5cG'
    'VTcGVjVmFsdWUSXwoZYm91bmRlZF90ZW5zb3Jfc3BlY192YWx1ZRgjIAEoCzIiLnRlbnNvcmZs'
    'b3cuQm91bmRlZFRlbnNvclNwZWNQcm90b0gAUhZib3VuZGVkVGVuc29yU3BlY1ZhbHVlEjYKCm'
    'xpc3RfdmFsdWUYMyABKAsyFS50ZW5zb3JmbG93Lkxpc3RWYWx1ZUgAUglsaXN0VmFsdWUSOQoL'
    'dHVwbGVfdmFsdWUYNCABKAsyFi50ZW5zb3JmbG93LlR1cGxlVmFsdWVIAFIKdHVwbGVWYWx1ZR'
    'I2CgpkaWN0X3ZhbHVlGDUgASgLMhUudGVuc29yZmxvdy5EaWN0VmFsdWVIAFIJZGljdFZhbHVl'
    'EkkKEW5hbWVkX3R1cGxlX3ZhbHVlGDYgASgLMhsudGVuc29yZmxvdy5OYW1lZFR1cGxlVmFsdW'
    'VIAFIPbmFtZWRUdXBsZVZhbHVlQgYKBGtpbmQ=');

@$core.Deprecated('Use noneValueDescriptor instead')
const NoneValue$json = {
  '1': 'NoneValue',
};

/// Descriptor for `NoneValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noneValueDescriptor =
    $convert.base64Decode('CglOb25lVmFsdWU=');

@$core.Deprecated('Use listValueDescriptor instead')
const ListValue$json = {
  '1': 'ListValue',
  '2': [
    {
      '1': 'values',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'values'
    },
  ],
};

/// Descriptor for `ListValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listValueDescriptor = $convert.base64Decode(
    'CglMaXN0VmFsdWUSMwoGdmFsdWVzGAEgAygLMhsudGVuc29yZmxvdy5TdHJ1Y3R1cmVkVmFsdW'
    'VSBnZhbHVlcw==');

@$core.Deprecated('Use tupleValueDescriptor instead')
const TupleValue$json = {
  '1': 'TupleValue',
  '2': [
    {
      '1': 'values',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'values'
    },
  ],
};

/// Descriptor for `TupleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tupleValueDescriptor = $convert.base64Decode(
    'CgpUdXBsZVZhbHVlEjMKBnZhbHVlcxgBIAMoCzIbLnRlbnNvcmZsb3cuU3RydWN0dXJlZFZhbH'
    'VlUgZ2YWx1ZXM=');

@$core.Deprecated('Use dictValueDescriptor instead')
const DictValue$json = {
  '1': 'DictValue',
  '2': [
    {
      '1': 'fields',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.DictValue.FieldsEntry',
      '10': 'fields'
    },
  ],
  '3': [DictValue_FieldsEntry$json],
};

@$core.Deprecated('Use dictValueDescriptor instead')
const DictValue_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `DictValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dictValueDescriptor = $convert.base64Decode(
    'CglEaWN0VmFsdWUSOQoGZmllbGRzGAEgAygLMiEudGVuc29yZmxvdy5EaWN0VmFsdWUuRmllbG'
    'RzRW50cnlSBmZpZWxkcxpWCgtGaWVsZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIxCgV2YWx1'
    'ZRgCIAEoCzIbLnRlbnNvcmZsb3cuU3RydWN0dXJlZFZhbHVlUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use pairValueDescriptor instead')
const PairValue$json = {
  '1': 'PairValue',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'value'
    },
  ],
};

/// Descriptor for `PairValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairValueDescriptor = $convert.base64Decode(
    'CglQYWlyVmFsdWUSEAoDa2V5GAEgASgJUgNrZXkSMQoFdmFsdWUYAiABKAsyGy50ZW5zb3JmbG'
    '93LlN0cnVjdHVyZWRWYWx1ZVIFdmFsdWU=');

@$core.Deprecated('Use namedTupleValueDescriptor instead')
const NamedTupleValue$json = {
  '1': 'NamedTupleValue',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'values',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.PairValue',
      '10': 'values'
    },
  ],
};

/// Descriptor for `NamedTupleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedTupleValueDescriptor = $convert.base64Decode(
    'Cg9OYW1lZFR1cGxlVmFsdWUSEgoEbmFtZRgBIAEoCVIEbmFtZRItCgZ2YWx1ZXMYAiADKAsyFS'
    '50ZW5zb3JmbG93LlBhaXJWYWx1ZVIGdmFsdWVz');

@$core.Deprecated('Use tensorSpecProtoDescriptor instead')
const TensorSpecProto$json = {
  '1': 'TensorSpecProto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'shape',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    {
      '1': 'dtype',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
  ],
};

/// Descriptor for `TensorSpecProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tensorSpecProtoDescriptor = $convert.base64Decode(
    'Cg9UZW5zb3JTcGVjUHJvdG8SEgoEbmFtZRgBIAEoCVIEbmFtZRIyCgVzaGFwZRgCIAEoCzIcLn'
    'RlbnNvcmZsb3cuVGVuc29yU2hhcGVQcm90b1IFc2hhcGUSKgoFZHR5cGUYAyABKA4yFC50ZW5z'
    'b3JmbG93LkRhdGFUeXBlUgVkdHlwZQ==');

@$core.Deprecated('Use boundedTensorSpecProtoDescriptor instead')
const BoundedTensorSpecProto$json = {
  '1': 'BoundedTensorSpecProto',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'shape',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'shape'
    },
    {
      '1': 'dtype',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.DataType',
      '10': 'dtype'
    },
    {
      '1': 'minimum',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'minimum'
    },
    {
      '1': 'maximum',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'maximum'
    },
  ],
};

/// Descriptor for `BoundedTensorSpecProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundedTensorSpecProtoDescriptor = $convert.base64Decode(
    'ChZCb3VuZGVkVGVuc29yU3BlY1Byb3RvEhIKBG5hbWUYASABKAlSBG5hbWUSMgoFc2hhcGUYAi'
    'ABKAsyHC50ZW5zb3JmbG93LlRlbnNvclNoYXBlUHJvdG9SBXNoYXBlEioKBWR0eXBlGAMgASgO'
    'MhQudGVuc29yZmxvdy5EYXRhVHlwZVIFZHR5cGUSMQoHbWluaW11bRgEIAEoCzIXLnRlbnNvcm'
    'Zsb3cuVGVuc29yUHJvdG9SB21pbmltdW0SMQoHbWF4aW11bRgFIAEoCzIXLnRlbnNvcmZsb3cu'
    'VGVuc29yUHJvdG9SB21heGltdW0=');

@$core.Deprecated('Use typeSpecProtoDescriptor instead')
const TypeSpecProto$json = {
  '1': 'TypeSpecProto',
  '2': [
    {
      '1': 'type_spec_class',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.TypeSpecProto.TypeSpecClass',
      '10': 'typeSpecClass'
    },
    {
      '1': 'type_state',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.StructuredValue',
      '10': 'typeState'
    },
    {
      '1': 'type_spec_class_name',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'typeSpecClassName'
    },
    {
      '1': 'num_flat_components',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'numFlatComponents'
    },
  ],
  '4': [TypeSpecProto_TypeSpecClass$json],
};

@$core.Deprecated('Use typeSpecProtoDescriptor instead')
const TypeSpecProto_TypeSpecClass$json = {
  '1': 'TypeSpecClass',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'SPARSE_TENSOR_SPEC', '2': 1},
    {'1': 'INDEXED_SLICES_SPEC', '2': 2},
    {'1': 'RAGGED_TENSOR_SPEC', '2': 3},
    {'1': 'TENSOR_ARRAY_SPEC', '2': 4},
    {'1': 'DATA_DATASET_SPEC', '2': 5},
    {'1': 'DATA_ITERATOR_SPEC', '2': 6},
    {'1': 'OPTIONAL_SPEC', '2': 7},
    {'1': 'PER_REPLICA_SPEC', '2': 8},
    {'1': 'VARIABLE_SPEC', '2': 9},
    {'1': 'ROW_PARTITION_SPEC', '2': 10},
    {'1': 'REGISTERED_TYPE_SPEC', '2': 12},
    {'1': 'EXTENSION_TYPE_SPEC', '2': 13},
  ],
  '4': [
    {'1': 11, '2': 11},
  ],
};

/// Descriptor for `TypeSpecProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeSpecProtoDescriptor = $convert.base64Decode(
    'Cg1UeXBlU3BlY1Byb3RvEk8KD3R5cGVfc3BlY19jbGFzcxgBIAEoDjInLnRlbnNvcmZsb3cuVH'
    'lwZVNwZWNQcm90by5UeXBlU3BlY0NsYXNzUg10eXBlU3BlY0NsYXNzEjoKCnR5cGVfc3RhdGUY'
    'AiABKAsyGy50ZW5zb3JmbG93LlN0cnVjdHVyZWRWYWx1ZVIJdHlwZVN0YXRlEi8KFHR5cGVfc3'
    'BlY19jbGFzc19uYW1lGAMgASgJUhF0eXBlU3BlY0NsYXNzTmFtZRIuChNudW1fZmxhdF9jb21w'
    'b25lbnRzGAQgASgFUhFudW1GbGF0Q29tcG9uZW50cyK4AgoNVHlwZVNwZWNDbGFzcxILCgdVTk'
    'tOT1dOEAASFgoSU1BBUlNFX1RFTlNPUl9TUEVDEAESFwoTSU5ERVhFRF9TTElDRVNfU1BFQxAC'
    'EhYKElJBR0dFRF9URU5TT1JfU1BFQxADEhUKEVRFTlNPUl9BUlJBWV9TUEVDEAQSFQoRREFUQV'
    '9EQVRBU0VUX1NQRUMQBRIWChJEQVRBX0lURVJBVE9SX1NQRUMQBhIRCg1PUFRJT05BTF9TUEVD'
    'EAcSFAoQUEVSX1JFUExJQ0FfU1BFQxAIEhEKDVZBUklBQkxFX1NQRUMQCRIWChJST1dfUEFSVE'
    'lUSU9OX1NQRUMQChIYChRSRUdJU1RFUkVEX1RZUEVfU1BFQxAMEhcKE0VYVEVOU0lPTl9UWVBF'
    'X1NQRUMQDSIECAsQCw==');
