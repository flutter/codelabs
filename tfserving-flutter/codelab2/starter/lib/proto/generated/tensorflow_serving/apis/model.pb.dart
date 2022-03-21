///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/wrappers.pb.dart' as $0;

enum ModelSpec_VersionChoice { version, versionLabel, notSet }

class ModelSpec extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ModelSpec_VersionChoice>
      _ModelSpec_VersionChoiceByTag = {
    2: ModelSpec_VersionChoice.version,
    4: ModelSpec_VersionChoice.versionLabel,
    0: ModelSpec_VersionChoice.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ModelSpec',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..oo(0, [2, 4])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOM<$0.Int64Value>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        subBuilder: $0.Int64Value.create)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signatureName')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'versionLabel')
    ..hasRequiredFields = false;

  ModelSpec._() : super();
  factory ModelSpec({
    $core.String? name,
    $0.Int64Value? version,
    $core.String? signatureName,
    $core.String? versionLabel,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (version != null) {
      _result.version = version;
    }
    if (signatureName != null) {
      _result.signatureName = signatureName;
    }
    if (versionLabel != null) {
      _result.versionLabel = versionLabel;
    }
    return _result;
  }
  factory ModelSpec.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ModelSpec.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ModelSpec clone() => ModelSpec()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ModelSpec copyWith(void Function(ModelSpec) updates) =>
      super.copyWith((message) => updates(message as ModelSpec))
          as ModelSpec; // ignore: deprecated_member_use
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
  void clearVersionChoice() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $0.Int64Value get version => $_getN(1);
  @$pb.TagNumber(2)
  set version($0.Int64Value v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
  @$pb.TagNumber(2)
  $0.Int64Value ensureVersion() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get signatureName => $_getSZ(2);
  @$pb.TagNumber(3)
  set signatureName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSignatureName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignatureName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get versionLabel => $_getSZ(3);
  @$pb.TagNumber(4)
  set versionLabel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVersionLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersionLabel() => clearField(4);
}
