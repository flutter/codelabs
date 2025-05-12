//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/types.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = {
  '1': 'DataType',
  '2': [
    {'1': 'DT_INVALID', '2': 0},
    {'1': 'DT_FLOAT', '2': 1},
    {'1': 'DT_DOUBLE', '2': 2},
    {'1': 'DT_INT32', '2': 3},
    {'1': 'DT_UINT8', '2': 4},
    {'1': 'DT_INT16', '2': 5},
    {'1': 'DT_INT8', '2': 6},
    {'1': 'DT_STRING', '2': 7},
    {'1': 'DT_COMPLEX64', '2': 8},
    {'1': 'DT_INT64', '2': 9},
    {'1': 'DT_BOOL', '2': 10},
    {'1': 'DT_QINT8', '2': 11},
    {'1': 'DT_QUINT8', '2': 12},
    {'1': 'DT_QINT32', '2': 13},
    {'1': 'DT_BFLOAT16', '2': 14},
    {'1': 'DT_QINT16', '2': 15},
    {'1': 'DT_QUINT16', '2': 16},
    {'1': 'DT_UINT16', '2': 17},
    {'1': 'DT_COMPLEX128', '2': 18},
    {'1': 'DT_HALF', '2': 19},
    {'1': 'DT_RESOURCE', '2': 20},
    {'1': 'DT_VARIANT', '2': 21},
    {'1': 'DT_UINT32', '2': 22},
    {'1': 'DT_UINT64', '2': 23},
    {'1': 'DT_FLOAT_REF', '2': 101},
    {'1': 'DT_DOUBLE_REF', '2': 102},
    {'1': 'DT_INT32_REF', '2': 103},
    {'1': 'DT_UINT8_REF', '2': 104},
    {'1': 'DT_INT16_REF', '2': 105},
    {'1': 'DT_INT8_REF', '2': 106},
    {'1': 'DT_STRING_REF', '2': 107},
    {'1': 'DT_COMPLEX64_REF', '2': 108},
    {'1': 'DT_INT64_REF', '2': 109},
    {'1': 'DT_BOOL_REF', '2': 110},
    {'1': 'DT_QINT8_REF', '2': 111},
    {'1': 'DT_QUINT8_REF', '2': 112},
    {'1': 'DT_QINT32_REF', '2': 113},
    {'1': 'DT_BFLOAT16_REF', '2': 114},
    {'1': 'DT_QINT16_REF', '2': 115},
    {'1': 'DT_QUINT16_REF', '2': 116},
    {'1': 'DT_UINT16_REF', '2': 117},
    {'1': 'DT_COMPLEX128_REF', '2': 118},
    {'1': 'DT_HALF_REF', '2': 119},
    {'1': 'DT_RESOURCE_REF', '2': 120},
    {'1': 'DT_VARIANT_REF', '2': 121},
    {'1': 'DT_UINT32_REF', '2': 122},
    {'1': 'DT_UINT64_REF', '2': 123},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode(
    'CghEYXRhVHlwZRIOCgpEVF9JTlZBTElEEAASDAoIRFRfRkxPQVQQARINCglEVF9ET1VCTEUQAh'
    'IMCghEVF9JTlQzMhADEgwKCERUX1VJTlQ4EAQSDAoIRFRfSU5UMTYQBRILCgdEVF9JTlQ4EAYS'
    'DQoJRFRfU1RSSU5HEAcSEAoMRFRfQ09NUExFWDY0EAgSDAoIRFRfSU5UNjQQCRILCgdEVF9CT0'
    '9MEAoSDAoIRFRfUUlOVDgQCxINCglEVF9RVUlOVDgQDBINCglEVF9RSU5UMzIQDRIPCgtEVF9C'
    'RkxPQVQxNhAOEg0KCURUX1FJTlQxNhAPEg4KCkRUX1FVSU5UMTYQEBINCglEVF9VSU5UMTYQER'
    'IRCg1EVF9DT01QTEVYMTI4EBISCwoHRFRfSEFMRhATEg8KC0RUX1JFU09VUkNFEBQSDgoKRFRf'
    'VkFSSUFOVBAVEg0KCURUX1VJTlQzMhAWEg0KCURUX1VJTlQ2NBAXEhAKDERUX0ZMT0FUX1JFRh'
    'BlEhEKDURUX0RPVUJMRV9SRUYQZhIQCgxEVF9JTlQzMl9SRUYQZxIQCgxEVF9VSU5UOF9SRUYQ'
    'aBIQCgxEVF9JTlQxNl9SRUYQaRIPCgtEVF9JTlQ4X1JFRhBqEhEKDURUX1NUUklOR19SRUYQax'
    'IUChBEVF9DT01QTEVYNjRfUkVGEGwSEAoMRFRfSU5UNjRfUkVGEG0SDwoLRFRfQk9PTF9SRUYQ'
    'bhIQCgxEVF9RSU5UOF9SRUYQbxIRCg1EVF9RVUlOVDhfUkVGEHASEQoNRFRfUUlOVDMyX1JFRh'
    'BxEhMKD0RUX0JGTE9BVDE2X1JFRhByEhEKDURUX1FJTlQxNl9SRUYQcxISCg5EVF9RVUlOVDE2'
    'X1JFRhB0EhEKDURUX1VJTlQxNl9SRUYQdRIVChFEVF9DT01QTEVYMTI4X1JFRhB2Eg8KC0RUX0'
    'hBTEZfUkVGEHcSEwoPRFRfUkVTT1VSQ0VfUkVGEHgSEgoORFRfVkFSSUFOVF9SRUYQeRIRCg1E'
    'VF9VSU5UMzJfUkVGEHoSEQoNRFRfVUlOVDY0X1JFRhB7');
