///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/tensor_shape.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class TensorShapeProto_Dim extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TensorShapeProto.Dim',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'size')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  TensorShapeProto_Dim._() : super();
  factory TensorShapeProto_Dim({
    $fixnum.Int64? size,
    $core.String? name,
  }) {
    final _result = create();
    if (size != null) {
      _result.size = size;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory TensorShapeProto_Dim.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorShapeProto_Dim.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TensorShapeProto_Dim clone() =>
      TensorShapeProto_Dim()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TensorShapeProto_Dim copyWith(void Function(TensorShapeProto_Dim) updates) =>
      super.copyWith((message) => updates(message as TensorShapeProto_Dim))
          as TensorShapeProto_Dim; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto_Dim create() => TensorShapeProto_Dim._();
  TensorShapeProto_Dim createEmptyInstance() => create();
  static $pb.PbList<TensorShapeProto_Dim> createRepeated() =>
      $pb.PbList<TensorShapeProto_Dim>();
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto_Dim getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TensorShapeProto_Dim>(create);
  static TensorShapeProto_Dim? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get size => $_getI64(0);
  @$pb.TagNumber(1)
  set size($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class TensorShapeProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TensorShapeProto',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..pc<TensorShapeProto_Dim>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dim',
        $pb.PbFieldType.PM,
        subBuilder: TensorShapeProto_Dim.create)
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'unknownRank')
    ..hasRequiredFields = false;

  TensorShapeProto._() : super();
  factory TensorShapeProto({
    $core.Iterable<TensorShapeProto_Dim>? dim,
    $core.bool? unknownRank,
  }) {
    final _result = create();
    if (dim != null) {
      _result.dim.addAll(dim);
    }
    if (unknownRank != null) {
      _result.unknownRank = unknownRank;
    }
    return _result;
  }
  factory TensorShapeProto.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TensorShapeProto.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TensorShapeProto clone() => TensorShapeProto()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TensorShapeProto copyWith(void Function(TensorShapeProto) updates) =>
      super.copyWith((message) => updates(message as TensorShapeProto))
          as TensorShapeProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto create() => TensorShapeProto._();
  TensorShapeProto createEmptyInstance() => create();
  static $pb.PbList<TensorShapeProto> createRepeated() =>
      $pb.PbList<TensorShapeProto>();
  @$core.pragma('dart2js:noInline')
  static TensorShapeProto getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TensorShapeProto>(create);
  static TensorShapeProto? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<TensorShapeProto_Dim> get dim => $_getList(0);

  @$pb.TagNumber(3)
  $core.bool get unknownRank => $_getBF(1);
  @$pb.TagNumber(3)
  set unknownRank($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUnknownRank() => $_has(1);
  @$pb.TagNumber(3)
  void clearUnknownRank() => clearField(3);
}
