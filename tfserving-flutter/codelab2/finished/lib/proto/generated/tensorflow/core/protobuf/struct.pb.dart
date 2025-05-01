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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../framework/tensor.pb.dart' as $1;
import '../framework/tensor_shape.pb.dart' as $0;
import '../framework/types.pbenum.dart' as $2;
import 'struct.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'struct.pbenum.dart';

enum StructuredValue_Kind {
  noneValue, 
  float64Value, 
  int64Value, 
  stringValue, 
  boolValue, 
  tensorShapeValue, 
  tensorDtypeValue, 
  tensorSpecValue, 
  typeSpecValue, 
  boundedTensorSpecValue, 
  listValue, 
  tupleValue, 
  dictValue, 
  namedTupleValue, 
  notSet
}

///  `StructuredValue` represents a dynamically typed value representing various
///  data structures that are inspired by Python data structures typically used in
///  TensorFlow functions as inputs and outputs.
///
///  For example when saving a Layer there may be a `training` argument. If the
///  user passes a boolean True/False, that switches between two concrete
///  TensorFlow functions. In order to switch between them in the same way after
///  loading the SavedModel, we need to represent "True" and "False".
///
///  A more advanced example might be a function which takes a list of
///  dictionaries mapping from strings to Tensors. In order to map from
///  user-specified arguments `[{"a": tf.constant(1.)}, {"q": tf.constant(3.)}]`
///  after load to the right saved TensorFlow function, we need to represent the
///  nested structure and the strings, recording that we have a trace for anything
///  matching `[{"a": tf.TensorSpec(None, tf.float32)}, {"q": tf.TensorSpec([],
///  tf.float64)}]` as an example.
///
///  Likewise functions may return nested structures of Tensors, for example
///  returning a dictionary mapping from strings to Tensors. In order for the
///  loaded function to return the same structure we need to serialize it.
///
///  This is an ergonomic aid for working with loaded SavedModels, not a promise
///  to serialize all possible function signatures. For example we do not expect
///  to pickle generic Python objects, and ideally we'd stay language-agnostic.
class StructuredValue extends $pb.GeneratedMessage {
  factory StructuredValue({
    NoneValue? noneValue,
    $core.double? float64Value,
    $fixnum.Int64? int64Value,
    $core.String? stringValue,
    $core.bool? boolValue,
    $0.TensorShapeProto? tensorShapeValue,
    $2.DataType? tensorDtypeValue,
    TensorSpecProto? tensorSpecValue,
    TypeSpecProto? typeSpecValue,
    BoundedTensorSpecProto? boundedTensorSpecValue,
    ListValue? listValue,
    TupleValue? tupleValue,
    DictValue? dictValue,
    NamedTupleValue? namedTupleValue,
  }) {
    final $result = create();
    if (noneValue != null) {
      $result.noneValue = noneValue;
    }
    if (float64Value != null) {
      $result.float64Value = float64Value;
    }
    if (int64Value != null) {
      $result.int64Value = int64Value;
    }
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    if (tensorShapeValue != null) {
      $result.tensorShapeValue = tensorShapeValue;
    }
    if (tensorDtypeValue != null) {
      $result.tensorDtypeValue = tensorDtypeValue;
    }
    if (tensorSpecValue != null) {
      $result.tensorSpecValue = tensorSpecValue;
    }
    if (typeSpecValue != null) {
      $result.typeSpecValue = typeSpecValue;
    }
    if (boundedTensorSpecValue != null) {
      $result.boundedTensorSpecValue = boundedTensorSpecValue;
    }
    if (listValue != null) {
      $result.listValue = listValue;
    }
    if (tupleValue != null) {
      $result.tupleValue = tupleValue;
    }
    if (dictValue != null) {
      $result.dictValue = dictValue;
    }
    if (namedTupleValue != null) {
      $result.namedTupleValue = namedTupleValue;
    }
    return $result;
  }
  StructuredValue._() : super();
  factory StructuredValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StructuredValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StructuredValue_Kind> _StructuredValue_KindByTag = {
    1 : StructuredValue_Kind.noneValue,
    11 : StructuredValue_Kind.float64Value,
    12 : StructuredValue_Kind.int64Value,
    13 : StructuredValue_Kind.stringValue,
    14 : StructuredValue_Kind.boolValue,
    31 : StructuredValue_Kind.tensorShapeValue,
    32 : StructuredValue_Kind.tensorDtypeValue,
    33 : StructuredValue_Kind.tensorSpecValue,
    34 : StructuredValue_Kind.typeSpecValue,
    35 : StructuredValue_Kind.boundedTensorSpecValue,
    51 : StructuredValue_Kind.listValue,
    52 : StructuredValue_Kind.tupleValue,
    53 : StructuredValue_Kind.dictValue,
    54 : StructuredValue_Kind.namedTupleValue,
    0 : StructuredValue_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StructuredValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..oo(0, [1, 11, 12, 13, 14, 31, 32, 33, 34, 35, 51, 52, 53, 54])
    ..aOM<NoneValue>(1, _omitFieldNames ? '' : 'noneValue', subBuilder: NoneValue.create)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'float64Value', $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(12, _omitFieldNames ? '' : 'int64Value', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(13, _omitFieldNames ? '' : 'stringValue')
    ..aOB(14, _omitFieldNames ? '' : 'boolValue')
    ..aOM<$0.TensorShapeProto>(31, _omitFieldNames ? '' : 'tensorShapeValue', subBuilder: $0.TensorShapeProto.create)
    ..e<$2.DataType>(32, _omitFieldNames ? '' : 'tensorDtypeValue', $pb.PbFieldType.OE, defaultOrMaker: $2.DataType.DT_INVALID, valueOf: $2.DataType.valueOf, enumValues: $2.DataType.values)
    ..aOM<TensorSpecProto>(33, _omitFieldNames ? '' : 'tensorSpecValue', subBuilder: TensorSpecProto.create)
    ..aOM<TypeSpecProto>(34, _omitFieldNames ? '' : 'typeSpecValue', subBuilder: TypeSpecProto.create)
    ..aOM<BoundedTensorSpecProto>(35, _omitFieldNames ? '' : 'boundedTensorSpecValue', subBuilder: BoundedTensorSpecProto.create)
    ..aOM<ListValue>(51, _omitFieldNames ? '' : 'listValue', subBuilder: ListValue.create)
    ..aOM<TupleValue>(52, _omitFieldNames ? '' : 'tupleValue', subBuilder: TupleValue.create)
    ..aOM<DictValue>(53, _omitFieldNames ? '' : 'dictValue', subBuilder: DictValue.create)
    ..aOM<NamedTupleValue>(54, _omitFieldNames ? '' : 'namedTupleValue', subBuilder: NamedTupleValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StructuredValue clone() => StructuredValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StructuredValue copyWith(void Function(StructuredValue) updates) => super.copyWith((message) => updates(message as StructuredValue)) as StructuredValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructuredValue create() => StructuredValue._();
  StructuredValue createEmptyInstance() => create();
  static $pb.PbList<StructuredValue> createRepeated() => $pb.PbList<StructuredValue>();
  @$core.pragma('dart2js:noInline')
  static StructuredValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StructuredValue>(create);
  static StructuredValue? _defaultInstance;

  StructuredValue_Kind whichKind() => _StructuredValue_KindByTag[$_whichOneof(0)]!;
  void clearKind() => $_clearField($_whichOneof(0));

  /// Represents None.
  @$pb.TagNumber(1)
  NoneValue get noneValue => $_getN(0);
  @$pb.TagNumber(1)
  set noneValue(NoneValue v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNoneValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoneValue() => $_clearField(1);
  @$pb.TagNumber(1)
  NoneValue ensureNoneValue() => $_ensure(0);

  /// Represents a double-precision floating-point value (a Python `float`).
  @$pb.TagNumber(11)
  $core.double get float64Value => $_getN(1);
  @$pb.TagNumber(11)
  set float64Value($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasFloat64Value() => $_has(1);
  @$pb.TagNumber(11)
  void clearFloat64Value() => $_clearField(11);

  /// Represents a signed integer value, limited to 64 bits.
  /// Larger values from Python's arbitrary-precision integers are unsupported.
  @$pb.TagNumber(12)
  $fixnum.Int64 get int64Value => $_getI64(2);
  @$pb.TagNumber(12)
  set int64Value($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(12)
  $core.bool hasInt64Value() => $_has(2);
  @$pb.TagNumber(12)
  void clearInt64Value() => $_clearField(12);

  /// Represents a string of Unicode characters stored in a Python `str`.
  /// In Python 3, this is exactly what type `str` is.
  /// In Python 2, this is the UTF-8 encoding of the characters.
  /// For strings with ASCII characters only (as often used in TensorFlow code)
  /// there is effectively no difference between the language versions.
  /// The obsolescent `unicode` type of Python 2 is not supported here.
  @$pb.TagNumber(13)
  $core.String get stringValue => $_getSZ(3);
  @$pb.TagNumber(13)
  set stringValue($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(13)
  $core.bool hasStringValue() => $_has(3);
  @$pb.TagNumber(13)
  void clearStringValue() => $_clearField(13);

  /// Represents a boolean value.
  @$pb.TagNumber(14)
  $core.bool get boolValue => $_getBF(4);
  @$pb.TagNumber(14)
  set boolValue($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(14)
  $core.bool hasBoolValue() => $_has(4);
  @$pb.TagNumber(14)
  void clearBoolValue() => $_clearField(14);

  /// Represents a TensorShape.
  @$pb.TagNumber(31)
  $0.TensorShapeProto get tensorShapeValue => $_getN(5);
  @$pb.TagNumber(31)
  set tensorShapeValue($0.TensorShapeProto v) { $_setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasTensorShapeValue() => $_has(5);
  @$pb.TagNumber(31)
  void clearTensorShapeValue() => $_clearField(31);
  @$pb.TagNumber(31)
  $0.TensorShapeProto ensureTensorShapeValue() => $_ensure(5);

  /// Represents an enum value for dtype.
  @$pb.TagNumber(32)
  $2.DataType get tensorDtypeValue => $_getN(6);
  @$pb.TagNumber(32)
  set tensorDtypeValue($2.DataType v) { $_setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasTensorDtypeValue() => $_has(6);
  @$pb.TagNumber(32)
  void clearTensorDtypeValue() => $_clearField(32);

  /// Represents a value for tf.TensorSpec.
  @$pb.TagNumber(33)
  TensorSpecProto get tensorSpecValue => $_getN(7);
  @$pb.TagNumber(33)
  set tensorSpecValue(TensorSpecProto v) { $_setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasTensorSpecValue() => $_has(7);
  @$pb.TagNumber(33)
  void clearTensorSpecValue() => $_clearField(33);
  @$pb.TagNumber(33)
  TensorSpecProto ensureTensorSpecValue() => $_ensure(7);

  /// Represents a value for tf.TypeSpec.
  @$pb.TagNumber(34)
  TypeSpecProto get typeSpecValue => $_getN(8);
  @$pb.TagNumber(34)
  set typeSpecValue(TypeSpecProto v) { $_setField(34, v); }
  @$pb.TagNumber(34)
  $core.bool hasTypeSpecValue() => $_has(8);
  @$pb.TagNumber(34)
  void clearTypeSpecValue() => $_clearField(34);
  @$pb.TagNumber(34)
  TypeSpecProto ensureTypeSpecValue() => $_ensure(8);

  /// Represents a value for tf.BoundedTensorSpec.
  @$pb.TagNumber(35)
  BoundedTensorSpecProto get boundedTensorSpecValue => $_getN(9);
  @$pb.TagNumber(35)
  set boundedTensorSpecValue(BoundedTensorSpecProto v) { $_setField(35, v); }
  @$pb.TagNumber(35)
  $core.bool hasBoundedTensorSpecValue() => $_has(9);
  @$pb.TagNumber(35)
  void clearBoundedTensorSpecValue() => $_clearField(35);
  @$pb.TagNumber(35)
  BoundedTensorSpecProto ensureBoundedTensorSpecValue() => $_ensure(9);

  /// Represents a list of `Value`.
  @$pb.TagNumber(51)
  ListValue get listValue => $_getN(10);
  @$pb.TagNumber(51)
  set listValue(ListValue v) { $_setField(51, v); }
  @$pb.TagNumber(51)
  $core.bool hasListValue() => $_has(10);
  @$pb.TagNumber(51)
  void clearListValue() => $_clearField(51);
  @$pb.TagNumber(51)
  ListValue ensureListValue() => $_ensure(10);

  /// Represents a tuple of `Value`.
  @$pb.TagNumber(52)
  TupleValue get tupleValue => $_getN(11);
  @$pb.TagNumber(52)
  set tupleValue(TupleValue v) { $_setField(52, v); }
  @$pb.TagNumber(52)
  $core.bool hasTupleValue() => $_has(11);
  @$pb.TagNumber(52)
  void clearTupleValue() => $_clearField(52);
  @$pb.TagNumber(52)
  TupleValue ensureTupleValue() => $_ensure(11);

  /// Represents a dict `Value`.
  @$pb.TagNumber(53)
  DictValue get dictValue => $_getN(12);
  @$pb.TagNumber(53)
  set dictValue(DictValue v) { $_setField(53, v); }
  @$pb.TagNumber(53)
  $core.bool hasDictValue() => $_has(12);
  @$pb.TagNumber(53)
  void clearDictValue() => $_clearField(53);
  @$pb.TagNumber(53)
  DictValue ensureDictValue() => $_ensure(12);

  /// Represents Python's namedtuple.
  @$pb.TagNumber(54)
  NamedTupleValue get namedTupleValue => $_getN(13);
  @$pb.TagNumber(54)
  set namedTupleValue(NamedTupleValue v) { $_setField(54, v); }
  @$pb.TagNumber(54)
  $core.bool hasNamedTupleValue() => $_has(13);
  @$pb.TagNumber(54)
  void clearNamedTupleValue() => $_clearField(54);
  @$pb.TagNumber(54)
  NamedTupleValue ensureNamedTupleValue() => $_ensure(13);
}

/// Represents None.
class NoneValue extends $pb.GeneratedMessage {
  factory NoneValue() => create();
  NoneValue._() : super();
  factory NoneValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoneValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NoneValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoneValue clone() => NoneValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoneValue copyWith(void Function(NoneValue) updates) => super.copyWith((message) => updates(message as NoneValue)) as NoneValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoneValue create() => NoneValue._();
  NoneValue createEmptyInstance() => create();
  static $pb.PbList<NoneValue> createRepeated() => $pb.PbList<NoneValue>();
  @$core.pragma('dart2js:noInline')
  static NoneValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoneValue>(create);
  static NoneValue? _defaultInstance;
}

/// Represents a Python list.
class ListValue extends $pb.GeneratedMessage {
  factory ListValue({
    $core.Iterable<StructuredValue>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  ListValue._() : super();
  factory ListValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pc<StructuredValue>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: StructuredValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListValue clone() => ListValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListValue copyWith(void Function(ListValue) updates) => super.copyWith((message) => updates(message as ListValue)) as ListValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListValue create() => ListValue._();
  ListValue createEmptyInstance() => create();
  static $pb.PbList<ListValue> createRepeated() => $pb.PbList<ListValue>();
  @$core.pragma('dart2js:noInline')
  static ListValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListValue>(create);
  static ListValue? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StructuredValue> get values => $_getList(0);
}

/// Represents a Python tuple.
class TupleValue extends $pb.GeneratedMessage {
  factory TupleValue({
    $core.Iterable<StructuredValue>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  TupleValue._() : super();
  factory TupleValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TupleValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TupleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pc<StructuredValue>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: StructuredValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TupleValue clone() => TupleValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TupleValue copyWith(void Function(TupleValue) updates) => super.copyWith((message) => updates(message as TupleValue)) as TupleValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TupleValue create() => TupleValue._();
  TupleValue createEmptyInstance() => create();
  static $pb.PbList<TupleValue> createRepeated() => $pb.PbList<TupleValue>();
  @$core.pragma('dart2js:noInline')
  static TupleValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TupleValue>(create);
  static TupleValue? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StructuredValue> get values => $_getList(0);
}

/// Represents a Python dict keyed by `str`.
/// The comment on Unicode from Value.string_value applies analogously.
class DictValue extends $pb.GeneratedMessage {
  factory DictValue({
    $pb.PbMap<$core.String, StructuredValue>? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  DictValue._() : super();
  factory DictValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DictValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DictValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..m<$core.String, StructuredValue>(1, _omitFieldNames ? '' : 'fields', entryClassName: 'DictValue.FieldsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: StructuredValue.create, valueDefaultOrMaker: StructuredValue.getDefault, packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DictValue clone() => DictValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DictValue copyWith(void Function(DictValue) updates) => super.copyWith((message) => updates(message as DictValue)) as DictValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DictValue create() => DictValue._();
  DictValue createEmptyInstance() => create();
  static $pb.PbList<DictValue> createRepeated() => $pb.PbList<DictValue>();
  @$core.pragma('dart2js:noInline')
  static DictValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DictValue>(create);
  static DictValue? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, StructuredValue> get fields => $_getMap(0);
}

/// Represents a (key, value) pair.
class PairValue extends $pb.GeneratedMessage {
  factory PairValue({
    $core.String? key,
    StructuredValue? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PairValue._() : super();
  factory PairValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PairValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOM<StructuredValue>(2, _omitFieldNames ? '' : 'value', subBuilder: StructuredValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PairValue clone() => PairValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PairValue copyWith(void Function(PairValue) updates) => super.copyWith((message) => updates(message as PairValue)) as PairValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairValue create() => PairValue._();
  PairValue createEmptyInstance() => create();
  static $pb.PbList<PairValue> createRepeated() => $pb.PbList<PairValue>();
  @$core.pragma('dart2js:noInline')
  static PairValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairValue>(create);
  static PairValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  StructuredValue get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(StructuredValue v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  StructuredValue ensureValue() => $_ensure(1);
}

/// Represents Python's namedtuple.
class NamedTupleValue extends $pb.GeneratedMessage {
  factory NamedTupleValue({
    $core.String? name,
    $core.Iterable<PairValue>? values,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  NamedTupleValue._() : super();
  factory NamedTupleValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedTupleValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedTupleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<PairValue>(2, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: PairValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedTupleValue clone() => NamedTupleValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedTupleValue copyWith(void Function(NamedTupleValue) updates) => super.copyWith((message) => updates(message as NamedTupleValue)) as NamedTupleValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedTupleValue create() => NamedTupleValue._();
  NamedTupleValue createEmptyInstance() => create();
  static $pb.PbList<NamedTupleValue> createRepeated() => $pb.PbList<NamedTupleValue>();
  @$core.pragma('dart2js:noInline')
  static NamedTupleValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedTupleValue>(create);
  static NamedTupleValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<PairValue> get values => $_getList(1);
}

/// A protobuf to represent tf.TensorSpec.
class TensorSpecProto extends $pb.GeneratedMessage {
  factory TensorSpecProto({
    $core.String? name,
    $0.TensorShapeProto? shape,
    $2.DataType? dtype,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (dtype != null) {
      $result.dtype = dtype;
    }
    return $result;
  }
  TensorSpecProto._() : super();
  factory TensorSpecProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TensorSpecProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TensorSpecProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.TensorShapeProto>(2, _omitFieldNames ? '' : 'shape', subBuilder: $0.TensorShapeProto.create)
    ..e<$2.DataType>(3, _omitFieldNames ? '' : 'dtype', $pb.PbFieldType.OE, defaultOrMaker: $2.DataType.DT_INVALID, valueOf: $2.DataType.valueOf, enumValues: $2.DataType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TensorSpecProto clone() => TensorSpecProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TensorSpecProto copyWith(void Function(TensorSpecProto) updates) => super.copyWith((message) => updates(message as TensorSpecProto)) as TensorSpecProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TensorSpecProto create() => TensorSpecProto._();
  TensorSpecProto createEmptyInstance() => create();
  static $pb.PbList<TensorSpecProto> createRepeated() => $pb.PbList<TensorSpecProto>();
  @$core.pragma('dart2js:noInline')
  static TensorSpecProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TensorSpecProto>(create);
  static TensorSpecProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.TensorShapeProto get shape => $_getN(1);
  @$pb.TagNumber(2)
  set shape($0.TensorShapeProto v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearShape() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.TensorShapeProto ensureShape() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.DataType get dtype => $_getN(2);
  @$pb.TagNumber(3)
  set dtype($2.DataType v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearDtype() => $_clearField(3);
}

/// A protobuf to represent tf.BoundedTensorSpec.
class BoundedTensorSpecProto extends $pb.GeneratedMessage {
  factory BoundedTensorSpecProto({
    $core.String? name,
    $0.TensorShapeProto? shape,
    $2.DataType? dtype,
    $1.TensorProto? minimum,
    $1.TensorProto? maximum,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (dtype != null) {
      $result.dtype = dtype;
    }
    if (minimum != null) {
      $result.minimum = minimum;
    }
    if (maximum != null) {
      $result.maximum = maximum;
    }
    return $result;
  }
  BoundedTensorSpecProto._() : super();
  factory BoundedTensorSpecProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoundedTensorSpecProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoundedTensorSpecProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.TensorShapeProto>(2, _omitFieldNames ? '' : 'shape', subBuilder: $0.TensorShapeProto.create)
    ..e<$2.DataType>(3, _omitFieldNames ? '' : 'dtype', $pb.PbFieldType.OE, defaultOrMaker: $2.DataType.DT_INVALID, valueOf: $2.DataType.valueOf, enumValues: $2.DataType.values)
    ..aOM<$1.TensorProto>(4, _omitFieldNames ? '' : 'minimum', subBuilder: $1.TensorProto.create)
    ..aOM<$1.TensorProto>(5, _omitFieldNames ? '' : 'maximum', subBuilder: $1.TensorProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoundedTensorSpecProto clone() => BoundedTensorSpecProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoundedTensorSpecProto copyWith(void Function(BoundedTensorSpecProto) updates) => super.copyWith((message) => updates(message as BoundedTensorSpecProto)) as BoundedTensorSpecProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoundedTensorSpecProto create() => BoundedTensorSpecProto._();
  BoundedTensorSpecProto createEmptyInstance() => create();
  static $pb.PbList<BoundedTensorSpecProto> createRepeated() => $pb.PbList<BoundedTensorSpecProto>();
  @$core.pragma('dart2js:noInline')
  static BoundedTensorSpecProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoundedTensorSpecProto>(create);
  static BoundedTensorSpecProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.TensorShapeProto get shape => $_getN(1);
  @$pb.TagNumber(2)
  set shape($0.TensorShapeProto v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearShape() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.TensorShapeProto ensureShape() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.DataType get dtype => $_getN(2);
  @$pb.TagNumber(3)
  set dtype($2.DataType v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearDtype() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.TensorProto get minimum => $_getN(3);
  @$pb.TagNumber(4)
  set minimum($1.TensorProto v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinimum() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinimum() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.TensorProto ensureMinimum() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.TensorProto get maximum => $_getN(4);
  @$pb.TagNumber(5)
  set maximum($1.TensorProto v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaximum() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaximum() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.TensorProto ensureMaximum() => $_ensure(4);
}

/// Represents a tf.TypeSpec
class TypeSpecProto extends $pb.GeneratedMessage {
  factory TypeSpecProto({
    TypeSpecProto_TypeSpecClass? typeSpecClass,
    StructuredValue? typeState,
    $core.String? typeSpecClassName,
    $core.int? numFlatComponents,
  }) {
    final $result = create();
    if (typeSpecClass != null) {
      $result.typeSpecClass = typeSpecClass;
    }
    if (typeState != null) {
      $result.typeState = typeState;
    }
    if (typeSpecClassName != null) {
      $result.typeSpecClassName = typeSpecClassName;
    }
    if (numFlatComponents != null) {
      $result.numFlatComponents = numFlatComponents;
    }
    return $result;
  }
  TypeSpecProto._() : super();
  factory TypeSpecProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeSpecProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TypeSpecProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..e<TypeSpecProto_TypeSpecClass>(1, _omitFieldNames ? '' : 'typeSpecClass', $pb.PbFieldType.OE, defaultOrMaker: TypeSpecProto_TypeSpecClass.UNKNOWN, valueOf: TypeSpecProto_TypeSpecClass.valueOf, enumValues: TypeSpecProto_TypeSpecClass.values)
    ..aOM<StructuredValue>(2, _omitFieldNames ? '' : 'typeState', subBuilder: StructuredValue.create)
    ..aOS(3, _omitFieldNames ? '' : 'typeSpecClassName')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'numFlatComponents', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeSpecProto clone() => TypeSpecProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeSpecProto copyWith(void Function(TypeSpecProto) updates) => super.copyWith((message) => updates(message as TypeSpecProto)) as TypeSpecProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypeSpecProto create() => TypeSpecProto._();
  TypeSpecProto createEmptyInstance() => create();
  static $pb.PbList<TypeSpecProto> createRepeated() => $pb.PbList<TypeSpecProto>();
  @$core.pragma('dart2js:noInline')
  static TypeSpecProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeSpecProto>(create);
  static TypeSpecProto? _defaultInstance;

  @$pb.TagNumber(1)
  TypeSpecProto_TypeSpecClass get typeSpecClass => $_getN(0);
  @$pb.TagNumber(1)
  set typeSpecClass(TypeSpecProto_TypeSpecClass v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeSpecClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeSpecClass() => $_clearField(1);

  /// The value returned by TypeSpec._serialize().
  @$pb.TagNumber(2)
  StructuredValue get typeState => $_getN(1);
  @$pb.TagNumber(2)
  set typeState(StructuredValue v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTypeState() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeState() => $_clearField(2);
  @$pb.TagNumber(2)
  StructuredValue ensureTypeState() => $_ensure(1);

  /// The name of the TypeSpec class.
  ///  * If type_spec_class == REGISTERED_TYPE_SPEC, the TypeSpec class is
  ///    the one registered under this name. For types registered outside
  ///    core TensorFlow by an add-on library, that library must be loaded
  ///    before this value can be deserialized by nested_structure_coder.
  ///  * If type_spec_class specifies a particular TypeSpec class, this field is
  ///    redundant with the type_spec_class enum, and is only used for error
  ///    reporting in older binaries that do not know the tupe_spec_class enum.
  @$pb.TagNumber(3)
  $core.String get typeSpecClassName => $_getSZ(2);
  @$pb.TagNumber(3)
  set typeSpecClassName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTypeSpecClassName() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeSpecClassName() => $_clearField(3);

  /// The number of flat tensor components required by this TypeSpec.
  @$pb.TagNumber(4)
  $core.int get numFlatComponents => $_getIZ(3);
  @$pb.TagNumber(4)
  set numFlatComponents($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumFlatComponents() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumFlatComponents() => $_clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
