///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = const {
  '1': 'DataType',
  '2': const [
    const {'1': 'DT_INVALID', '2': 0},
    const {'1': 'DT_FLOAT', '2': 1},
    const {'1': 'DT_DOUBLE', '2': 2},
    const {'1': 'DT_INT32', '2': 3},
    const {'1': 'DT_UINT8', '2': 4},
    const {'1': 'DT_INT16', '2': 5},
    const {'1': 'DT_INT8', '2': 6},
    const {'1': 'DT_STRING', '2': 7},
    const {'1': 'DT_COMPLEX64', '2': 8},
    const {'1': 'DT_INT64', '2': 9},
    const {'1': 'DT_BOOL', '2': 10},
    const {'1': 'DT_QINT8', '2': 11},
    const {'1': 'DT_QUINT8', '2': 12},
    const {'1': 'DT_QINT32', '2': 13},
    const {'1': 'DT_BFLOAT16', '2': 14},
    const {'1': 'DT_QINT16', '2': 15},
    const {'1': 'DT_QUINT16', '2': 16},
    const {'1': 'DT_UINT16', '2': 17},
    const {'1': 'DT_COMPLEX128', '2': 18},
    const {'1': 'DT_HALF', '2': 19},
    const {'1': 'DT_RESOURCE', '2': 20},
    const {'1': 'DT_VARIANT', '2': 21},
    const {'1': 'DT_UINT32', '2': 22},
    const {'1': 'DT_UINT64', '2': 23},
    const {'1': 'DT_FLOAT_REF', '2': 101},
    const {'1': 'DT_DOUBLE_REF', '2': 102},
    const {'1': 'DT_INT32_REF', '2': 103},
    const {'1': 'DT_UINT8_REF', '2': 104},
    const {'1': 'DT_INT16_REF', '2': 105},
    const {'1': 'DT_INT8_REF', '2': 106},
    const {'1': 'DT_STRING_REF', '2': 107},
    const {'1': 'DT_COMPLEX64_REF', '2': 108},
    const {'1': 'DT_INT64_REF', '2': 109},
    const {'1': 'DT_BOOL_REF', '2': 110},
    const {'1': 'DT_QINT8_REF', '2': 111},
    const {'1': 'DT_QUINT8_REF', '2': 112},
    const {'1': 'DT_QINT32_REF', '2': 113},
    const {'1': 'DT_BFLOAT16_REF', '2': 114},
    const {'1': 'DT_QINT16_REF', '2': 115},
    const {'1': 'DT_QUINT16_REF', '2': 116},
    const {'1': 'DT_UINT16_REF', '2': 117},
    const {'1': 'DT_COMPLEX128_REF', '2': 118},
    const {'1': 'DT_HALF_REF', '2': 119},
    const {'1': 'DT_RESOURCE_REF', '2': 120},
    const {'1': 'DT_VARIANT_REF', '2': 121},
    const {'1': 'DT_UINT32_REF', '2': 122},
    const {'1': 'DT_UINT64_REF', '2': 123},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode(
    'CghEYXRhVHlwZRIOCgpEVF9JTlZBTElEEAASDAoIRFRfRkxPQVQQARINCglEVF9ET1VCTEUQAhIMCghEVF9JTlQzMhADEgwKCERUX1VJTlQ4EAQSDAoIRFRfSU5UMTYQBRILCgdEVF9JTlQ4EAYSDQoJRFRfU1RSSU5HEAcSEAoMRFRfQ09NUExFWDY0EAgSDAoIRFRfSU5UNjQQCRILCgdEVF9CT09MEAoSDAoIRFRfUUlOVDgQCxINCglEVF9RVUlOVDgQDBINCglEVF9RSU5UMzIQDRIPCgtEVF9CRkxPQVQxNhAOEg0KCURUX1FJTlQxNhAPEg4KCkRUX1FVSU5UMTYQEBINCglEVF9VSU5UMTYQERIRCg1EVF9DT01QTEVYMTI4EBISCwoHRFRfSEFMRhATEg8KC0RUX1JFU09VUkNFEBQSDgoKRFRfVkFSSUFOVBAVEg0KCURUX1VJTlQzMhAWEg0KCURUX1VJTlQ2NBAXEhAKDERUX0ZMT0FUX1JFRhBlEhEKDURUX0RPVUJMRV9SRUYQZhIQCgxEVF9JTlQzMl9SRUYQZxIQCgxEVF9VSU5UOF9SRUYQaBIQCgxEVF9JTlQxNl9SRUYQaRIPCgtEVF9JTlQ4X1JFRhBqEhEKDURUX1NUUklOR19SRUYQaxIUChBEVF9DT01QTEVYNjRfUkVGEGwSEAoMRFRfSU5UNjRfUkVGEG0SDwoLRFRfQk9PTF9SRUYQbhIQCgxEVF9RSU5UOF9SRUYQbxIRCg1EVF9RVUlOVDhfUkVGEHASEQoNRFRfUUlOVDMyX1JFRhBxEhMKD0RUX0JGTE9BVDE2X1JFRhByEhEKDURUX1FJTlQxNl9SRUYQcxISCg5EVF9RVUlOVDE2X1JFRhB0EhEKDURUX1VJTlQxNl9SRUYQdRIVChFEVF9DT01QTEVYMTI4X1JFRhB2Eg8KC0RUX0hBTEZfUkVGEHcSEwoPRFRfUkVTT1VSQ0VfUkVGEHgSEgoORFRfVkFSSUFOVF9SRUYQeRIRCg1EVF9VSU5UMzJfUkVGEHoSEQoNRFRfVUlOVDY0X1JFRhB7');
