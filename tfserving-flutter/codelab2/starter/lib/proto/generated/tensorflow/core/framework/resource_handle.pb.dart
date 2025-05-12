//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/resource_handle.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'tensor_shape.pb.dart' as $0;
import 'types.pbenum.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Protocol buffer representing a pair of (data type, tensor shape).
class ResourceHandleProto_DtypeAndShape extends $pb.GeneratedMessage {
  factory ResourceHandleProto_DtypeAndShape({
    $1.DataType? dtype,
    $0.TensorShapeProto? shape,
  }) {
    final $result = create();
    if (dtype != null) {
      $result.dtype = dtype;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    return $result;
  }
  ResourceHandleProto_DtypeAndShape._() : super();
  factory ResourceHandleProto_DtypeAndShape.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceHandleProto_DtypeAndShape.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceHandleProto.DtypeAndShape',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..e<$1.DataType>(1, _omitFieldNames ? '' : 'dtype', $pb.PbFieldType.OE,
        defaultOrMaker: $1.DataType.DT_INVALID,
        valueOf: $1.DataType.valueOf,
        enumValues: $1.DataType.values)
    ..aOM<$0.TensorShapeProto>(2, _omitFieldNames ? '' : 'shape',
        subBuilder: $0.TensorShapeProto.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceHandleProto_DtypeAndShape clone() =>
      ResourceHandleProto_DtypeAndShape()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceHandleProto_DtypeAndShape copyWith(
          void Function(ResourceHandleProto_DtypeAndShape) updates) =>
      super.copyWith((message) =>
              updates(message as ResourceHandleProto_DtypeAndShape))
          as ResourceHandleProto_DtypeAndShape;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceHandleProto_DtypeAndShape create() =>
      ResourceHandleProto_DtypeAndShape._();
  ResourceHandleProto_DtypeAndShape createEmptyInstance() => create();
  static $pb.PbList<ResourceHandleProto_DtypeAndShape> createRepeated() =>
      $pb.PbList<ResourceHandleProto_DtypeAndShape>();
  @$core.pragma('dart2js:noInline')
  static ResourceHandleProto_DtypeAndShape getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceHandleProto_DtypeAndShape>(
          create);
  static ResourceHandleProto_DtypeAndShape? _defaultInstance;

  @$pb.TagNumber(1)
  $1.DataType get dtype => $_getN(0);
  @$pb.TagNumber(1)
  set dtype($1.DataType v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDtype() => $_has(0);
  @$pb.TagNumber(1)
  void clearDtype() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.TensorShapeProto get shape => $_getN(1);
  @$pb.TagNumber(2)
  set shape($0.TensorShapeProto v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasShape() => $_has(1);
  @$pb.TagNumber(2)
  void clearShape() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.TensorShapeProto ensureShape() => $_ensure(1);
}

/// Protocol buffer representing a handle to a tensorflow resource. Handles are
/// not valid across executions, but can be serialized back and forth from within
/// a single run.
class ResourceHandleProto extends $pb.GeneratedMessage {
  factory ResourceHandleProto({
    $core.String? device,
    $core.String? container,
    $core.String? name,
    $fixnum.Int64? hashCode_4,
    $core.String? maybeTypeName,
    $core.Iterable<ResourceHandleProto_DtypeAndShape>? dtypesAndShapes,
  }) {
    final $result = create();
    if (device != null) {
      $result.device = device;
    }
    if (container != null) {
      $result.container = container;
    }
    if (name != null) {
      $result.name = name;
    }
    if (hashCode_4 != null) {
      $result.hashCode_4 = hashCode_4;
    }
    if (maybeTypeName != null) {
      $result.maybeTypeName = maybeTypeName;
    }
    if (dtypesAndShapes != null) {
      $result.dtypesAndShapes.addAll(dtypesAndShapes);
    }
    return $result;
  }
  ResourceHandleProto._() : super();
  factory ResourceHandleProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceHandleProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceHandleProto',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'device')
    ..aOS(2, _omitFieldNames ? '' : 'container')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'hashCode', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, _omitFieldNames ? '' : 'maybeTypeName')
    ..pc<ResourceHandleProto_DtypeAndShape>(
        6, _omitFieldNames ? '' : 'dtypesAndShapes', $pb.PbFieldType.PM,
        subBuilder: ResourceHandleProto_DtypeAndShape.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceHandleProto clone() => ResourceHandleProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceHandleProto copyWith(void Function(ResourceHandleProto) updates) =>
      super.copyWith((message) => updates(message as ResourceHandleProto))
          as ResourceHandleProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceHandleProto create() => ResourceHandleProto._();
  ResourceHandleProto createEmptyInstance() => create();
  static $pb.PbList<ResourceHandleProto> createRepeated() =>
      $pb.PbList<ResourceHandleProto>();
  @$core.pragma('dart2js:noInline')
  static ResourceHandleProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceHandleProto>(create);
  static ResourceHandleProto? _defaultInstance;

  /// Unique name for the device containing the resource.
  @$pb.TagNumber(1)
  $core.String get device => $_getSZ(0);
  @$pb.TagNumber(1)
  set device($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => $_clearField(1);

  /// Container in which this resource is placed.
  @$pb.TagNumber(2)
  $core.String get container => $_getSZ(1);
  @$pb.TagNumber(2)
  set container($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContainer() => $_has(1);
  @$pb.TagNumber(2)
  void clearContainer() => $_clearField(2);

  /// Unique name of this resource.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// Hash code for the type of the resource. Is only valid in the same device
  /// and in the same execution.
  @$pb.TagNumber(4)
  $fixnum.Int64 get hashCode_4 => $_getI64(3);
  @$pb.TagNumber(4)
  set hashCode_4($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHashCode_4() => $_has(3);
  @$pb.TagNumber(4)
  void clearHashCode_4() => $_clearField(4);

  /// For debug-only, the name of the type pointed to by this handle, if
  /// available.
  @$pb.TagNumber(5)
  $core.String get maybeTypeName => $_getSZ(4);
  @$pb.TagNumber(5)
  set maybeTypeName($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMaybeTypeName() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaybeTypeName() => $_clearField(5);

  /// Data types and shapes for the underlying resource.
  @$pb.TagNumber(6)
  $pb.PbList<ResourceHandleProto_DtypeAndShape> get dtypesAndShapes =>
      $_getList(5);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
