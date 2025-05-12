//
//  Generated code. Do not modify.
//  source: tensorflow/core/example/example.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'feature.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Example extends $pb.GeneratedMessage {
  factory Example({
    $0.Features? features,
  }) {
    final $result = create();
    if (features != null) {
      $result.features = features;
    }
    return $result;
  }
  Example._() : super();
  factory Example.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Example.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Example',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOM<$0.Features>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $0.Features.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Example clone() => Example()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Example copyWith(void Function(Example) updates) =>
      super.copyWith((message) => updates(message as Example)) as Example;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Example create() => Example._();
  Example createEmptyInstance() => create();
  static $pb.PbList<Example> createRepeated() => $pb.PbList<Example>();
  @$core.pragma('dart2js:noInline')
  static Example getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Example>(create);
  static Example? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Features get features => $_getN(0);
  @$pb.TagNumber(1)
  set features($0.Features v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFeatures() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeatures() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Features ensureFeatures() => $_ensure(0);
}

class SequenceExample extends $pb.GeneratedMessage {
  factory SequenceExample({
    $0.Features? context,
    $0.FeatureLists? featureLists,
  }) {
    final $result = create();
    if (context != null) {
      $result.context = context;
    }
    if (featureLists != null) {
      $result.featureLists = featureLists;
    }
    return $result;
  }
  SequenceExample._() : super();
  factory SequenceExample.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SequenceExample.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SequenceExample',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow'),
      createEmptyInstance: create)
    ..aOM<$0.Features>(1, _omitFieldNames ? '' : 'context',
        subBuilder: $0.Features.create)
    ..aOM<$0.FeatureLists>(2, _omitFieldNames ? '' : 'featureLists',
        subBuilder: $0.FeatureLists.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SequenceExample clone() => SequenceExample()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SequenceExample copyWith(void Function(SequenceExample) updates) =>
      super.copyWith((message) => updates(message as SequenceExample))
          as SequenceExample;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SequenceExample create() => SequenceExample._();
  SequenceExample createEmptyInstance() => create();
  static $pb.PbList<SequenceExample> createRepeated() =>
      $pb.PbList<SequenceExample>();
  @$core.pragma('dart2js:noInline')
  static SequenceExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SequenceExample>(create);
  static SequenceExample? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Features get context => $_getN(0);
  @$pb.TagNumber(1)
  set context($0.Features v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContext() => $_has(0);
  @$pb.TagNumber(1)
  void clearContext() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Features ensureContext() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.FeatureLists get featureLists => $_getN(1);
  @$pb.TagNumber(2)
  set featureLists($0.FeatureLists v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFeatureLists() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeatureLists() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.FeatureLists ensureFeatureLists() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
