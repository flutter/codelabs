//
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/struct.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TypeSpecProto_TypeSpecClass extends $pb.ProtobufEnum {
  static const TypeSpecProto_TypeSpecClass UNKNOWN =
      TypeSpecProto_TypeSpecClass._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const TypeSpecProto_TypeSpecClass SPARSE_TENSOR_SPEC =
      TypeSpecProto_TypeSpecClass._(
          1, _omitEnumNames ? '' : 'SPARSE_TENSOR_SPEC');
  static const TypeSpecProto_TypeSpecClass INDEXED_SLICES_SPEC =
      TypeSpecProto_TypeSpecClass._(
          2, _omitEnumNames ? '' : 'INDEXED_SLICES_SPEC');
  static const TypeSpecProto_TypeSpecClass RAGGED_TENSOR_SPEC =
      TypeSpecProto_TypeSpecClass._(
          3, _omitEnumNames ? '' : 'RAGGED_TENSOR_SPEC');
  static const TypeSpecProto_TypeSpecClass TENSOR_ARRAY_SPEC =
      TypeSpecProto_TypeSpecClass._(
          4, _omitEnumNames ? '' : 'TENSOR_ARRAY_SPEC');
  static const TypeSpecProto_TypeSpecClass DATA_DATASET_SPEC =
      TypeSpecProto_TypeSpecClass._(
          5, _omitEnumNames ? '' : 'DATA_DATASET_SPEC');
  static const TypeSpecProto_TypeSpecClass DATA_ITERATOR_SPEC =
      TypeSpecProto_TypeSpecClass._(
          6, _omitEnumNames ? '' : 'DATA_ITERATOR_SPEC');
  static const TypeSpecProto_TypeSpecClass OPTIONAL_SPEC =
      TypeSpecProto_TypeSpecClass._(7, _omitEnumNames ? '' : 'OPTIONAL_SPEC');
  static const TypeSpecProto_TypeSpecClass PER_REPLICA_SPEC =
      TypeSpecProto_TypeSpecClass._(
          8, _omitEnumNames ? '' : 'PER_REPLICA_SPEC');
  static const TypeSpecProto_TypeSpecClass VARIABLE_SPEC =
      TypeSpecProto_TypeSpecClass._(9, _omitEnumNames ? '' : 'VARIABLE_SPEC');
  static const TypeSpecProto_TypeSpecClass ROW_PARTITION_SPEC =
      TypeSpecProto_TypeSpecClass._(
          10, _omitEnumNames ? '' : 'ROW_PARTITION_SPEC');
  static const TypeSpecProto_TypeSpecClass REGISTERED_TYPE_SPEC =
      TypeSpecProto_TypeSpecClass._(
          12, _omitEnumNames ? '' : 'REGISTERED_TYPE_SPEC');
  static const TypeSpecProto_TypeSpecClass EXTENSION_TYPE_SPEC =
      TypeSpecProto_TypeSpecClass._(
          13, _omitEnumNames ? '' : 'EXTENSION_TYPE_SPEC');

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

  const TypeSpecProto_TypeSpecClass._(super.v, super.n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
