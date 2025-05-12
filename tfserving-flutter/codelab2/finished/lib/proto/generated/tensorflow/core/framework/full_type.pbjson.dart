//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/full_type.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fullTypeIdDescriptor instead')
const FullTypeId$json = {
  '1': 'FullTypeId',
  '2': [
    {'1': 'TFT_UNSET', '2': 0},
    {'1': 'TFT_VAR', '2': 1},
    {'1': 'TFT_ANY', '2': 2},
    {'1': 'TFT_PRODUCT', '2': 3},
    {'1': 'TFT_NAMED', '2': 4},
    {'1': 'TFT_FOR_EACH', '2': 20},
    {'1': 'TFT_CALLABLE', '2': 100},
    {'1': 'TFT_TENSOR', '2': 1000},
    {'1': 'TFT_ARRAY', '2': 1001},
    {'1': 'TFT_OPTIONAL', '2': 1002},
    {'1': 'TFT_LITERAL', '2': 1003},
    {'1': 'TFT_BOOL', '2': 200},
    {'1': 'TFT_UINT8', '2': 201},
    {'1': 'TFT_UINT16', '2': 202},
    {'1': 'TFT_UINT32', '2': 203},
    {'1': 'TFT_UINT64', '2': 204},
    {'1': 'TFT_INT8', '2': 205},
    {'1': 'TFT_INT16', '2': 206},
    {'1': 'TFT_INT32', '2': 207},
    {'1': 'TFT_INT64', '2': 208},
    {'1': 'TFT_HALF', '2': 209},
    {'1': 'TFT_FLOAT', '2': 210},
    {'1': 'TFT_DOUBLE', '2': 211},
    {'1': 'TFT_BFLOAT16', '2': 215},
    {'1': 'TFT_COMPLEX64', '2': 212},
    {'1': 'TFT_COMPLEX128', '2': 213},
    {'1': 'TFT_STRING', '2': 214},
    {'1': 'TFT_DATASET', '2': 10102},
    {'1': 'TFT_RAGGED', '2': 10103},
    {'1': 'TFT_MUTEX_LOCK', '2': 10202},
    {'1': 'TFT_LEGACY_VARIANT', '2': 10203},
  ],
};

/// Descriptor for `FullTypeId`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fullTypeIdDescriptor = $convert.base64Decode(
    'CgpGdWxsVHlwZUlkEg0KCVRGVF9VTlNFVBAAEgsKB1RGVF9WQVIQARILCgdURlRfQU5ZEAISDw'
    'oLVEZUX1BST0RVQ1QQAxINCglURlRfTkFNRUQQBBIQCgxURlRfRk9SX0VBQ0gQFBIQCgxURlRf'
    'Q0FMTEFCTEUQZBIPCgpURlRfVEVOU09SEOgHEg4KCVRGVF9BUlJBWRDpBxIRCgxURlRfT1BUSU'
    '9OQUwQ6gcSEAoLVEZUX0xJVEVSQUwQ6wcSDQoIVEZUX0JPT0wQyAESDgoJVEZUX1VJTlQ4EMkB'
    'Eg8KClRGVF9VSU5UMTYQygESDwoKVEZUX1VJTlQzMhDLARIPCgpURlRfVUlOVDY0EMwBEg0KCF'
    'RGVF9JTlQ4EM0BEg4KCVRGVF9JTlQxNhDOARIOCglURlRfSU5UMzIQzwESDgoJVEZUX0lOVDY0'
    'ENABEg0KCFRGVF9IQUxGENEBEg4KCVRGVF9GTE9BVBDSARIPCgpURlRfRE9VQkxFENMBEhEKDF'
    'RGVF9CRkxPQVQxNhDXARISCg1URlRfQ09NUExFWDY0ENQBEhMKDlRGVF9DT01QTEVYMTI4ENUB'
    'Eg8KClRGVF9TVFJJTkcQ1gESEAoLVEZUX0RBVEFTRVQQ9k4SDwoKVEZUX1JBR0dFRBD3ThITCg'
    '5URlRfTVVURVhfTE9DSxDaTxIXChJURlRfTEVHQUNZX1ZBUklBTlQQ208=');

@$core.Deprecated('Use fullTypeDefDescriptor instead')
const FullTypeDef$json = {
  '1': 'FullTypeDef',
  '2': [
    {
      '1': 'type_id',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.tensorflow.FullTypeId',
      '10': 'typeId'
    },
    {
      '1': 'args',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tensorflow.FullTypeDef',
      '10': 'args'
    },
    {'1': 's', '3': 3, '4': 1, '5': 9, '9': 0, '10': 's'},
    {'1': 'i', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'i'},
  ],
  '8': [
    {'1': 'attr'},
  ],
};

/// Descriptor for `FullTypeDef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fullTypeDefDescriptor = $convert.base64Decode(
    'CgtGdWxsVHlwZURlZhIvCgd0eXBlX2lkGAEgASgOMhYudGVuc29yZmxvdy5GdWxsVHlwZUlkUg'
    'Z0eXBlSWQSKwoEYXJncxgCIAMoCzIXLnRlbnNvcmZsb3cuRnVsbFR5cGVEZWZSBGFyZ3MSDgoB'
    'cxgDIAEoCUgAUgFzEg4KAWkYBCABKANIAFIBaUIGCgRhdHRy');
