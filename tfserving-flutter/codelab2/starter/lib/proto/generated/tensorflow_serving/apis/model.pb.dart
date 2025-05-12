//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/model.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/wrappers.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum ModelSpec_VersionChoice { version, versionLabel, notSet }

/// Metadata for an inference request such as the model name and version.
class ModelSpec extends $pb.GeneratedMessage {
  factory ModelSpec({
    $core.String? name,
    $0.Int64Value? version,
    $core.String? signatureName,
    $core.String? versionLabel,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    if (signatureName != null) {
      $result.signatureName = signatureName;
    }
    if (versionLabel != null) {
      $result.versionLabel = versionLabel;
    }
    return $result;
  }
  ModelSpec._() : super();
  factory ModelSpec.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModelSpec.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ModelSpec_VersionChoice>
      _ModelSpec_VersionChoiceByTag = {
    2: ModelSpec_VersionChoice.version,
    4: ModelSpec_VersionChoice.versionLabel,
    0: ModelSpec_VersionChoice.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModelSpec',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..oo(0, [2, 4])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Int64Value>(2, _omitFieldNames ? '' : 'version',
        subBuilder: $0.Int64Value.create)
    ..aOS(3, _omitFieldNames ? '' : 'signatureName')
    ..aOS(4, _omitFieldNames ? '' : 'versionLabel')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModelSpec clone() => ModelSpec()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModelSpec copyWith(void Function(ModelSpec) updates) =>
      super.copyWith((message) => updates(message as ModelSpec)) as ModelSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelSpec create() => ModelSpec._();
  ModelSpec createEmptyInstance() => create();
  static $pb.PbList<ModelSpec> createRepeated() => $pb.PbList<ModelSpec>();
  @$core.pragma('dart2js:noInline')
  static ModelSpec getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelSpec>(create);
  static ModelSpec? _defaultInstance;

  ModelSpec_VersionChoice whichVersionChoice() =>
      _ModelSpec_VersionChoiceByTag[$_whichOneof(0)]!;
  void clearVersionChoice() => $_clearField($_whichOneof(0));

  /// Required servable name.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Use this specific version number.
  @$pb.TagNumber(2)
  $0.Int64Value get version => $_getN(1);
  @$pb.TagNumber(2)
  set version($0.Int64Value v) {
    $_setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Int64Value ensureVersion() => $_ensure(1);

  /// A named signature to evaluate. If unspecified, the default signature will
  /// be used.
  @$pb.TagNumber(3)
  $core.String get signatureName => $_getSZ(2);
  @$pb.TagNumber(3)
  set signatureName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSignatureName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignatureName() => $_clearField(3);

  /// Use the version associated with the given label.
  @$pb.TagNumber(4)
  $core.String get versionLabel => $_getSZ(3);
  @$pb.TagNumber(4)
  set versionLabel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVersionLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersionLabel() => $_clearField(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
