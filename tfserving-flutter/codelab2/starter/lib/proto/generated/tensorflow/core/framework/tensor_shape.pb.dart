//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/tensor_shape.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// One dimension of the tensor.
class TensorShapeProto_Dim extends $pb.GeneratedMessage {
  factory TensorShapeProto_Dim({
    $fixnum.Int64? size,
    $core.String? name,
  }) {
    final $result = create();
    if (size != null) {
      $result.size = size;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TensorShapeProto_Dim._() : super();
  factory TensorShapeProto_Dim.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TensorShapeProto_Dim.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TensorShapeProto.Dim', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'size')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TensorShapeProto_Dim clone() => TensorShapeProto_Dim()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TensorShapeProto_Dim copyWith(void Function(TensorShapeProto_Dim) updates) => super.copyWith((message) => updates(message as TensorShapeProto_Dim)) as TensorShapeProto_Dim;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TensorShapeProto_Dim create() => TensorShapeProto_Dim._();
  TensorShapeProto_Dim createEmptyInstance() => create();
  static $pb.PbList<TensorShapeProto_Dim> createRepeated() => $pb.PbList<TensorShapeProto_Dim>();
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto_Dim getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TensorShapeProto_Dim>(create);
  static TensorShapeProto_Dim? _defaultInstance;

  /// Size of the tensor in that dimension.
  /// This value must be >= -1, but values of -1 are reserved for "unknown"
  /// shapes (values of -1 mean "unknown" dimension).  Certain wrappers
  /// that work with TensorShapeProto may fail at runtime when deserializing
  /// a TensorShapeProto containing a dim value of -1.
  @$pb.TagNumber(1)
  $fixnum.Int64 get size => $_getI64(0);
  @$pb.TagNumber(1)
  set size($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => $_clearField(1);

  /// Optional name of the tensor dimension.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);
}

/// Dimensions of a tensor.
class TensorShapeProto extends $pb.GeneratedMessage {
  factory TensorShapeProto({
    $core.Iterable<TensorShapeProto_Dim>? dim,
    $core.bool? unknownRank,
  }) {
    final $result = create();
    if (dim != null) {
      $result.dim.addAll(dim);
    }
    if (unknownRank != null) {
      $result.unknownRank = unknownRank;
    }
    return $result;
  }
  TensorShapeProto._() : super();
  factory TensorShapeProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TensorShapeProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TensorShapeProto', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'), createEmptyInstance: create)
    ..pc<TensorShapeProto_Dim>(2, _omitFieldNames ? '' : 'dim', $pb.PbFieldType.PM, subBuilder: TensorShapeProto_Dim.create)
    ..aOB(3, _omitFieldNames ? '' : 'unknownRank')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TensorShapeProto clone() => TensorShapeProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TensorShapeProto copyWith(void Function(TensorShapeProto) updates) => super.copyWith((message) => updates(message as TensorShapeProto)) as TensorShapeProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TensorShapeProto create() => TensorShapeProto._();
  TensorShapeProto createEmptyInstance() => create();
  static $pb.PbList<TensorShapeProto> createRepeated() => $pb.PbList<TensorShapeProto>();
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TensorShapeProto>(create);
  static TensorShapeProto? _defaultInstance;

  ///  Dimensions of the tensor, such as {"input", 30}, {"output", 40}
  ///  for a 30 x 40 2D tensor.  If an entry has size -1, this
  ///  corresponds to a dimension of unknown size. The names are
  ///  optional.
  ///
  ///  The order of entries in "dim" matters: It indicates the layout of the
  ///  values in the tensor in-memory representation.
  ///
  ///  The first entry in "dim" is the outermost dimension used to layout the
  ///  values, the last entry is the innermost dimension.  This matches the
  ///  in-memory layout of RowMajor Eigen tensors.
  ///
  ///  If "dim.size()" > 0, "unknown_rank" must be false.
  @$pb.TagNumber(2)
  $pb.PbList<TensorShapeProto_Dim> get dim => $_getList(0);

  ///  If true, the number of dimensions in the shape is unknown.
  ///
  ///  If true, "dim.size()" must be 0.
  @$pb.TagNumber(3)
  $core.bool get unknownRank => $_getBF(1);
  @$pb.TagNumber(3)
  set unknownRank($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnknownRank() => $_has(1);
  @$pb.TagNumber(3)
  void clearUnknownRank() => $_clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
