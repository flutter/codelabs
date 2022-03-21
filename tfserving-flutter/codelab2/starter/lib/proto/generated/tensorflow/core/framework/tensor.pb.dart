///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/tensor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_shape.pb.dart' as $0;
import 'resource_handle.pb.dart' as $1;

import 'types.pbenum.dart' as $2;

class TensorProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TensorProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..e<$2.DataType>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dtype',
        $pb.PbFieldType.OE,
        defaultOrMaker: $2.DataType.DT_INVALID,
        valueOf: $2.DataType.valueOf,
        enumValues: $2.DataType.values)
    ..aOM<$0.TensorShapeProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorShape',
        subBuilder: $0.TensorShapeProto.create)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'versionNumber',
        $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensorContent',
        $pb.PbFieldType.OY)
    ..p<$core.double>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'floatVal',
        $pb.PbFieldType.KF)
    ..p<$core.double>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'doubleVal',
        $pb.PbFieldType.KD)
    ..p<$core.int>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'intVal',
        $pb.PbFieldType.K3)
    ..p<$core.List<$core.int>>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'stringVal',
        $pb.PbFieldType.PY)
    ..p<$core.double>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'scomplexVal',
        $pb.PbFieldType.KF)
    ..p<$fixnum.Int64>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'int64Val',
        $pb.PbFieldType.K6)
    ..p<$core.bool>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'boolVal',
        $pb.PbFieldType.KB)
    ..p<$core.double>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dcomplexVal',
        $pb.PbFieldType.KD)
    ..p<$core.int>(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'halfVal',
        $pb.PbFieldType.K3)
    ..pc<$1.ResourceHandleProto>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'resourceHandleVal',
        $pb.PbFieldType.PM,
        subBuilder: $1.ResourceHandleProto.create)
    ..pc<VariantTensorDataProto>(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'variantVal',
        $pb.PbFieldType.PM,
        subBuilder: VariantTensorDataProto.create)
    ..p<$core.int>(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uint32Val',
        $pb.PbFieldType.KU3)
    ..p<$fixnum.Int64>(
        17,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uint64Val',
        $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  TensorProto._() : super();
  factory TensorProto({
    $2.DataType? dtype,
    $0.TensorShapeProto? tensorShape,
    $core.int? versionNumber,
    $core.List<$core.int>? tensorContent,
    $core.Iterable<$core.double>? floatVal,
    $core.Iterable<$core.double>? doubleVal,
    $core.Iterable<$core.int>? intVal,
    $core.Iterable<$core.List<$core.int>>? stringVal,
    $core.Iterable<$core.double>? scomplexVal,
    $core.Iterable<$fixnum.Int64>? int64Val,
    $core.Iterable<$core.bool>? boolVal,
    $core.Iterable<$core.double>? dcomplexVal,
    $core.Iterable<$core.int>? halfVal,
    $core.Iterable<$1.ResourceHandleProto>? resourceHandleVal,
    $core.Iterable<VariantTensorDataProto>? variantVal,
    $core.Iterable<$core.int>? uint32Val,
    $core.Iterable<$fixnum.Int64>? uint64Val,
  }) {
    final _result = create();
    if (dtype != null) {
      _result.dtype = dtype;
    }
    if (tensorShape != null) {
      _result.tensorShape = tensorShape;
    }
    if (versionNumber != null) {
      _result.versionNumber = versionNumber;
    }
    if (tensorContent != null) {
      _result.tensorContent = tensorContent;
    }
    if (floatVal != null) {
      _result.floatVal.addAll(floatVal);
    }
    if (doubleVal != null) {
      _result.doubleVal.addAll(doubleVal);
    }
    if (intVal != null) {
      _result.intVal.addAll(intVal);
    }
    if (stringVal != null) {
      _result.stringVal.addAll(stringVal);
    }
    if (scomplexVal != null) {
      _result.scomplexVal.addAll(scomplexVal);
    }
    if (int64Val != null) {
      _result.int64Val.addAll(int64Val);
    }
    if (boolVal != null) {
      _result.boolVal.addAll(boolVal);
    }
    if (dcomplexVal != null) {
      _result.dcomplexVal.addAll(dcomplexVal);
    }
    if (halfVal != null) {
      _result.halfVal.addAll(halfVal);
    }
    if (resourceHandleVal != null) {
      _result.resourceHandleVal.addAll(resourceHandleVal);
    }
    if (variantVal != null) {
      _result.variantVal.addAll(variantVal);
    }
    if (uint32Val != null) {
      _result.uint32Val.addAll(uint32Val);
    }
    if (uint64Val != null) {
      _result.uint64Val.addAll(uint64Val);
    }
    return _result;
  }
  factory TensorProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TensorProto clone() => TensorProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TensorProto copyWith(void Function(TensorProto) updates) =>
      super.copyWith((message) => updates(message as TensorProto))
          as TensorProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorProto create() => TensorProto._();
  TensorProto createEmptyInstance() => create();
  static $pb.PbList<TensorProto> createRepeated() => $pb.PbList<TensorProto>();
  @$core.pragma('dart2js:noInline')
  static TensorProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TensorProto>(create);
  static TensorProto? _defaultInstance;

  @$pb.TagNumber(1)
  $2.DataType get dtype => $_getN(0);
  @$pb.TagNumber(1)
  set dtype($2.DataType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDtype() => $_has(0);
  @$pb.TagNumber(1)
  void clearDtype() => clearField(1);

  @$pb.TagNumber(2)
  $0.TensorShapeProto get tensorShape => $_getN(1);
  @$pb.TagNumber(2)
  set tensorShape($0.TensorShapeProto v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTensorShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearTensorShape() => clearField(2);
  @$pb.TagNumber(2)
  $0.TensorShapeProto ensureTensorShape() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get versionNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set versionNumber($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVersionNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get tensorContent => $_getN(3);
  @$pb.TagNumber(4)
  set tensorContent($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTensorContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearTensorContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.double> get floatVal => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.double> get doubleVal => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get intVal => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.List<$core.int>> get stringVal => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.double> get scomplexVal => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$fixnum.Int64> get int64Val => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$core.bool> get boolVal => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$core.double> get dcomplexVal => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.int> get halfVal => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<$1.ResourceHandleProto> get resourceHandleVal => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<VariantTensorDataProto> get variantVal => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<$core.int> get uint32Val => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<$fixnum.Int64> get uint64Val => $_getList(16);
}

class VariantTensorDataProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VariantTensorDataProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeName')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        $pb.PbFieldType.OY)
    ..pc<TensorProto>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tensors',
        $pb.PbFieldType.PM,
        subBuilder: TensorProto.create)
    ..hasRequiredFields = false;

  VariantTensorDataProto._() : super();
  factory VariantTensorDataProto({
    $core.String? typeName,
    $core.List<$core.int>? metadata,
    $core.Iterable<TensorProto>? tensors,
  }) {
    final _result = create();
    if (typeName != null) {
      _result.typeName = typeName;
    }
    if (metadata != null) {
      _result.metadata = metadata;
    }
    if (tensors != null) {
      _result.tensors.addAll(tensors);
    }
    return _result;
  }
  factory VariantTensorDataProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VariantTensorDataProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VariantTensorDataProto clone() =>
      VariantTensorDataProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VariantTensorDataProto copyWith(
          void Function(VariantTensorDataProto) updates) =>
      super.copyWith((message) => updates(message as VariantTensorDataProto))
          as VariantTensorDataProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VariantTensorDataProto create() => VariantTensorDataProto._();
  VariantTensorDataProto createEmptyInstance() => create();
  static $pb.PbList<VariantTensorDataProto> createRepeated() =>
      $pb.PbList<VariantTensorDataProto>();
  @$core.pragma('dart2js:noInline')
  static VariantTensorDataProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariantTensorDataProto>(create);
  static VariantTensorDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get typeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set typeName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTypeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get metadata => $_getN(1);
  @$pb.TagNumber(2)
  set metadata($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadata() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TensorProto> get tensors => $_getList(2);
}
