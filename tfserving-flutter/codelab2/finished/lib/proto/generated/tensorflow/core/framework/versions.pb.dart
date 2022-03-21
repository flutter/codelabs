///
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/versions.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VersionDef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'VersionDef',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'producer',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minConsumer',
        $pb.PbFieldType.O3)
    ..p<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'badConsumers',
        $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  VersionDef._() : super();
  factory VersionDef({
    $core.int? producer,
    $core.int? minConsumer,
    $core.Iterable<$core.int>? badConsumers,
  }) {
    final _result = create();
    if (producer != null) {
      _result.producer = producer;
    }
    if (minConsumer != null) {
      _result.minConsumer = minConsumer;
    }
    if (badConsumers != null) {
      _result.badConsumers.addAll(badConsumers);
    }
    return _result;
  }
  factory VersionDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VersionDef clone() => VersionDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VersionDef copyWith(void Function(VersionDef) updates) =>
      super.copyWith((message) => updates(message as VersionDef))
          as VersionDef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VersionDef create() => VersionDef._();
  VersionDef createEmptyInstance() => create();
  static $pb.PbList<VersionDef> createRepeated() => $pb.PbList<VersionDef>();
  @$core.pragma('dart2js:noInline')
  static VersionDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VersionDef>(create);
  static VersionDef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get producer => $_getIZ(0);
  @$pb.TagNumber(1)
  set producer($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProducer() => $_has(0);
  @$pb.TagNumber(1)
  void clearProducer() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get minConsumer => $_getIZ(1);
  @$pb.TagNumber(2)
  set minConsumer($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinConsumer() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinConsumer() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get badConsumers => $_getList(2);
}
