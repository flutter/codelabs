///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/full_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'full_type.pbenum.dart';

export 'full_type.pbenum.dart';

enum FullTypeDef_Attr { s, i, notSet }

class FullTypeDef extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FullTypeDef_Attr> _FullTypeDef_AttrByTag = {
    3: FullTypeDef_Attr.s,
    4: FullTypeDef_Attr.i,
    0: FullTypeDef_Attr.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FullTypeDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..e<FullTypeId>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeId',
        $pb.PbFieldType.OE,
        defaultOrMaker: FullTypeId.TFT_UNSET,
        valueOf: FullTypeId.valueOf,
        enumValues: FullTypeId.values)
    ..pc<FullTypeDef>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'args',
        $pb.PbFieldType.PM,
        subBuilder: FullTypeDef.create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 's')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'i')
    ..hasRequiredFields = false;

  FullTypeDef._() : super();
  factory FullTypeDef({
    FullTypeId? typeId,
    $core.Iterable<FullTypeDef>? args,
    $core.String? s,
    $fixnum.Int64? i,
  }) {
    final _result = create();
    if (typeId != null) {
      _result.typeId = typeId;
    }
    if (args != null) {
      _result.args.addAll(args);
    }
    if (s != null) {
      _result.s = s;
    }
    if (i != null) {
      _result.i = i;
    }
    return _result;
  }
  factory FullTypeDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FullTypeDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FullTypeDef clone() => FullTypeDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FullTypeDef copyWith(void Function(FullTypeDef) updates) =>
      super.copyWith((message) => updates(message as FullTypeDef))
          as FullTypeDef; // ignore: deprecated_member_use
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
  void clearAttr() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FullTypeId get typeId => $_getN(0);
  @$pb.TagNumber(1)
  set typeId(FullTypeId v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTypeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<FullTypeDef> get args => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get s => $_getSZ(2);
  @$pb.TagNumber(3)
  set s($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasS() => $_has(2);
  @$pb.TagNumber(3)
  void clearS() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get i => $_getI64(3);
  @$pb.TagNumber(4)
  set i($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasI() => $_has(3);
  @$pb.TagNumber(4)
  void clearI() => clearField(4);
}
