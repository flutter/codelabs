///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/attr_value.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_shape.pb.dart' as $0;
import 'tensor.pb.dart' as $1;

import 'types.pbenum.dart' as $2;

class AttrValue_ListValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AttrValue.ListValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 's',
        $pb.PbFieldType.PY)
    ..p<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'i',
        $pb.PbFieldType.K6)
    ..p<$core.double>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'f',
        $pb.PbFieldType.KF)
    ..p<$core.bool>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'b',
        $pb.PbFieldType.KB)
    ..pc<$2.DataType>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        $pb.PbFieldType.KE,
        valueOf: $2.DataType.valueOf,
        enumValues: $2.DataType.values)
    ..pc<$0.TensorShapeProto>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'shape',
        $pb.PbFieldType.PM,
        subBuilder: $0.TensorShapeProto.create)
    ..pc<$1.TensorProto>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensor',
        $pb.PbFieldType.PM,
        subBuilder: $1.TensorProto.create)
    ..pc<NameAttrList>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'func',
        $pb.PbFieldType.PM,
        subBuilder: NameAttrList.create)
    ..hasRequiredFields = false;

  AttrValue_ListValue._() : super();
  factory AttrValue_ListValue({
    $core.Iterable<$core.List<$core.int>>? s,
    $core.Iterable<$fixnum.Int64>? i,
    $core.Iterable<$core.double>? f,
    $core.Iterable<$core.bool>? b,
    $core.Iterable<$2.DataType>? type,
    $core.Iterable<$0.TensorShapeProto>? shape,
    $core.Iterable<$1.TensorProto>? tensor,
    $core.Iterable<NameAttrList>? func,
  }) {
    final _result = create();
    if (s != null) {
      _result.s.addAll(s);
    }
    if (i != null) {
      _result.i.addAll(i);
    }
    if (f != null) {
      _result.f.addAll(f);
    }
    if (b != null) {
      _result.b.addAll(b);
    }
    if (type != null) {
      _result.type.addAll(type);
    }
    if (shape != null) {
      _result.shape.addAll(shape);
    }
    if (tensor != null) {
      _result.tensor.addAll(tensor);
    }
    if (func != null) {
      _result.func.addAll(func);
    }
    return _result;
  }
  factory AttrValue_ListValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AttrValue_ListValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AttrValue_ListValue clone() => AttrValue_ListValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AttrValue_ListValue copyWith(void Function(AttrValue_ListValue) updates) =>
      super.copyWith((message) => updates(message as AttrValue_ListValue))
          as AttrValue_ListValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AttrValue_ListValue create() => AttrValue_ListValue._();
  AttrValue_ListValue createEmptyInstance() => create();
  static $pb.PbList<AttrValue_ListValue> createRepeated() =>
      $pb.PbList<AttrValue_ListValue>();
  @$core.pragma('dart2js:noInline')
  static AttrValue_ListValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AttrValue_ListValue>(create);
  static AttrValue_ListValue? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get s => $_getList(0);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get i => $_getList(1);

  @$pb.TagNumber(4)
  $core.List<$core.double> get f => $_getList(2);

  @$pb.TagNumber(5)
  $core.List<$core.bool> get b => $_getList(3);

  @$pb.TagNumber(6)
  $core.List<$2.DataType> get type => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<$0.TensorShapeProto> get shape => $_getList(5);

  @$pb.TagNumber(8)
  $core.List<$1.TensorProto> get tensor => $_getList(6);

  @$pb.TagNumber(9)
  $core.List<NameAttrList> get func => $_getList(7);
}

enum AttrValue_Value {
  list,
  s,
  i,
  f,
  b,
  type,
  shape,
  tensor,
  placeholder,
  func,
  notSet
}

class AttrValue extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AttrValue_Value> _AttrValue_ValueByTag = {
    1: AttrValue_Value.list,
    2: AttrValue_Value.s,
    3: AttrValue_Value.i,
    4: AttrValue_Value.f,
    5: AttrValue_Value.b,
    6: AttrValue_Value.type,
    7: AttrValue_Value.shape,
    8: AttrValue_Value.tensor,
    9: AttrValue_Value.placeholder,
    10: AttrValue_Value.func,
    0: AttrValue_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AttrValue',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<AttrValue_ListValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'list',
        subBuilder: AttrValue_ListValue.create)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 's',
        $pb.PbFieldType.OY)
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'i')
    ..a<$core.double>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'f',
        $pb.PbFieldType.OF)
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'b')
    ..e<$2.DataType>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'type',
        $pb.PbFieldType.OE,
        defaultOrMaker: $2.DataType.DT_INVALID,
        valueOf: $2.DataType.valueOf,
        enumValues: $2.DataType.values)
    ..aOM<$0.TensorShapeProto>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'shape',
        subBuilder: $0.TensorShapeProto.create)
    ..aOM<$1.TensorProto>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensor',
        subBuilder: $1.TensorProto.create)
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'placeholder')
    ..aOM<NameAttrList>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'func',
        subBuilder: NameAttrList.create)
    ..hasRequiredFields = false;

  AttrValue._() : super();
  factory AttrValue({
    AttrValue_ListValue? list,
    $core.List<$core.int>? s,
    $fixnum.Int64? i,
    $core.double? f,
    $core.bool? b,
    $2.DataType? type,
    $0.TensorShapeProto? shape,
    $1.TensorProto? tensor,
    $core.String? placeholder,
    NameAttrList? func,
  }) {
    final _result = create();
    if (list != null) {
      _result.list = list;
    }
    if (s != null) {
      _result.s = s;
    }
    if (i != null) {
      _result.i = i;
    }
    if (f != null) {
      _result.f = f;
    }
    if (b != null) {
      _result.b = b;
    }
    if (type != null) {
      _result.type = type;
    }
    if (shape != null) {
      _result.shape = shape;
    }
    if (tensor != null) {
      _result.tensor = tensor;
    }
    if (placeholder != null) {
      _result.placeholder = placeholder;
    }
    if (func != null) {
      _result.func = func;
    }
    return _result;
  }
  factory AttrValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AttrValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AttrValue clone() => AttrValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AttrValue copyWith(void Function(AttrValue) updates) =>
      super.copyWith((message) => updates(message as AttrValue))
          as AttrValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AttrValue create() => AttrValue._();
  AttrValue createEmptyInstance() => create();
  static $pb.PbList<AttrValue> createRepeated() => $pb.PbList<AttrValue>();
  @$core.pragma('dart2js:noInline')
  static AttrValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttrValue>(create);
  static AttrValue? _defaultInstance;

  AttrValue_Value whichValue() => _AttrValue_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AttrValue_ListValue get list => $_getN(0);
  @$pb.TagNumber(1)
  set list(AttrValue_ListValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasList() => $_has(0);
  @$pb.TagNumber(1)
  void clearList() => clearField(1);
  @$pb.TagNumber(1)
  AttrValue_ListValue ensureList() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get s => $_getN(1);
  @$pb.TagNumber(2)
  set s($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasS() => $_has(1);
  @$pb.TagNumber(2)
  void clearS() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get i => $_getI64(2);
  @$pb.TagNumber(3)
  set i($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasI() => $_has(2);
  @$pb.TagNumber(3)
  void clearI() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get f => $_getN(3);
  @$pb.TagNumber(4)
  set f($core.double v) {
    $_setFloat(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasF() => $_has(3);
  @$pb.TagNumber(4)
  void clearF() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get b => $_getBF(4);
  @$pb.TagNumber(5)
  set b($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasB() => $_has(4);
  @$pb.TagNumber(5)
  void clearB() => clearField(5);

  @$pb.TagNumber(6)
  $2.DataType get type => $_getN(5);
  @$pb.TagNumber(6)
  set type($2.DataType v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $0.TensorShapeProto get shape => $_getN(6);
  @$pb.TagNumber(7)
  set shape($0.TensorShapeProto v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasShape() => $_has(6);
  @$pb.TagNumber(7)
  void clearShape() => clearField(7);
  @$pb.TagNumber(7)
  $0.TensorShapeProto ensureShape() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.TensorProto get tensor => $_getN(7);
  @$pb.TagNumber(8)
  set tensor($1.TensorProto v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasTensor() => $_has(7);
  @$pb.TagNumber(8)
  void clearTensor() => clearField(8);
  @$pb.TagNumber(8)
  $1.TensorProto ensureTensor() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get placeholder => $_getSZ(8);
  @$pb.TagNumber(9)
  set placeholder($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPlaceholder() => $_has(8);
  @$pb.TagNumber(9)
  void clearPlaceholder() => clearField(9);

  @$pb.TagNumber(10)
  NameAttrList get func => $_getN(9);
  @$pb.TagNumber(10)
  set func(NameAttrList v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasFunc() => $_has(9);
  @$pb.TagNumber(10)
  void clearFunc() => clearField(10);
  @$pb.TagNumber(10)
  NameAttrList ensureFunc() => $_ensure(9);
}

class NameAttrList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NameAttrList',
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
    ..m<$core.String, AttrValue>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'attr',
        entryClassName: 'NameAttrList.AttrEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: AttrValue.create,
        packageName: const $pb.PackageName('tensorflow'))
    ..hasRequiredFields = false;

  NameAttrList._() : super();
  factory NameAttrList({
    $core.String? name,
    $core.Map<$core.String, AttrValue>? attr,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (attr != null) {
      _result.attr.addAll(attr);
    }
    return _result;
  }
  factory NameAttrList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NameAttrList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NameAttrList clone() => NameAttrList()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NameAttrList copyWith(void Function(NameAttrList) updates) =>
      super.copyWith((message) => updates(message as NameAttrList))
          as NameAttrList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NameAttrList create() => NameAttrList._();
  NameAttrList createEmptyInstance() => create();
  static $pb.PbList<NameAttrList> createRepeated() =>
      $pb.PbList<NameAttrList>();
  @$core.pragma('dart2js:noInline')
  static NameAttrList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NameAttrList>(create);
  static NameAttrList? _defaultInstance;

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
  $core.Map<$core.String, AttrValue> get attr => $_getMap(1);
}
