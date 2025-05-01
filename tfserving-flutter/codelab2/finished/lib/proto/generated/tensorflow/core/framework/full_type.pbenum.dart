//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/full_type.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Experimental. Represents the complete type information of a TensorFlow value.
class FullTypeId extends $pb.ProtobufEnum {
  /// The default represents an uninitialized values.
  static const FullTypeId TFT_UNSET = FullTypeId._(0, _omitEnumNames ? '' : 'TFT_UNSET');
  ///  Type variables may serve as placeholder for any other type ID in type
  ///  templates.
  ///
  ///  Examples:
  ///    TFT_DATASET[TFT_VAR["T"]] is a Dataset returning a type indicated by "T".
  ///    TFT_TENSOR[TFT_VAR["T"]] is a Tensor of n element type indicated by "T".
  ///    TFT_TENSOR[TFT_VAR["T"]], TFT_TENSOR[TFT_VAR["T"]] are two tensors of
  ///      identical element types.
  ///    TFT_TENSOR[TFT_VAR["P"]], TFT_TENSOR[TFT_VAR["Q"]] are two tensors of
  ///      independent element types.
  static const FullTypeId TFT_VAR = FullTypeId._(1, _omitEnumNames ? '' : 'TFT_VAR');
  /// Wildcard type. Describes a parameter of unknown type. In TensorFlow, that
  /// can mean either a "Top" type (accepts any type), or a dynamically typed
  /// object whose type is unknown in context.
  /// Important: "unknown" does not necessarily mean undeterminable!
  static const FullTypeId TFT_ANY = FullTypeId._(2, _omitEnumNames ? '' : 'TFT_ANY');
  ///  The algebraic product type. This is an algebraic type that may be used just
  ///  for logical grouping. Not to confused with TFT_TUPLE which describes a
  ///  concrete object of several elements.
  ///
  ///  Example:
  ///    TFT_DATASET[TFT_PRODUCT[TFT_TENSOR[TFT_INT32], TFT_TENSOR[TFT_FLOAT64]]]
  ///      is a Dataset producing two tensors, an integer one and a float one.
  static const FullTypeId TFT_PRODUCT = FullTypeId._(3, _omitEnumNames ? '' : 'TFT_PRODUCT');
  ///  Represents a named field, with the name stored in the attribute.
  ///
  ///  Parametrization:
  ///    TFT_NAMED[<type>]{<name>}
  ///    * <type> is the type of the field
  ///    * <name> is the field name, as string (thpugh can theoretically be an int
  ///      as well)
  ///
  ///  Example:
  ///    TFT_RECORD[
  ///      TFT_NAMED[TFT_TENSOR[TFT_INT32]]{'foo'},
  ///      TFT_NAMED[TFT_TENSOR[TFT_FLOAT32]]{'bar'},
  ///    ]
  ///      is a structure with two fields, an int tensor "foo" and a float tensor
  ///      "bar".
  static const FullTypeId TFT_NAMED = FullTypeId._(4, _omitEnumNames ? '' : 'TFT_NAMED');
  ///  Template definition. Expands the variables by repeating a template as
  ///  arguments of container.
  ///
  ///  Parametrization:
  ///    TFT_FOR_EACH[<container_type>, <template>, <expansions>]
  ///    * <container_type> is the type of the container that the template will be
  ///      expanded into
  ///    * <template> is any type definition that potentially contains type
  ///      variables
  ///    * <expansions> is a TFT_VAR and may include more types in the future
  ///
  ///  Example:
  ///    TFT_FOR_EACH[
  ///          TFT_PRODUCT,
  ///          TFT_TENSOR[TFT_VAR["t"]],
  ///          TFT_VAR["t"]
  ///      ]
  ///      will substitute a T = TFT_INT32 to TFT_PRODUCT[TFT_TENSOR[TFT_INT32]]
  ///      and a T = (TFT_INT32, TFT_INT64) to
  ///      TFT_PRODUCT[TFT_TENSOR[TFT_INT32], TFT_TENSOR[TFT_INT64]].
  static const FullTypeId TFT_FOR_EACH = FullTypeId._(20, _omitEnumNames ? '' : 'TFT_FOR_EACH');
  ///  Callable types describe functions and ops.
  ///
  ///  Parametrization:
  ///    TFT_CALLABLE[<arg type>, <return type>]
  ///    * <arg type> is the type of the arguments; TFT_PRODUCT represents
  ///    multiple
  ///      arguments.
  ///    * <return type> is the return type; TFT_PRODUCT represents multiple
  ///      return values (that means that callables returning multiple things
  ///      don't necessarily return a single tuple).
  ///
  ///  Example:
  ///    TFT_CALLABLE[
  ///      TFT_ANY,
  ///      TFT_PRODUCT[TFT_TENSOR[TFT_INT32], TFT_TENSOR[TFT_FLOAT64]],
  ///    ]
  ///      is a callable with unspecified (for now) input arguments, and
  ///      two return values of type tensor.
  static const FullTypeId TFT_CALLABLE = FullTypeId._(100, _omitEnumNames ? '' : 'TFT_CALLABLE');
  ///  The usual Tensor. This is a parametric type.
  ///
  ///  Parametrization:
  ///    TFT_TENSOR[<element type>, <shape type>]
  ///    * <element type> is currently limited to one of the element types
  ///      defined below.
  ///    * <shape type> is not yet defined, and may only be TFT_UNKNOWN for now.
  ///
  ///  A TFT_SHAPE type will be defined in the future.
  ///
  ///  Example:
  ///    TFT_TENSOR[TFT_INT32, TFT_UNKNOWN]
  ///      is a Tensor of int32 element type and unknown shape.
  ///
  ///  TODO(mdan): Define TFT_SHAPE and add more examples.
  static const FullTypeId TFT_TENSOR = FullTypeId._(1000, _omitEnumNames ? '' : 'TFT_TENSOR');
  ///  Array (or tensorflow::TensorList in the variant type registry).
  ///  Note: this is not to be confused with the deprecated `TensorArray*` ops
  ///  which are not supported by FullType.
  ///  This type represents a random-access list whose elements can be
  ///  described by a single type. Although immutable, Array is expected to
  ///  support efficient mutation semantics (i.e. element update) in the
  ///  user-facing API.
  ///  The element type may be generic or even TFT_ANY for a heterogenous list.
  ///
  ///  Parametrization:
  ///    TFT_ARRAY[<element type>]
  ///    * <element type> may be any concrete type.
  ///
  ///  Examples:
  ///    TFT_ARRAY[TFT_TENSOR[TFT_INT32]] is a TensorArray holding int32 Tensors
  ///      of any shape.
  ///    TFT_ARRAY[TFT_TENSOR[TFT_UNKNOWN]] is a TensorArray holding Tensors of
  ///      mixed element types.
  ///    TFT_ARRAY[TFT_UNKNOWN] is a TensorArray holding any element type.
  ///    TFT_ARRAY[] is equivalent to TFT_ARRAY[TFT_UNKNOWN].
  ///    TFT_ARRAY[TFT_ARRAY[]] is an array or arrays (of unknown types).
  static const FullTypeId TFT_ARRAY = FullTypeId._(1001, _omitEnumNames ? '' : 'TFT_ARRAY');
  ///  Optional (or tensorflow::OptionalVariant in the variant type registry).
  ///  This type represents a value that may either hold an element of a single
  ///  specified type, or nothing at all.
  ///
  ///  Parametrization:
  ///    TFT_OPTIONAL[<element type>]
  ///    * <element type> may be any concrete type.
  ///
  ///  Examples:
  ///    TFT_OPTIONAL[TFT_TENSOR[TFT_INT32]] is an Optional holding an int32
  ///      Tensor of any shape.
  static const FullTypeId TFT_OPTIONAL = FullTypeId._(1002, _omitEnumNames ? '' : 'TFT_OPTIONAL');
  ///  Literal types describe compile-time constant values.
  ///  Literal types may also participate in dependent types.
  ///
  ///  Parametrization:
  ///    TFT_LITERAL[<value type>]{<value>}
  ///    * <value type> may be any concrete type compatible that can hold <value>
  ///    * <value> is the type's attribute, and holds the actual literal value
  ///
  ///  Examples:
  ///    TFT_LITERAL[TFT_INT32]{1} is the compile-time constant 1.
  static const FullTypeId TFT_LITERAL = FullTypeId._(1003, _omitEnumNames ? '' : 'TFT_LITERAL');
  /// The bool element type.
  /// TODO(mdan): Quantized types, legacy representations (e.g. ref)
  static const FullTypeId TFT_BOOL = FullTypeId._(200, _omitEnumNames ? '' : 'TFT_BOOL');
  /// Integer element types.
  static const FullTypeId TFT_UINT8 = FullTypeId._(201, _omitEnumNames ? '' : 'TFT_UINT8');
  static const FullTypeId TFT_UINT16 = FullTypeId._(202, _omitEnumNames ? '' : 'TFT_UINT16');
  static const FullTypeId TFT_UINT32 = FullTypeId._(203, _omitEnumNames ? '' : 'TFT_UINT32');
  static const FullTypeId TFT_UINT64 = FullTypeId._(204, _omitEnumNames ? '' : 'TFT_UINT64');
  static const FullTypeId TFT_INT8 = FullTypeId._(205, _omitEnumNames ? '' : 'TFT_INT8');
  static const FullTypeId TFT_INT16 = FullTypeId._(206, _omitEnumNames ? '' : 'TFT_INT16');
  static const FullTypeId TFT_INT32 = FullTypeId._(207, _omitEnumNames ? '' : 'TFT_INT32');
  static const FullTypeId TFT_INT64 = FullTypeId._(208, _omitEnumNames ? '' : 'TFT_INT64');
  /// Floating-point element types.
  static const FullTypeId TFT_HALF = FullTypeId._(209, _omitEnumNames ? '' : 'TFT_HALF');
  static const FullTypeId TFT_FLOAT = FullTypeId._(210, _omitEnumNames ? '' : 'TFT_FLOAT');
  static const FullTypeId TFT_DOUBLE = FullTypeId._(211, _omitEnumNames ? '' : 'TFT_DOUBLE');
  static const FullTypeId TFT_BFLOAT16 = FullTypeId._(215, _omitEnumNames ? '' : 'TFT_BFLOAT16');
  /// Complex element types.
  /// TODO(mdan): Represent as TFT_COMPLEX[TFT_DOUBLE] instead?
  static const FullTypeId TFT_COMPLEX64 = FullTypeId._(212, _omitEnumNames ? '' : 'TFT_COMPLEX64');
  static const FullTypeId TFT_COMPLEX128 = FullTypeId._(213, _omitEnumNames ? '' : 'TFT_COMPLEX128');
  /// The string element type.
  static const FullTypeId TFT_STRING = FullTypeId._(214, _omitEnumNames ? '' : 'TFT_STRING');
  ///  Datasets created by tf.data ops and APIs. Datasets have generator/iterable
  ///  semantics, that is, one can construct an iterator from them. Like
  ///  Array, they are considered to return elements that can be described
  ///  by a single type. Unlike Array, they do not support random access or
  ///  mutation, and can potentially produce an infinite number of elements.
  ///  A datasets can produce logical structures (e.g. multiple elements). This
  ///  is expressed using TFT_PRODUCT.
  ///
  ///
  ///  Parametrization: TFT_ARRAY[<element type>].
  ///    * <element type> may be a concrete type or a type symbol. It represents
  ///      the data type of the elements produced by the dataset.
  ///
  ///  Examples:
  ///    TFT_DATSET[TFT_TENSOR[TFT_INT32]] is a Dataset producing single int32
  ///      Tensors of unknown shape.
  ///    TFT_DATSET[TFT_PRODUCT[TFT_TENSOR[TFT_INT32], TFT_TENSOR[TFT_FLOAT32]] is
  ///      a Dataset producing pairs of Tensors, one integer and one float.
  ///  Note: The high ID number is to prepare for the eventuality that Datasets
  ///  will be supported by user types in the future.
  static const FullTypeId TFT_DATASET = FullTypeId._(10102, _omitEnumNames ? '' : 'TFT_DATASET');
  ///  A ragged tensor created by tf.ragged ops and APIs.
  ///
  ///  Parametrization: TFT_RAGGED[<element_type>].
  static const FullTypeId TFT_RAGGED = FullTypeId._(10103, _omitEnumNames ? '' : 'TFT_RAGGED');
  ///  A mutex lock tensor, produced by tf.raw_ops.MutexLock.
  ///  Unlike strict execution models, where ownership of a lock is denoted by
  ///  "running after the lock has been acquired", in non-strict mode, lock
  ///  ownership is in the true sense: "the op argument representing the lock is
  ///  available".
  ///  Mutex locks are the dynamic counterpart of control dependencies.
  ///  TODO(mdan): Properly document this thing.
  ///
  ///  Parametrization: TFT_MUTEX_LOCK[].
  static const FullTypeId TFT_MUTEX_LOCK = FullTypeId._(10202, _omitEnumNames ? '' : 'TFT_MUTEX_LOCK');
  /// The equivalent of a Tensor with DT_VARIANT dtype, kept here to simplify
  /// translation. This type should not normally appear after type inference.
  /// Note that LEGACY_VARIANT != ANY: TENSOR[INT32] is a subtype of ANY, but is
  /// not a subtype of LEGACY_VARIANT.
  static const FullTypeId TFT_LEGACY_VARIANT = FullTypeId._(10203, _omitEnumNames ? '' : 'TFT_LEGACY_VARIANT');

  static const $core.List<FullTypeId> values = <FullTypeId> [
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

  static final $core.Map<$core.int, FullTypeId> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FullTypeId? valueOf($core.int value) => _byValue[value];

  const FullTypeId._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
