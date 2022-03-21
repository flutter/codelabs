///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/struct.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TypeSpecProto_TypeSpecClass extends $pb.ProtobufEnum {
  static const TypeSpecProto_TypeSpecClass UNKNOWN =
      TypeSpecProto_TypeSpecClass._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'UNKNOWN');
  static const TypeSpecProto_TypeSpecClass SPARSE_TENSOR_SPEC =
      TypeSpecProto_TypeSpecClass._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'SPARSE_TENSOR_SPEC');
  static const TypeSpecProto_TypeSpecClass INDEXED_SLICES_SPEC =
      TypeSpecProto_TypeSpecClass._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'INDEXED_SLICES_SPEC');
  static const TypeSpecProto_TypeSpecClass RAGGED_TENSOR_SPEC =
      TypeSpecProto_TypeSpecClass._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'RAGGED_TENSOR_SPEC');
  static const TypeSpecProto_TypeSpecClass TENSOR_ARRAY_SPEC =
      TypeSpecProto_TypeSpecClass._(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'TENSOR_ARRAY_SPEC');
  static const TypeSpecProto_TypeSpecClass DATA_DATASET_SPEC =
      TypeSpecProto_TypeSpecClass._(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'DATA_DATASET_SPEC');
  static const TypeSpecProto_TypeSpecClass DATA_ITERATOR_SPEC =
      TypeSpecProto_TypeSpecClass._(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'DATA_ITERATOR_SPEC');
  static const TypeSpecProto_TypeSpecClass OPTIONAL_SPEC =
      TypeSpecProto_TypeSpecClass._(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'OPTIONAL_SPEC');
  static const TypeSpecProto_TypeSpecClass PER_REPLICA_SPEC =
      TypeSpecProto_TypeSpecClass._(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'PER_REPLICA_SPEC');
  static const TypeSpecProto_TypeSpecClass VARIABLE_SPEC =
      TypeSpecProto_TypeSpecClass._(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'VARIABLE_SPEC');
  static const TypeSpecProto_TypeSpecClass ROW_PARTITION_SPEC =
      TypeSpecProto_TypeSpecClass._(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'ROW_PARTITION_SPEC');
  static const TypeSpecProto_TypeSpecClass REGISTERED_TYPE_SPEC =
      TypeSpecProto_TypeSpecClass._(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'REGISTERED_TYPE_SPEC');
  static const TypeSpecProto_TypeSpecClass EXTENSION_TYPE_SPEC =
      TypeSpecProto_TypeSpecClass._(
          13,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'EXTENSION_TYPE_SPEC');

  static const $core.List<TypeSpecProto_TypeSpecClass> values =
      <TypeSpecProto_TypeSpecClass>[
    UNKNOWN,
    SPARSE_TENSOR_SPEC,
    INDEXED_SLICES_SPEC,
    RAGGED_TENSOR_SPEC,
    TENSOR_ARRAY_SPEC,
    DATA_DATASET_SPEC,
    DATA_ITERATOR_SPEC,
    OPTIONAL_SPEC,
    PER_REPLICA_SPEC,
    VARIABLE_SPEC,
    ROW_PARTITION_SPEC,
    REGISTERED_TYPE_SPEC,
    EXTENSION_TYPE_SPEC,
  ];

  static final $core.Map<$core.int, TypeSpecProto_TypeSpecClass> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static TypeSpecProto_TypeSpecClass? valueOf($core.int value) =>
      _byValue[value];

  const TypeSpecProto_TypeSpecClass._($core.int v, $core.String n)
      : super(v, n);
}
