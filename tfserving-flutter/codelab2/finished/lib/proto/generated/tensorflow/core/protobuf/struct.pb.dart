///
//  Generated code. Do not modify.
//  source: tensorflow/core/protobuf/struct.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../framework/tensor_shape.pb.dart' as $0;
import '../framework/tensor.pb.dart' as $1;

import '../framework/types.pbenum.dart' as $2;
import 'struct.pbenum.dart';

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

class StructuredValue extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StructuredValue_Kind>
      _StructuredValue_KindByTag = {
    1: StructuredValue_Kind.noneValue,
    11: StructuredValue_Kind.float64Value,
    12: StructuredValue_Kind.int64Value,
    13: StructuredValue_Kind.stringValue,
    14: StructuredValue_Kind.boolValue,
    31: StructuredValue_Kind.tensorShapeValue,
    32: StructuredValue_Kind.tensorDtypeValue,
    33: StructuredValue_Kind.tensorSpecValue,
    34: StructuredValue_Kind.typeSpecValue,
    35: StructuredValue_Kind.boundedTensorSpecValue,
    51: StructuredValue_Kind.listValue,
    52: StructuredValue_Kind.tupleValue,
    53: StructuredValue_Kind.dictValue,
    54: StructuredValue_Kind.namedTupleValue,
    0: StructuredValue_Kind.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [1, 11, 12, 13, 14, 31, 32, 33, 34, 35, 51, 52, 53, 54])
    ..aOM<NoneValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'noneValue',
        subBuilder: NoneValue.create)
    ..a<$core.double>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'float64Value',
        $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'int64Value',
        $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'stringValue')
    ..aOB(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'boolValue')
    ..aOM<$0.TensorShapeProto>(
        31,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorShapeValue',
        subBuilder: $0.TensorShapeProto.create)
    ..e<$2.DataType>(
        32,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorDtypeValue',
        $pb.PbFieldType.OE,
        defaultOrMaker: $2.DataType.DT_INVALID,
        valueOf: $2.DataType.valueOf,
        enumValues: $2.DataType.values)
    ..aOM<TensorSpecProto>(
        33,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorSpecValue',
        subBuilder: TensorSpecProto.create)
    ..aOM<TypeSpecProto>(
        34,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeSpecValue',
        subBuilder: TypeSpecProto.create)
    ..aOM<BoundedTensorSpecProto>(
        35,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'boundedTensorSpecValue',
        subBuilder: BoundedTensorSpecProto.create)
    ..aOM<ListValue>(
        51,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'listValue',
        subBuilder: ListValue.create)
    ..aOM<TupleValue>(
        52,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tupleValue',
        subBuilder: TupleValue.create)
    ..aOM<DictValue>(
        53,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dictValue',
        subBuilder: DictValue.create)
    ..aOM<NamedTupleValue>(
        54,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'namedTupleValue',
        subBuilder: NamedTupleValue.create)
    ..hasRequiredFields = false;

  StructuredValue._() : super();
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
    final _result = create();
    if (noneValue != null) {
      _result.noneValue = noneValue;
    }
    if (float64Value != null) {
      _result.float64Value = float64Value;
    }
    if (int64Value != null) {
      _result.int64Value = int64Value;
    }
    if (stringValue != null) {
      _result.stringValue = stringValue;
    }
    if (boolValue != null) {
      _result.boolValue = boolValue;
    }
    if (tensorShapeValue != null) {
      _result.tensorShapeValue = tensorShapeValue;
    }
    if (tensorDtypeValue != null) {
      _result.tensorDtypeValue = tensorDtypeValue;
    }
    if (tensorSpecValue != null) {
      _result.tensorSpecValue = tensorSpecValue;
    }
    if (typeSpecValue != null) {
      _result.typeSpecValue = typeSpecValue;
    }
    if (boundedTensorSpecValue != null) {
      _result.boundedTensorSpecValue = boundedTensorSpecValue;
    }
    if (listValue != null) {
      _result.listValue = listValue;
    }
    if (tupleValue != null) {
      _result.tupleValue = tupleValue;
    }
    if (dictValue != null) {
      _result.dictValue = dictValue;
    }
    if (namedTupleValue != null) {
      _result.namedTupleValue = namedTupleValue;
    }
    return _result;
  }
  factory StructuredValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredValue clone() => StructuredValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredValue copyWith(void Function(StructuredValue) updates) =>
      super.copyWith((message) => updates(message as StructuredValue))
          as StructuredValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredValue create() => StructuredValue._();
  StructuredValue createEmptyInstance() => create();
  static $pb.PbList<StructuredValue> createRepeated() =>
      $pb.PbList<StructuredValue>();
  @$core.pragma('dart2js:noInline')
  static StructuredValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredValue>(create);
  static StructuredValue? _defaultInstance;

  StructuredValue_Kind whichKind() =>
      _StructuredValue_KindByTag[$_whichOneof(0)]!;
  void clearKind() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NoneValue get noneValue => $_getN(0);
  @$pb.TagNumber(1)
  set noneValue(NoneValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasNoneValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoneValue() => clearField(1);
  @$pb.TagNumber(1)
  NoneValue ensureNoneValue() => $_ensure(0);

  @$pb.TagNumber(11)
  $core.double get float64Value => $_getN(1);
  @$pb.TagNumber(11)
  set float64Value($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasFloat64Value() => $_has(1);
  @$pb.TagNumber(11)
  void clearFloat64Value() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get int64Value => $_getI64(2);
  @$pb.TagNumber(12)
  set int64Value($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasInt64Value() => $_has(2);
  @$pb.TagNumber(12)
  void clearInt64Value() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get stringValue => $_getSZ(3);
  @$pb.TagNumber(13)
  set stringValue($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasStringValue() => $_has(3);
  @$pb.TagNumber(13)
  void clearStringValue() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get boolValue => $_getBF(4);
  @$pb.TagNumber(14)
  set boolValue($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasBoolValue() => $_has(4);
  @$pb.TagNumber(14)
  void clearBoolValue() => clearField(14);

  @$pb.TagNumber(31)
  $0.TensorShapeProto get tensorShapeValue => $_getN(5);
  @$pb.TagNumber(31)
  set tensorShapeValue($0.TensorShapeProto v) {
    setField(31, v);
  }

  @$pb.TagNumber(31)
  $core.bool hasTensorShapeValue() => $_has(5);
  @$pb.TagNumber(31)
  void clearTensorShapeValue() => clearField(31);
  @$pb.TagNumber(31)
  $0.TensorShapeProto ensureTensorShapeValue() => $_ensure(5);

  @$pb.TagNumber(32)
  $2.DataType get tensorDtypeValue => $_getN(6);
  @$pb.TagNumber(32)
  set tensorDtypeValue($2.DataType v) {
    setField(32, v);
  }

  @$pb.TagNumber(32)
  $core.bool hasTensorDtypeValue() => $_has(6);
  @$pb.TagNumber(32)
  void clearTensorDtypeValue() => clearField(32);

  @$pb.TagNumber(33)
  TensorSpecProto get tensorSpecValue => $_getN(7);
  @$pb.TagNumber(33)
  set tensorSpecValue(TensorSpecProto v) {
    setField(33, v);
  }

  @$pb.TagNumber(33)
  $core.bool hasTensorSpecValue() => $_has(7);
  @$pb.TagNumber(33)
  void clearTensorSpecValue() => clearField(33);
  @$pb.TagNumber(33)
  TensorSpecProto ensureTensorSpecValue() => $_ensure(7);

  @$pb.TagNumber(34)
  TypeSpecProto get typeSpecValue => $_getN(8);
  @$pb.TagNumber(34)
  set typeSpecValue(TypeSpecProto v) {
    setField(34, v);
  }

  @$pb.TagNumber(34)
  $core.bool hasTypeSpecValue() => $_has(8);
  @$pb.TagNumber(34)
  void clearTypeSpecValue() => clearField(34);
  @$pb.TagNumber(34)
  TypeSpecProto ensureTypeSpecValue() => $_ensure(8);

  @$pb.TagNumber(35)
  BoundedTensorSpecProto get boundedTensorSpecValue => $_getN(9);
  @$pb.TagNumber(35)
  set boundedTensorSpecValue(BoundedTensorSpecProto v) {
    setField(35, v);
  }

  @$pb.TagNumber(35)
  $core.bool hasBoundedTensorSpecValue() => $_has(9);
  @$pb.TagNumber(35)
  void clearBoundedTensorSpecValue() => clearField(35);
  @$pb.TagNumber(35)
  BoundedTensorSpecProto ensureBoundedTensorSpecValue() => $_ensure(9);

  @$pb.TagNumber(51)
  ListValue get listValue => $_getN(10);
  @$pb.TagNumber(51)
  set listValue(ListValue v) {
    setField(51, v);
  }

  @$pb.TagNumber(51)
  $core.bool hasListValue() => $_has(10);
  @$pb.TagNumber(51)
  void clearListValue() => clearField(51);
  @$pb.TagNumber(51)
  ListValue ensureListValue() => $_ensure(10);

  @$pb.TagNumber(52)
  TupleValue get tupleValue => $_getN(11);
  @$pb.TagNumber(52)
  set tupleValue(TupleValue v) {
    setField(52, v);
  }

  @$pb.TagNumber(52)
  $core.bool hasTupleValue() => $_has(11);
  @$pb.TagNumber(52)
  void clearTupleValue() => clearField(52);
  @$pb.TagNumber(52)
  TupleValue ensureTupleValue() => $_ensure(11);

  @$pb.TagNumber(53)
  DictValue get dictValue => $_getN(12);
  @$pb.TagNumber(53)
  set dictValue(DictValue v) {
    setField(53, v);
  }

  @$pb.TagNumber(53)
  $core.bool hasDictValue() => $_has(12);
  @$pb.TagNumber(53)
  void clearDictValue() => clearField(53);
  @$pb.TagNumber(53)
  DictValue ensureDictValue() => $_ensure(12);

  @$pb.TagNumber(54)
  NamedTupleValue get namedTupleValue => $_getN(13);
  @$pb.TagNumber(54)
  set namedTupleValue(NamedTupleValue v) {
    setField(54, v);
  }

  @$pb.TagNumber(54)
  $core.bool hasNamedTupleValue() => $_has(13);
  @$pb.TagNumber(54)
  void clearNamedTupleValue() => clearField(54);
  @$pb.TagNumber(54)
  NamedTupleValue ensureNamedTupleValue() => $_ensure(13);
}

class NoneValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NoneValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NoneValue._() : super();
  factory NoneValue() => create();
  factory NoneValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NoneValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NoneValue clone() => NoneValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NoneValue copyWith(void Function(NoneValue) updates) =>
      super.copyWith((message) => updates(message as NoneValue))
          as NoneValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoneValue create() => NoneValue._();
  NoneValue createEmptyInstance() => create();
  static $pb.PbList<NoneValue> createRepeated() => $pb.PbList<NoneValue>();
  @$core.pragma('dart2js:noInline')
  static NoneValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoneValue>(create);
  static NoneValue? _defaultInstance;
}

class ListValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<StructuredValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'values',
        $pb.PbFieldType.PM,
        subBuilder: StructuredValue.create)
    ..hasRequiredFields = false;

  ListValue._() : super();
  factory ListValue({
    $core.Iterable<StructuredValue>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory ListValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListValue clone() => ListValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListValue copyWith(void Function(ListValue) updates) =>
      super.copyWith((message) => updates(message as ListValue))
          as ListValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListValue create() => ListValue._();
  ListValue createEmptyInstance() => create();
  static $pb.PbList<ListValue> createRepeated() => $pb.PbList<ListValue>();
  @$core.pragma('dart2js:noInline')
  static ListValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListValue>(create);
  static ListValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StructuredValue> get values => $_getList(0);
}

class TupleValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TupleValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<StructuredValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'values',
        $pb.PbFieldType.PM,
        subBuilder: StructuredValue.create)
    ..hasRequiredFields = false;

  TupleValue._() : super();
  factory TupleValue({
    $core.Iterable<StructuredValue>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory TupleValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TupleValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TupleValue clone() => TupleValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TupleValue copyWith(void Function(TupleValue) updates) =>
      super.copyWith((message) => updates(message as TupleValue))
          as TupleValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TupleValue create() => TupleValue._();
  TupleValue createEmptyInstance() => create();
  static $pb.PbList<TupleValue> createRepeated() => $pb.PbList<TupleValue>();
  @$core.pragma('dart2js:noInline')
  static TupleValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TupleValue>(create);
  static TupleValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StructuredValue> get values => $_getList(0);
}

class DictValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DictValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..m<$core.String, StructuredValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fields',
        entryClassName: 'DictValue.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: StructuredValue.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  DictValue._() : super();
  factory DictValue({
    $core.Map<$core.String, StructuredValue>? fields,
  }) {
    final _result = create();
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    return _result;
  }
  factory DictValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DictValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DictValue clone() => DictValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DictValue copyWith(void Function(DictValue) updates) =>
      super.copyWith((message) => updates(message as DictValue))
          as DictValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DictValue create() => DictValue._();
  DictValue createEmptyInstance() => create();
  static $pb.PbList<DictValue> createRepeated() => $pb.PbList<DictValue>();
  @$core.pragma('dart2js:noInline')
  static DictValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DictValue>(create);
  static DictValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, StructuredValue> get fields => $_getMap(0);
}

class PairValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PairValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..aOM<StructuredValue>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: StructuredValue.create)
    ..hasRequiredFields = false;

  PairValue._() : super();
  factory PairValue({
    $core.String? key,
    StructuredValue? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory PairValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PairValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PairValue clone() => PairValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PairValue copyWith(void Function(PairValue) updates) =>
      super.copyWith((message) => updates(message as PairValue))
          as PairValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairValue create() => PairValue._();
  PairValue createEmptyInstance() => create();
  static $pb.PbList<PairValue> createRepeated() => $pb.PbList<PairValue>();
  @$core.pragma('dart2js:noInline')
  static PairValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairValue>(create);
  static PairValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  StructuredValue get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(StructuredValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  StructuredValue ensureValue() => $_ensure(1);
}

class NamedTupleValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NamedTupleValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..pc<PairValue>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'values',
        $pb.PbFieldType.PM,
        subBuilder: PairValue.create)
    ..hasRequiredFields = false;

  NamedTupleValue._() : super();
  factory NamedTupleValue({
    $core.String? name,
    $core.Iterable<PairValue>? values,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory NamedTupleValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NamedTupleValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NamedTupleValue clone() => NamedTupleValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NamedTupleValue copyWith(void Function(NamedTupleValue) updates) =>
      super.copyWith((message) => updates(message as NamedTupleValue))
          as NamedTupleValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NamedTupleValue create() => NamedTupleValue._();
  NamedTupleValue createEmptyInstance() => create();
  static $pb.PbList<NamedTupleValue> createRepeated() =>
      $pb.PbList<NamedTupleValue>();
  @$core.pragma('dart2js:noInline')
  static NamedTupleValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NamedTupleValue>(create);
  static NamedTupleValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<PairValue> get values => $_getList(1);
}

class TensorSpecProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TensorSpecProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOM<$0.TensorShapeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'shape',
        subBuilder: $0.TensorShapeProto.create)
    ..e<$2.DataType>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dtype',
        $pb.PbFieldType.OE,
        defaultOrMaker: $2.DataType.DT_INVALID,
        valueOf: $2.DataType.valueOf,
        enumValues: $2.DataType.values)
    ..hasRequiredFields = false;

  TensorSpecProto._() : super();
  factory TensorSpecProto({
    $core.String? name,
    $0.TensorShapeProto? shape,
    $2.DataType? dtype,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (shape != null) {
      _result.shape = shape;
    }
    if (dtype != null) {
      _result.dtype = dtype;
    }
    return _result;
  }
  factory TensorSpecProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorSpecProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TensorSpecProto clone() => TensorSpecProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TensorSpecProto copyWith(void Function(TensorSpecProto) updates) =>
      super.copyWith((message) => updates(message as TensorSpecProto))
          as TensorSpecProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorSpecProto create() => TensorSpecProto._();
  TensorSpecProto createEmptyInstance() => create();
  static $pb.PbList<TensorSpecProto> createRepeated() =>
      $pb.PbList<TensorSpecProto>();
  @$core.pragma('dart2js:noInline')
  static TensorSpecProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TensorSpecProto>(create);
  static TensorSpecProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $0.TensorShapeProto get shape => $_getN(1);
  @$pb.TagNumber(2)
  set shape($0.TensorShapeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearShape() => clearField(2);
  @$pb.TagNumber(2)
  $0.TensorShapeProto ensureShape() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.DataType get dtype => $_getN(2);
  @$pb.TagNumber(3)
  set dtype($2.DataType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearDtype() => clearField(3);
}

class BoundedTensorSpecProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BoundedTensorSpecProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOM<$0.TensorShapeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'shape',
        subBuilder: $0.TensorShapeProto.create)
    ..e<$2.DataType>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dtype',
        $pb.PbFieldType.OE,
        defaultOrMaker: $2.DataType.DT_INVALID,
        valueOf: $2.DataType.valueOf,
        enumValues: $2.DataType.values)
    ..aOM<$1.TensorProto>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minimum',
        subBuilder: $1.TensorProto.create)
    ..aOM<$1.TensorProto>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maximum',
        subBuilder: $1.TensorProto.create)
    ..hasRequiredFields = false;

  BoundedTensorSpecProto._() : super();
  factory BoundedTensorSpecProto({
    $core.String? name,
    $0.TensorShapeProto? shape,
    $2.DataType? dtype,
    $1.TensorProto? minimum,
    $1.TensorProto? maximum,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (shape != null) {
      _result.shape = shape;
    }
    if (dtype != null) {
      _result.dtype = dtype;
    }
    if (minimum != null) {
      _result.minimum = minimum;
    }
    if (maximum != null) {
      _result.maximum = maximum;
    }
    return _result;
  }
  factory BoundedTensorSpecProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BoundedTensorSpecProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BoundedTensorSpecProto clone() =>
      BoundedTensorSpecProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BoundedTensorSpecProto copyWith(
          void Function(BoundedTensorSpecProto) updates) =>
      super.copyWith((message) => updates(message as BoundedTensorSpecProto))
          as BoundedTensorSpecProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoundedTensorSpecProto create() => BoundedTensorSpecProto._();
  BoundedTensorSpecProto createEmptyInstance() => create();
  static $pb.PbList<BoundedTensorSpecProto> createRepeated() =>
      $pb.PbList<BoundedTensorSpecProto>();
  @$core.pragma('dart2js:noInline')
  static BoundedTensorSpecProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoundedTensorSpecProto>(create);
  static BoundedTensorSpecProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $0.TensorShapeProto get shape => $_getN(1);
  @$pb.TagNumber(2)
  set shape($0.TensorShapeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearShape() => clearField(2);
  @$pb.TagNumber(2)
  $0.TensorShapeProto ensureShape() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.DataType get dtype => $_getN(2);
  @$pb.TagNumber(3)
  set dtype($2.DataType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearDtype() => clearField(3);

  @$pb.TagNumber(4)
  $1.TensorProto get minimum => $_getN(3);
  @$pb.TagNumber(4)
  set minimum($1.TensorProto v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMinimum() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinimum() => clearField(4);
  @$pb.TagNumber(4)
  $1.TensorProto ensureMinimum() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.TensorProto get maximum => $_getN(4);
  @$pb.TagNumber(5)
  set maximum($1.TensorProto v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMaximum() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaximum() => clearField(5);
  @$pb.TagNumber(5)
  $1.TensorProto ensureMaximum() => $_ensure(4);
}

class TypeSpecProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TypeSpecProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..e<TypeSpecProto_TypeSpecClass>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeSpecClass',
        $pb.PbFieldType.OE,
        defaultOrMaker: TypeSpecProto_TypeSpecClass.UNKNOWN,
        valueOf: TypeSpecProto_TypeSpecClass.valueOf,
        enumValues: TypeSpecProto_TypeSpecClass.values)
    ..aOM<StructuredValue>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeState',
        subBuilder: StructuredValue.create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeSpecClassName')
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numFlatComponents',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  TypeSpecProto._() : super();
  factory TypeSpecProto({
    TypeSpecProto_TypeSpecClass? typeSpecClass,
    StructuredValue? typeState,
    $core.String? typeSpecClassName,
    $core.int? numFlatComponents,
  }) {
    final _result = create();
    if (typeSpecClass != null) {
      _result.typeSpecClass = typeSpecClass;
    }
    if (typeState != null) {
      _result.typeState = typeState;
    }
    if (typeSpecClassName != null) {
      _result.typeSpecClassName = typeSpecClassName;
    }
    if (numFlatComponents != null) {
      _result.numFlatComponents = numFlatComponents;
    }
    return _result;
  }
  factory TypeSpecProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TypeSpecProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TypeSpecProto clone() => TypeSpecProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TypeSpecProto copyWith(void Function(TypeSpecProto) updates) =>
      super.copyWith((message) => updates(message as TypeSpecProto))
          as TypeSpecProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TypeSpecProto create() => TypeSpecProto._();
  TypeSpecProto createEmptyInstance() => create();
  static $pb.PbList<TypeSpecProto> createRepeated() =>
      $pb.PbList<TypeSpecProto>();
  @$core.pragma('dart2js:noInline')
  static TypeSpecProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TypeSpecProto>(create);
  static TypeSpecProto? _defaultInstance;

  @$pb.TagNumber(1)
  TypeSpecProto_TypeSpecClass get typeSpecClass => $_getN(0);
  @$pb.TagNumber(1)
  set typeSpecClass(TypeSpecProto_TypeSpecClass v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTypeSpecClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeSpecClass() => clearField(1);

  @$pb.TagNumber(2)
  StructuredValue get typeState => $_getN(1);
  @$pb.TagNumber(2)
  set typeState(StructuredValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTypeState() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeState() => clearField(2);
  @$pb.TagNumber(2)
  StructuredValue ensureTypeState() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get typeSpecClassName => $_getSZ(2);
  @$pb.TagNumber(3)
  set typeSpecClassName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTypeSpecClassName() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeSpecClassName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numFlatComponents => $_getIZ(3);
  @$pb.TagNumber(4)
  set numFlatComponents($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNumFlatComponents() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumFlatComponents() => clearField(4);
}
