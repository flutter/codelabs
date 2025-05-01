//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/types.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// (== suppress_warning documentation-presence ==)
/// LINT.IfChange
class DataType extends $pb.ProtobufEnum {
  /// Not a legal value for DataType.  Used to indicate a DataType field
  /// has not been set.
  static const DataType DT_INVALID = DataType._(0, _omitEnumNames ? '' : 'DT_INVALID');
  /// Data types that all computation devices are expected to be
  /// capable to support.
  static const DataType DT_FLOAT = DataType._(1, _omitEnumNames ? '' : 'DT_FLOAT');
  static const DataType DT_DOUBLE = DataType._(2, _omitEnumNames ? '' : 'DT_DOUBLE');
  static const DataType DT_INT32 = DataType._(3, _omitEnumNames ? '' : 'DT_INT32');
  static const DataType DT_UINT8 = DataType._(4, _omitEnumNames ? '' : 'DT_UINT8');
  static const DataType DT_INT16 = DataType._(5, _omitEnumNames ? '' : 'DT_INT16');
  static const DataType DT_INT8 = DataType._(6, _omitEnumNames ? '' : 'DT_INT8');
  static const DataType DT_STRING = DataType._(7, _omitEnumNames ? '' : 'DT_STRING');
  static const DataType DT_COMPLEX64 = DataType._(8, _omitEnumNames ? '' : 'DT_COMPLEX64');
  static const DataType DT_INT64 = DataType._(9, _omitEnumNames ? '' : 'DT_INT64');
  static const DataType DT_BOOL = DataType._(10, _omitEnumNames ? '' : 'DT_BOOL');
  static const DataType DT_QINT8 = DataType._(11, _omitEnumNames ? '' : 'DT_QINT8');
  static const DataType DT_QUINT8 = DataType._(12, _omitEnumNames ? '' : 'DT_QUINT8');
  static const DataType DT_QINT32 = DataType._(13, _omitEnumNames ? '' : 'DT_QINT32');
  static const DataType DT_BFLOAT16 = DataType._(14, _omitEnumNames ? '' : 'DT_BFLOAT16');
  static const DataType DT_QINT16 = DataType._(15, _omitEnumNames ? '' : 'DT_QINT16');
  static const DataType DT_QUINT16 = DataType._(16, _omitEnumNames ? '' : 'DT_QUINT16');
  static const DataType DT_UINT16 = DataType._(17, _omitEnumNames ? '' : 'DT_UINT16');
  static const DataType DT_COMPLEX128 = DataType._(18, _omitEnumNames ? '' : 'DT_COMPLEX128');
  static const DataType DT_HALF = DataType._(19, _omitEnumNames ? '' : 'DT_HALF');
  static const DataType DT_RESOURCE = DataType._(20, _omitEnumNames ? '' : 'DT_RESOURCE');
  static const DataType DT_VARIANT = DataType._(21, _omitEnumNames ? '' : 'DT_VARIANT');
  static const DataType DT_UINT32 = DataType._(22, _omitEnumNames ? '' : 'DT_UINT32');
  static const DataType DT_UINT64 = DataType._(23, _omitEnumNames ? '' : 'DT_UINT64');
  /// Do not use!  These are only for parameters.  Every enum above
  /// should have a corresponding value below (verified by types_test).
  static const DataType DT_FLOAT_REF = DataType._(101, _omitEnumNames ? '' : 'DT_FLOAT_REF');
  static const DataType DT_DOUBLE_REF = DataType._(102, _omitEnumNames ? '' : 'DT_DOUBLE_REF');
  static const DataType DT_INT32_REF = DataType._(103, _omitEnumNames ? '' : 'DT_INT32_REF');
  static const DataType DT_UINT8_REF = DataType._(104, _omitEnumNames ? '' : 'DT_UINT8_REF');
  static const DataType DT_INT16_REF = DataType._(105, _omitEnumNames ? '' : 'DT_INT16_REF');
  static const DataType DT_INT8_REF = DataType._(106, _omitEnumNames ? '' : 'DT_INT8_REF');
  static const DataType DT_STRING_REF = DataType._(107, _omitEnumNames ? '' : 'DT_STRING_REF');
  static const DataType DT_COMPLEX64_REF = DataType._(108, _omitEnumNames ? '' : 'DT_COMPLEX64_REF');
  static const DataType DT_INT64_REF = DataType._(109, _omitEnumNames ? '' : 'DT_INT64_REF');
  static const DataType DT_BOOL_REF = DataType._(110, _omitEnumNames ? '' : 'DT_BOOL_REF');
  static const DataType DT_QINT8_REF = DataType._(111, _omitEnumNames ? '' : 'DT_QINT8_REF');
  static const DataType DT_QUINT8_REF = DataType._(112, _omitEnumNames ? '' : 'DT_QUINT8_REF');
  static const DataType DT_QINT32_REF = DataType._(113, _omitEnumNames ? '' : 'DT_QINT32_REF');
  static const DataType DT_BFLOAT16_REF = DataType._(114, _omitEnumNames ? '' : 'DT_BFLOAT16_REF');
  static const DataType DT_QINT16_REF = DataType._(115, _omitEnumNames ? '' : 'DT_QINT16_REF');
  static const DataType DT_QUINT16_REF = DataType._(116, _omitEnumNames ? '' : 'DT_QUINT16_REF');
  static const DataType DT_UINT16_REF = DataType._(117, _omitEnumNames ? '' : 'DT_UINT16_REF');
  static const DataType DT_COMPLEX128_REF = DataType._(118, _omitEnumNames ? '' : 'DT_COMPLEX128_REF');
  static const DataType DT_HALF_REF = DataType._(119, _omitEnumNames ? '' : 'DT_HALF_REF');
  static const DataType DT_RESOURCE_REF = DataType._(120, _omitEnumNames ? '' : 'DT_RESOURCE_REF');
  static const DataType DT_VARIANT_REF = DataType._(121, _omitEnumNames ? '' : 'DT_VARIANT_REF');
  static const DataType DT_UINT32_REF = DataType._(122, _omitEnumNames ? '' : 'DT_UINT32_REF');
  static const DataType DT_UINT64_REF = DataType._(123, _omitEnumNames ? '' : 'DT_UINT64_REF');

  static const $core.List<DataType> values = <DataType> [
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

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
