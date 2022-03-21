///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/full_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fullTypeIdDescriptor instead')
const FullTypeId$json = const {
  '1': 'FullTypeId',
  '2': const [
    const {'1': 'TFT_UNSET', '2': 0},
    const {'1': 'TFT_VAR', '2': 1},
    const {'1': 'TFT_ANY', '2': 2},
    const {'1': 'TFT_PRODUCT', '2': 3},
    const {'1': 'TFT_NAMED', '2': 4},
    const {'1': 'TFT_FOR_EACH', '2': 20},
    const {'1': 'TFT_CALLABLE', '2': 100},
    const {'1': 'TFT_TENSOR', '2': 1000},
    const {'1': 'TFT_ARRAY', '2': 1001},
    const {'1': 'TFT_OPTIONAL', '2': 1002},
    const {'1': 'TFT_LITERAL', '2': 1003},
    const {'1': 'TFT_BOOL', '2': 200},
    const {'1': 'TFT_UINT8', '2': 201},
    const {'1': 'TFT_UINT16', '2': 202},
    const {'1': 'TFT_UINT32', '2': 203},
    const {'1': 'TFT_UINT64', '2': 204},
    const {'1': 'TFT_INT8', '2': 205},
    const {'1': 'TFT_INT16', '2': 206},
    const {'1': 'TFT_INT32', '2': 207},
    const {'1': 'TFT_INT64', '2': 208},
    const {'1': 'TFT_HALF', '2': 209},
    const {'1': 'TFT_FLOAT', '2': 210},
    const {'1': 'TFT_DOUBLE', '2': 211},
    const {'1': 'TFT_BFLOAT16', '2': 215},
    const {'1': 'TFT_COMPLEX64', '2': 212},
    const {'1': 'TFT_COMPLEX128', '2': 213},
    const {'1': 'TFT_STRING', '2': 214},
    const {'1': 'TFT_DATASET', '2': 10102},
    const {'1': 'TFT_RAGGED', '2': 10103},
    const {'1': 'TFT_MUTEX_LOCK', '2': 10202},
    const {'1': 'TFT_LEGACY_VARIANT', '2': 10203},
  ],
};

/// Descriptor for `FullTypeId`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fullTypeIdDescriptor = $convert.base64Decode(
    'CgpGdWxsVHlwZUlkEg0KCVRGVF9VTlNFVBAAEgsKB1RGVF9WQVIQARILCgdURlRfQU5ZEAISDwoLVEZUX1BST0RVQ1QQAxINCglURlRfTkFNRUQQBBIQCgxURlRfRk9SX0VBQ0gQFBIQCgxURlRfQ0FMTEFCTEUQZBIPCgpURlRfVEVOU09SEOgHEg4KCVRGVF9BUlJBWRDpBxIRCgxURlRfT1BUSU9OQUwQ6gcSEAoLVEZUX0xJVEVSQUwQ6wcSDQoIVEZUX0JPT0wQyAESDgoJVEZUX1VJTlQ4EMkBEg8KClRGVF9VSU5UMTYQygESDwoKVEZUX1VJTlQzMhDLARIPCgpURlRfVUlOVDY0EMwBEg0KCFRGVF9JTlQ4EM0BEg4KCVRGVF9JTlQxNhDOARIOCglURlRfSU5UMzIQzwESDgoJVEZUX0lOVDY0ENABEg0KCFRGVF9IQUxGENEBEg4KCVRGVF9GTE9BVBDSARIPCgpURlRfRE9VQkxFENMBEhEKDFRGVF9CRkxPQVQxNhDXARISCg1URlRfQ09NUExFWDY0ENQBEhMKDlRGVF9DT01QTEVYMTI4ENUBEg8KClRGVF9TVFJJTkcQ1gESEAoLVEZUX0RBVEFTRVQQ9k4SDwoKVEZUX1JBR0dFRBD3ThITCg5URlRfTVVURVhfTE9DSxDaTxIXChJURlRfTEVHQUNZX1ZBUklBTlQQ208=');
@$core.Deprecated('Use fullTypeDefDescriptor instead')
const FullTypeDef$json = const {
  '1': 'FullTypeDef',
  '2': const [
    const {
      '1': 'type_id',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.FullTypeId',
      '10': 'typeId'
    },
    const {
      '1': 'args',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FullTypeDef',
      '10': 'args'
    },
    const {'1': 's', '3': 3, '4': 1, '5': 9, '9': 0, '10': 's'},
    const {'1': 'i', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'i'},
  ],
  '8': const [
    const {'1': 'attr'},
  ],
};

/// Descriptor for `FullTypeDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fullTypeDefDescriptor = $convert.base64Decode(
    'CgtGdWxsVHlwZURlZhIvCgd0eXBlX2lkGAEgASgOMhYudGVuc29yZmxvdy5GdWxsVHlwZUlkUgZ0eXBlSWQSKwoEYXJncxgCIAMoCzIXLnRlbnNvcmZsb3cuRnVsbFR5cGVEZWZSBGFyZ3MSDgoBcxgDIAEoCUgAUgFzEg4KAWkYBCABKANIAFIBaUIGCgRhdHRy');
