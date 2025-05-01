//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/tensor.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'resource_handle.pb.dart' as $1;
import 'tensor_shape.pb.dart' as $0;
import 'types.pbenum.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Protocol buffer representing a tensor.
class TensorProto extends $pb.GeneratedMessage {
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
    final $result = create();
    if (dtype != null) {
      $result.dtype = dtype;
    }
    if (tensorShape != null) {
      $result.tensorShape = tensorShape;
    }
    if (versionNumber != null) {
      $result.versionNumber = versionNumber;
    }
    if (tensorContent != null) {
      $result.tensorContent = tensorContent;
    }
    if (floatVal != null) {
      $result.floatVal.addAll(floatVal);
    }
    if (doubleVal != null) {
      $result.doubleVal.addAll(doubleVal);
    }
    if (intVal != null) {
      $result.intVal.addAll(intVal);
    }
    if (stringVal != null) {
      $result.stringVal.addAll(stringVal);
    }
    if (scomplexVal != null) {
      $result.scomplexVal.addAll(scomplexVal);
    }
    if (int64Val != null) {
      $result.int64Val.addAll(int64Val);
    }
    if (boolVal != null) {
      $result.boolVal.addAll(boolVal);
    }
    if (dcomplexVal != null) {
      $result.dcomplexVal.addAll(dcomplexVal);
    }
    if (halfVal != null) {
      $result.halfVal.addAll(halfVal);
    }
    if (resourceHandleVal != null) {
      $result.resourceHandleVal.addAll(resourceHandleVal);
    }
    if (variantVal != null) {
      $result.variantVal.addAll(variantVal);
    }
    if (uint32Val != null) {
      $result.uint32Val.addAll(uint32Val);
    }
    if (uint64Val != null) {
      $result.uint64Val.addAll(uint64Val);
    }
    return $result;
  }
  TensorProto._() : super();
  factory TensorProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TensorProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TensorProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..e<$2.DataType>(1, _omitFieldNames ? '' : 'dtype', $pb.PbFieldType.OE, defaultOrMaker: $2.DataType.DT_INVALID, valueOf: $2.DataType.valueOf, enumValues: $2.DataType.values)
    ..aOM<$0.TensorShapeProto>(2, _omitFieldNames ? '' : 'tensorShape', subBuilder: $0.TensorShapeProto.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'versionNumber', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'tensorContent', $pb.PbFieldType.OY)
    ..p<$core.double>(5, _omitFieldNames ? '' : 'floatVal', $pb.PbFieldType.KF)
    ..p<$core.double>(6, _omitFieldNames ? '' : 'doubleVal', $pb.PbFieldType.KD)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'intVal', $pb.PbFieldType.K3)
    ..p<$core.List<$core.int>>(8, _omitFieldNames ? '' : 'stringVal', $pb.PbFieldType.PY)
    ..p<$core.double>(9, _omitFieldNames ? '' : 'scomplexVal', $pb.PbFieldType.KF)
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'int64Val', $pb.PbFieldType.K6)
    ..p<$core.bool>(11, _omitFieldNames ? '' : 'boolVal', $pb.PbFieldType.KB)
    ..p<$core.double>(12, _omitFieldNames ? '' : 'dcomplexVal', $pb.PbFieldType.KD)
    ..p<$core.int>(13, _omitFieldNames ? '' : 'halfVal', $pb.PbFieldType.K3)
    ..pc<$1.ResourceHandleProto>(14, _omitFieldNames ? '' : 'resourceHandleVal', $pb.PbFieldType.PM, subBuilder: $1.ResourceHandleProto.create)
    ..pc<VariantTensorDataProto>(15, _omitFieldNames ? '' : 'variantVal', $pb.PbFieldType.PM, subBuilder: VariantTensorDataProto.create)
    ..p<$core.int>(16, _omitFieldNames ? '' : 'uint32Val', $pb.PbFieldType.KU3)
    ..p<$fixnum.Int64>(17, _omitFieldNames ? '' : 'uint64Val', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TensorProto clone() => TensorProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TensorProto copyWith(void Function(TensorProto) updates) => super.copyWith((message) => updates(message as TensorProto)) as TensorProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TensorProto create() => TensorProto._();
  TensorProto createEmptyInstance() => create();
  static $pb.PbList<TensorProto> createRepeated() => $pb.PbList<TensorProto>();
  @$core.pragma('dart2js:noInline')
  static TensorProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TensorProto>(create);
  static TensorProto? _defaultInstance;

  @$pb.TagNumber(1)
  $2.DataType get dtype => $_getN(0);
  @$pb.TagNumber(1)
  set dtype($2.DataType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDtype() => $_has(0);
  @$pb.TagNumber(1)
  void clearDtype() => $_clearField(1);

  /// Shape of the tensor.  TODO(touts): sort out the 0-rank issues.
  @$pb.TagNumber(2)
  $0.TensorShapeProto get tensorShape => $_getN(1);
  @$pb.TagNumber(2)
  set tensorShape($0.TensorShapeProto v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTensorShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearTensorShape() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.TensorShapeProto ensureTensorShape() => $_ensure(1);

  ///  Version number.
  ///
  ///  In version 0, if the "repeated xxx" representations contain only one
  ///  element, that element is repeated to fill the shape.  This makes it easy
  ///  to represent a constant Tensor with a single value.
  @$pb.TagNumber(3)
  $core.int get versionNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set versionNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersionNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionNumber() => $_clearField(3);

  /// Serialized raw tensor content from either Tensor::AsProtoTensorContent or
  /// memcpy in tensorflow::grpc::EncodeTensorToByteBuffer. This representation
  /// can be used for all tensor types. The purpose of this representation is to
  /// reduce serialization overhead during RPC call by avoiding serialization of
  /// many repeated small items.
  @$pb.TagNumber(4)
  $core.List<$core.int> get tensorContent => $_getN(3);
  @$pb.TagNumber(4)
  set tensorContent($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTensorContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearTensorContent() => $_clearField(4);

  /// DT_FLOAT.
  @$pb.TagNumber(5)
  $pb.PbList<$core.double> get floatVal => $_getList(4);

  /// DT_DOUBLE.
  @$pb.TagNumber(6)
  $pb.PbList<$core.double> get doubleVal => $_getList(5);

  /// DT_INT32, DT_INT16, DT_UINT16, DT_INT8, DT_UINT8.
  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get intVal => $_getList(6);

  /// DT_STRING
  @$pb.TagNumber(8)
  $pb.PbList<$core.List<$core.int>> get stringVal => $_getList(7);

  /// DT_COMPLEX64. scomplex_val(2*i) and scomplex_val(2*i+1) are real
  /// and imaginary parts of i-th single precision complex.
  @$pb.TagNumber(9)
  $pb.PbList<$core.double> get scomplexVal => $_getList(8);

  /// DT_INT64
  @$pb.TagNumber(10)
  $pb.PbList<$fixnum.Int64> get int64Val => $_getList(9);

  /// DT_BOOL
  @$pb.TagNumber(11)
  $pb.PbList<$core.bool> get boolVal => $_getList(10);

  /// DT_COMPLEX128. dcomplex_val(2*i) and dcomplex_val(2*i+1) are real
  /// and imaginary parts of i-th double precision complex.
  @$pb.TagNumber(12)
  $pb.PbList<$core.double> get dcomplexVal => $_getList(11);

  /// DT_HALF, DT_BFLOAT16. Note that since protobuf has no int16 type, we'll
  /// have some pointless zero padding for each value here.
  @$pb.TagNumber(13)
  $pb.PbList<$core.int> get halfVal => $_getList(12);

  /// DT_RESOURCE
  @$pb.TagNumber(14)
  $pb.PbList<$1.ResourceHandleProto> get resourceHandleVal => $_getList(13);

  /// DT_VARIANT
  @$pb.TagNumber(15)
  $pb.PbList<VariantTensorDataProto> get variantVal => $_getList(14);

  /// DT_UINT32
  @$pb.TagNumber(16)
  $pb.PbList<$core.int> get uint32Val => $_getList(15);

  /// DT_UINT64
  @$pb.TagNumber(17)
  $pb.PbList<$fixnum.Int64> get uint64Val => $_getList(16);
}

/// Protocol buffer representing the serialization format of DT_VARIANT tensors.
class VariantTensorDataProto extends $pb.GeneratedMessage {
  factory VariantTensorDataProto({
    $core.String? typeName,
    $core.List<$core.int>? metadata,
    $core.Iterable<TensorProto>? tensors,
  }) {
    final $result = create();
    if (typeName != null) {
      $result.typeName = typeName;
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (tensors != null) {
      $result.tensors.addAll(tensors);
    }
    return $result;
  }
  VariantTensorDataProto._() : super();
  factory VariantTensorDataProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VariantTensorDataProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VariantTensorDataProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'typeName')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.OY)
    ..pc<TensorProto>(3, _omitFieldNames ? '' : 'tensors', $pb.PbFieldType.PM, subBuilder: TensorProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VariantTensorDataProto clone() => VariantTensorDataProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VariantTensorDataProto copyWith(void Function(VariantTensorDataProto) updates) => super.copyWith((message) => updates(message as VariantTensorDataProto)) as VariantTensorDataProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariantTensorDataProto create() => VariantTensorDataProto._();
  VariantTensorDataProto createEmptyInstance() => create();
  static $pb.PbList<VariantTensorDataProto> createRepeated() => $pb.PbList<VariantTensorDataProto>();
  @$core.pragma('dart2js:noInline')
  static VariantTensorDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VariantTensorDataProto>(create);
  static VariantTensorDataProto? _defaultInstance;

  /// Name of the type of objects being serialized.
  @$pb.TagNumber(1)
  $core.String get typeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set typeName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeName() => $_clearField(1);

  /// Portions of the object that are not Tensors.
  @$pb.TagNumber(2)
  $core.List<$core.int> get metadata => $_getN(1);
  @$pb.TagNumber(2)
  set metadata($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadata() => $_clearField(2);

  /// Tensors contained within objects being serialized.
  @$pb.TagNumber(3)
  $pb.PbList<TensorProto> get tensors => $_getList(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
