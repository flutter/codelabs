///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DataType extends $pb.ProtobufEnum {
  static const DataType DT_INVALID = DataType._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INVALID');
  static const DataType DT_FLOAT = DataType._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_FLOAT');
  static const DataType DT_DOUBLE = DataType._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_DOUBLE');
  static const DataType DT_INT32 = DataType._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT32');
  static const DataType DT_UINT8 = DataType._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT8');
  static const DataType DT_INT16 = DataType._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT16');
  static const DataType DT_INT8 = DataType._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT8');
  static const DataType DT_STRING = DataType._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_STRING');
  static const DataType DT_COMPLEX64 = DataType._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_COMPLEX64');
  static const DataType DT_INT64 = DataType._(
      9,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT64');
  static const DataType DT_BOOL = DataType._(
      10,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_BOOL');
  static const DataType DT_QINT8 = DataType._(
      11,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QINT8');
  static const DataType DT_QUINT8 = DataType._(
      12,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QUINT8');
  static const DataType DT_QINT32 = DataType._(
      13,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QINT32');
  static const DataType DT_BFLOAT16 = DataType._(
      14,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_BFLOAT16');
  static const DataType DT_QINT16 = DataType._(
      15,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QINT16');
  static const DataType DT_QUINT16 = DataType._(
      16,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QUINT16');
  static const DataType DT_UINT16 = DataType._(
      17,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT16');
  static const DataType DT_COMPLEX128 = DataType._(
      18,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_COMPLEX128');
  static const DataType DT_HALF = DataType._(
      19,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_HALF');
  static const DataType DT_RESOURCE = DataType._(
      20,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_RESOURCE');
  static const DataType DT_VARIANT = DataType._(
      21,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_VARIANT');
  static const DataType DT_UINT32 = DataType._(
      22,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT32');
  static const DataType DT_UINT64 = DataType._(
      23,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT64');
  static const DataType DT_FLOAT_REF = DataType._(
      101,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_FLOAT_REF');
  static const DataType DT_DOUBLE_REF = DataType._(
      102,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_DOUBLE_REF');
  static const DataType DT_INT32_REF = DataType._(
      103,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT32_REF');
  static const DataType DT_UINT8_REF = DataType._(
      104,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT8_REF');
  static const DataType DT_INT16_REF = DataType._(
      105,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT16_REF');
  static const DataType DT_INT8_REF = DataType._(
      106,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT8_REF');
  static const DataType DT_STRING_REF = DataType._(
      107,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_STRING_REF');
  static const DataType DT_COMPLEX64_REF = DataType._(
      108,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_COMPLEX64_REF');
  static const DataType DT_INT64_REF = DataType._(
      109,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_INT64_REF');
  static const DataType DT_BOOL_REF = DataType._(
      110,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_BOOL_REF');
  static const DataType DT_QINT8_REF = DataType._(
      111,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QINT8_REF');
  static const DataType DT_QUINT8_REF = DataType._(
      112,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QUINT8_REF');
  static const DataType DT_QINT32_REF = DataType._(
      113,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QINT32_REF');
  static const DataType DT_BFLOAT16_REF = DataType._(
      114,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_BFLOAT16_REF');
  static const DataType DT_QINT16_REF = DataType._(
      115,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QINT16_REF');
  static const DataType DT_QUINT16_REF = DataType._(
      116,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_QUINT16_REF');
  static const DataType DT_UINT16_REF = DataType._(
      117,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT16_REF');
  static const DataType DT_COMPLEX128_REF = DataType._(
      118,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_COMPLEX128_REF');
  static const DataType DT_HALF_REF = DataType._(
      119,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_HALF_REF');
  static const DataType DT_RESOURCE_REF = DataType._(
      120,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_RESOURCE_REF');
  static const DataType DT_VARIANT_REF = DataType._(
      121,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_VARIANT_REF');
  static const DataType DT_UINT32_REF = DataType._(
      122,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT32_REF');
  static const DataType DT_UINT64_REF = DataType._(
      123,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DT_UINT64_REF');

  static const $core.List<DataType> values = <DataType>[
    DT_INVALID,
    DT_FLOAT,
    DT_DOUBLE,
    DT_INT32,
    DT_UINT8,
    DT_INT16,
    DT_INT8,
    DT_STRING,
    DT_COMPLEX64,
    DT_INT64,
    DT_BOOL,
    DT_QINT8,
    DT_QUINT8,
    DT_QINT32,
    DT_BFLOAT16,
    DT_QINT16,
    DT_QUINT16,
    DT_UINT16,
    DT_COMPLEX128,
    DT_HALF,
    DT_RESOURCE,
    DT_VARIANT,
    DT_UINT32,
    DT_UINT64,
    DT_FLOAT_REF,
    DT_DOUBLE_REF,
    DT_INT32_REF,
    DT_UINT8_REF,
    DT_INT16_REF,
    DT_INT8_REF,
    DT_STRING_REF,
    DT_COMPLEX64_REF,
    DT_INT64_REF,
    DT_BOOL_REF,
    DT_QINT8_REF,
    DT_QUINT8_REF,
    DT_QINT32_REF,
    DT_BFLOAT16_REF,
    DT_QINT16_REF,
    DT_QUINT16_REF,
    DT_UINT16_REF,
    DT_COMPLEX128_REF,
    DT_HALF_REF,
    DT_RESOURCE_REF,
    DT_VARIANT_REF,
    DT_UINT32_REF,
    DT_UINT64_REF,
  ];

  static final $core.Map<$core.int, DataType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}
