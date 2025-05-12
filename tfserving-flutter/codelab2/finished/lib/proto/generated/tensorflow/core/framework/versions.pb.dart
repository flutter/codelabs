//
//  Generated code. Do not modify.
//  source: tensorflow/core/framework/versions.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

///  Version information for a piece of serialized data
///
///  There are different types of versions for each type of data
///  (GraphDef, etc.), but they all have the same common shape
///  described here.
///
///  Each consumer has "consumer" and "min_producer" versions (specified
///  elsewhere).  A consumer is allowed to consume this data if
///
///    producer >= min_producer
///    consumer >= min_consumer
///    consumer not in bad_consumers
class VersionDef extends $pb.GeneratedMessage {
  factory VersionDef({
    $core.int? producer,
    $core.int? minConsumer,
    $core.Iterable<$core.int>? badConsumers,
  }) {
    final $result = create();
    if (producer != null) {
      $result.producer = producer;
    }
    if (minConsumer != null) {
      $result.minConsumer = minConsumer;
    }
    if (badConsumers != null) {
      $result.badConsumers.addAll(badConsumers);
    }
    return $result;
  }
  VersionDef._() : super();
  factory VersionDef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VersionDef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VersionDef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'producer', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'minConsumer', $pb.PbFieldType.O3)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'badConsumers', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VersionDef clone() => VersionDef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VersionDef copyWith(void Function(VersionDef) updates) =>
      super.copyWith((message) => updates(message as VersionDef)) as VersionDef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VersionDef create() => VersionDef._();
  VersionDef createEmptyInstance() => create();
  static $pb.PbList<VersionDef> createRepeated() => $pb.PbList<VersionDef>();
  @$core.pragma('dart2js:noInline')
  static VersionDef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VersionDef>(create);
  static VersionDef? _defaultInstance;

  /// The version of the code that produced this data.
  @$pb.TagNumber(1)
  $core.int get producer => $_getIZ(0);
  @$pb.TagNumber(1)
  set producer($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProducer() => $_has(0);
  @$pb.TagNumber(1)
  void clearProducer() => $_clearField(1);

  /// Any consumer below this version is not allowed to consume this data.
  @$pb.TagNumber(2)
  $core.int get minConsumer => $_getIZ(1);
  @$pb.TagNumber(2)
  set minConsumer($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMinConsumer() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinConsumer() => $_clearField(2);

  /// Specific consumer versions which are disallowed (e.g. due to bugs).
  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get badConsumers => $_getList(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
