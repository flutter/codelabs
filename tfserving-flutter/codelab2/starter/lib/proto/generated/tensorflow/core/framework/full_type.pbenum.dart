///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/full_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FullTypeId extends $pb.ProtobufEnum {
  static const FullTypeId TFT_UNSET = FullTypeId._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_UNSET');
  static const FullTypeId TFT_VAR = FullTypeId._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_VAR');
  static const FullTypeId TFT_ANY = FullTypeId._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_ANY');
  static const FullTypeId TFT_PRODUCT = FullTypeId._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_PRODUCT');
  static const FullTypeId TFT_NAMED = FullTypeId._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_NAMED');
  static const FullTypeId TFT_FOR_EACH = FullTypeId._(
      20,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_FOR_EACH');
  static const FullTypeId TFT_CALLABLE = FullTypeId._(
      100,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_CALLABLE');
  static const FullTypeId TFT_TENSOR = FullTypeId._(
      1000,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_TENSOR');
  static const FullTypeId TFT_ARRAY = FullTypeId._(
      1001,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_ARRAY');
  static const FullTypeId TFT_OPTIONAL = FullTypeId._(
      1002,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_OPTIONAL');
  static const FullTypeId TFT_LITERAL = FullTypeId._(
      1003,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_LITERAL');
  static const FullTypeId TFT_BOOL = FullTypeId._(
      200,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_BOOL');
  static const FullTypeId TFT_UINT8 = FullTypeId._(
      201,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_UINT8');
  static const FullTypeId TFT_UINT16 = FullTypeId._(
      202,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_UINT16');
  static const FullTypeId TFT_UINT32 = FullTypeId._(
      203,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_UINT32');
  static const FullTypeId TFT_UINT64 = FullTypeId._(
      204,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_UINT64');
  static const FullTypeId TFT_INT8 = FullTypeId._(
      205,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_INT8');
  static const FullTypeId TFT_INT16 = FullTypeId._(
      206,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_INT16');
  static const FullTypeId TFT_INT32 = FullTypeId._(
      207,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_INT32');
  static const FullTypeId TFT_INT64 = FullTypeId._(
      208,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_INT64');
  static const FullTypeId TFT_HALF = FullTypeId._(
      209,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_HALF');
  static const FullTypeId TFT_FLOAT = FullTypeId._(
      210,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_FLOAT');
  static const FullTypeId TFT_DOUBLE = FullTypeId._(
      211,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_DOUBLE');
  static const FullTypeId TFT_BFLOAT16 = FullTypeId._(
      215,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_BFLOAT16');
  static const FullTypeId TFT_COMPLEX64 = FullTypeId._(
      212,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_COMPLEX64');
  static const FullTypeId TFT_COMPLEX128 = FullTypeId._(
      213,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_COMPLEX128');
  static const FullTypeId TFT_STRING = FullTypeId._(
      214,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_STRING');
  static const FullTypeId TFT_DATASET = FullTypeId._(
      10102,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_DATASET');
  static const FullTypeId TFT_RAGGED = FullTypeId._(
      10103,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_RAGGED');
  static const FullTypeId TFT_MUTEX_LOCK = FullTypeId._(
      10202,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_MUTEX_LOCK');
  static const FullTypeId TFT_LEGACY_VARIANT = FullTypeId._(
      10203,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'TFT_LEGACY_VARIANT');

  static const $core.List<FullTypeId> values = <FullTypeId>[
    TFT_UNSET,
    TFT_VAR,
    TFT_ANY,
    TFT_PRODUCT,
    TFT_NAMED,
    TFT_FOR_EACH,
    TFT_CALLABLE,
    TFT_TENSOR,
    TFT_ARRAY,
    TFT_OPTIONAL,
    TFT_LITERAL,
    TFT_BOOL,
    TFT_UINT8,
    TFT_UINT16,
    TFT_UINT32,
    TFT_UINT64,
    TFT_INT8,
    TFT_INT16,
    TFT_INT32,
    TFT_INT64,
    TFT_HALF,
    TFT_FLOAT,
    TFT_DOUBLE,
    TFT_BFLOAT16,
    TFT_COMPLEX64,
    TFT_COMPLEX128,
    TFT_STRING,
    TFT_DATASET,
    TFT_RAGGED,
    TFT_MUTEX_LOCK,
    TFT_LEGACY_VARIANT,
  ];

  static final $core.Map<$core.int, FullTypeId> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FullTypeId? valueOf($core.int value) => _byValue[value];

  const FullTypeId._($core.int v, $core.String n) : super(v, n);
}
