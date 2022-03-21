///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/tensor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use tensorProtoDescriptor instead')
const TensorProto$json = const {
  '1': 'TensorProto',
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
      '1': 'tensor_shape',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tensorflow.TensorShapeProto',
      '10': 'tensorShape'
    },
    const {
      '1': 'version_number',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'versionNumber'
    },
    const {
      '1': 'tensor_content',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'tensorContent'
    },
    const {
      '1': 'half_val',
      '3': 13,
      '4': 3,
      '5': 5,
      '8': const {'2': true},
      '10': 'halfVal',
    },
    const {
      '1': 'float_val',
      '3': 5,
      '4': 3,
      '5': 2,
      '8': const {'2': true},
      '10': 'floatVal',
    },
    const {
      '1': 'double_val',
      '3': 6,
      '4': 3,
      '5': 1,
      '8': const {'2': true},
      '10': 'doubleVal',
    },
    const {
      '1': 'int_val',
      '3': 7,
      '4': 3,
      '5': 5,
      '8': const {'2': true},
      '10': 'intVal',
    },
    const {'1': 'string_val', '3': 8, '4': 3, '5': 12, '10': 'stringVal'},
    const {
      '1': 'scomplex_val',
      '3': 9,
      '4': 3,
      '5': 2,
      '8': const {'2': true},
      '10': 'scomplexVal',
    },
    const {
      '1': 'int64_val',
      '3': 10,
      '4': 3,
      '5': 3,
      '8': const {'2': true},
      '10': 'int64Val',
    },
    const {
      '1': 'bool_val',
      '3': 11,
      '4': 3,
      '5': 8,
      '8': const {'2': true},
      '10': 'boolVal',
    },
    const {
      '1': 'dcomplex_val',
      '3': 12,
      '4': 3,
      '5': 1,
      '8': const {'2': true},
      '10': 'dcomplexVal',
    },
    const {
      '1': 'resource_handle_val',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.ResourceHandleProto',
      '10': 'resourceHandleVal'
    },
    const {
      '1': 'variant_val',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.VariantTensorDataProto',
      '10': 'variantVal'
    },
    const {
      '1': 'uint32_val',
      '3': 16,
      '4': 3,
      '5': 13,
      '8': const {'2': true},
      '10': 'uint32Val',
    },
    const {
      '1': 'uint64_val',
      '3': 17,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'uint64Val',
    },
  ],
};

/// Descriptor for `TensorProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tensorProtoDescriptor = $convert.base64Decode(
    'CgtUZW5zb3JQcm90bxIqCgVkdHlwZRgBIAEoDjIULnRlbnNvcmZsb3cuRGF0YVR5cGVSBWR0eXBlEj8KDHRlbnNvcl9zaGFwZRgCIAEoCzIcLnRlbnNvcmZsb3cuVGVuc29yU2hhcGVQcm90b1ILdGVuc29yU2hhcGUSJQoOdmVyc2lvbl9udW1iZXIYAyABKAVSDXZlcnNpb25OdW1iZXISJQoOdGVuc29yX2NvbnRlbnQYBCABKAxSDXRlbnNvckNvbnRlbnQSHQoIaGFsZl92YWwYDSADKAVCAhABUgdoYWxmVmFsEh8KCWZsb2F0X3ZhbBgFIAMoAkICEAFSCGZsb2F0VmFsEiEKCmRvdWJsZV92YWwYBiADKAFCAhABUglkb3VibGVWYWwSGwoHaW50X3ZhbBgHIAMoBUICEAFSBmludFZhbBIdCgpzdHJpbmdfdmFsGAggAygMUglzdHJpbmdWYWwSJQoMc2NvbXBsZXhfdmFsGAkgAygCQgIQAVILc2NvbXBsZXhWYWwSHwoJaW50NjRfdmFsGAogAygDQgIQAVIIaW50NjRWYWwSHQoIYm9vbF92YWwYCyADKAhCAhABUgdib29sVmFsEiUKDGRjb21wbGV4X3ZhbBgMIAMoAUICEAFSC2Rjb21wbGV4VmFsEk8KE3Jlc291cmNlX2hhbmRsZV92YWwYDiADKAsyHy50ZW5zb3JmbG93LlJlc291cmNlSGFuZGxlUHJvdG9SEXJlc291cmNlSGFuZGxlVmFsEkMKC3ZhcmlhbnRfdmFsGA8gAygLMiIudGVuc29yZmxvdy5WYXJpYW50VGVuc29yRGF0YVByb3RvUgp2YXJpYW50VmFsEiEKCnVpbnQzMl92YWwYECADKA1CAhABUgl1aW50MzJWYWwSIQoKdWludDY0X3ZhbBgRIAMoBEICEAFSCXVpbnQ2NFZhbA==');
@$core.Deprecated('Use variantTensorDataProtoDescriptor instead')
const VariantTensorDataProto$json = const {
  '1': 'VariantTensorDataProto',
  '2': const [
    const {'1': 'type_name', '3': 1, '4': 1, '5': 9, '10': 'typeName'},
    const {'1': 'metadata', '3': 2, '4': 1, '5': 12, '10': 'metadata'},
    const {
      '1': 'tensors',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.TensorProto',
      '10': 'tensors'
    },
  ],
};

/// Descriptor for `VariantTensorDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variantTensorDataProtoDescriptor =
    $convert.base64Decode(
        'ChZWYXJpYW50VGVuc29yRGF0YVByb3RvEhsKCXR5cGVfbmFtZRgBIAEoCVIIdHlwZU5hbWUSGgoIbWV0YWRhdGEYAiABKAxSCG1ldGFkYXRhEjEKB3RlbnNvcnMYAyADKAsyFy50ZW5zb3JmbG93LlRlbnNvclByb3RvUgd0ZW5zb3Jz');
