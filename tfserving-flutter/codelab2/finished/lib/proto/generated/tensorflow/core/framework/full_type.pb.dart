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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'full_type.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'full_type.pbenum.dart';

enum FullTypeDef_Attr { s, i, notSet }

/// Highly experimental and very likely to change.
/// This encoding uses tags instead of dedicated messages for regularity. In
/// particular the encoding imposes no restrictions on what the parameters of any
/// type should be, which in particular needs to be true for type symbols.
class FullTypeDef extends $pb.GeneratedMessage {
  factory FullTypeDef({
    FullTypeId? typeId,
    $core.Iterable<FullTypeDef>? args,
    $core.String? s,
    $fixnum.Int64? i,
  }) {
    final $result = create();
    if (typeId != null) {
      $result.typeId = typeId;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    if (s != null) {
      $result.s = s;
    }
    if (i != null) {
      $result.i = i;
    }
    return $result;
  }
  FullTypeDef._() : super();
  factory FullTypeDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FullTypeDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, FullTypeDef_Attr> _FullTypeDef_AttrByTag = {
    3: FullTypeDef_Attr.s,
    4: FullTypeDef_Attr.i,
    0: FullTypeDef_Attr.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FullTypeDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..e<FullTypeId>(1, _omitFieldNames ? '' : 'typeId', $pb.PbFieldType.OE,
        defaultOrMaker: FullTypeId.TFT_UNSET,
        valueOf: FullTypeId.valueOf,
        enumValues: FullTypeId.values)
    ..pc<FullTypeDef>(2, _omitFieldNames ? '' : 'args', $pb.PbFieldType.PM,
        subBuilder: FullTypeDef.create)
    ..aOS(3, _omitFieldNames ? '' : 's')
    ..aInt64(4, _omitFieldNames ? '' : 'i')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FullTypeDef clone() => FullTypeDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FullTypeDef copyWith(void Function(FullTypeDef) updates) =>
      super.copyWith((message) => updates(message as FullTypeDef))
          as FullTypeDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FullTypeDef create() => FullTypeDef._();
  FullTypeDef createEmptyInstance() => create();
  static $pb.PbList<FullTypeDef> createRepeated() => $pb.PbList<FullTypeDef>();
  @$core.pragma('dart2js:noInline')
  static FullTypeDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FullTypeDef>(create);
  static FullTypeDef? _defaultInstance;

  FullTypeDef_Attr whichAttr() => _FullTypeDef_AttrByTag[$_whichOneof(0)]!;
  void clearAttr() => $_clearField($_whichOneof(0));

  /// The principal type represented by this object. This may be a concrete type
  /// (Tensor, Dataset) a type variable (used for dependent types) a type
  /// symbol (Any, Union). See FullTypeId for details.
  @$pb.TagNumber(1)
  FullTypeId get typeId => $_getN(0);
  @$pb.TagNumber(1)
  set typeId(FullTypeId v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<FullTypeDef> get args => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get s => $_getSZ(2);
  @$pb.TagNumber(3)
  set s($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasS() => $_has(2);
  @$pb.TagNumber(3)
  void clearS() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get i => $_getI64(3);
  @$pb.TagNumber(4)
  set i($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasI() => $_has(3);
  @$pb.TagNumber(4)
  void clearI() => $_clearField(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
