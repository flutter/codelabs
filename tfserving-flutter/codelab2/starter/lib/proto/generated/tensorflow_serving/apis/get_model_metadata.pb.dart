///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/get_model_metadata.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../tensorflow/core/protobuf/meta_graph.pb.dart' as $0;
import 'model.pb.dart' as $1;
import '../../google/protobuf/any.pb.dart' as $2;

class SignatureDefMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SignatureDefMap',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..m<$core.String, $0.SignatureDef>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'signatureDef',
        entryClassName: 'SignatureDefMap.SignatureDefEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.SignatureDef.create,
        packageName: const $pb.PackageName('tensorflow.serving'))
    ..hasRequiredFields = false;

  SignatureDefMap._() : super();
  factory SignatureDefMap({
    $core.Map<$core.String, $0.SignatureDef>? signatureDef,
  }) {
    final _result = create();
    if (signatureDef != null) {
      _result.signatureDef.addAll(signatureDef);
    }
    return _result;
  }
  factory SignatureDefMap.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignatureDefMap.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SignatureDefMap clone() => SignatureDefMap()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SignatureDefMap copyWith(void Function(SignatureDefMap) updates) =>
      super.copyWith((message) => updates(message as SignatureDefMap))
          as SignatureDefMap; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDefMap create() => SignatureDefMap._();
  SignatureDefMap createEmptyInstance() => create();
  static $pb.PbList<SignatureDefMap> createRepeated() =>
      $pb.PbList<SignatureDefMap>();
  @$core.pragma('dart2js:noInline')
  static SignatureDefMap getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SignatureDefMap>(create);
  static SignatureDefMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $0.SignatureDef> get signatureDef => $_getMap(0);
}

class GetModelMetadataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetModelMetadataRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<$1.ModelSpec>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $1.ModelSpec.create)
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadataField')
    ..hasRequiredFields = false;

  GetModelMetadataRequest._() : super();
  factory GetModelMetadataRequest({
    $1.ModelSpec? modelSpec,
    $core.Iterable<$core.String>? metadataField,
  }) {
    final _result = create();
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    if (metadataField != null) {
      _result.metadataField.addAll(metadataField);
    }
    return _result;
  }
  factory GetModelMetadataRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetModelMetadataRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetModelMetadataRequest clone() =>
      GetModelMetadataRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetModelMetadataRequest copyWith(
          void Function(GetModelMetadataRequest) updates) =>
      super.copyWith((message) => updates(message as GetModelMetadataRequest))
          as GetModelMetadataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetModelMetadataRequest create() => GetModelMetadataRequest._();
  GetModelMetadataRequest createEmptyInstance() => create();
  static $pb.PbList<GetModelMetadataRequest> createRepeated() =>
      $pb.PbList<GetModelMetadataRequest>();
  @$core.pragma('dart2js:noInline')
  static GetModelMetadataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetModelMetadataRequest>(create);
  static GetModelMetadataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($1.ModelSpec v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => clearField(1);
  @$pb.TagNumber(1)
  $1.ModelSpec ensureModelSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get metadataField => $_getList(1);
}

class GetModelMetadataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetModelMetadataResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<$1.ModelSpec>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $1.ModelSpec.create)
    ..m<$core.String, $2.Any>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'metadata',
        entryClassName: 'GetModelMetadataResponse.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $2.Any.create,
        packageName: const $pb.PackageName('tensorflow.serving'))
    ..hasRequiredFields = false;

  GetModelMetadataResponse._() : super();
  factory GetModelMetadataResponse({
    $1.ModelSpec? modelSpec,
    $core.Map<$core.String, $2.Any>? metadata,
  }) {
    final _result = create();
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory GetModelMetadataResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetModelMetadataResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetModelMetadataResponse clone() =>
      GetModelMetadataResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetModelMetadataResponse copyWith(
          void Function(GetModelMetadataResponse) updates) =>
      super.copyWith((message) => updates(message as GetModelMetadataResponse))
          as GetModelMetadataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetModelMetadataResponse create() => GetModelMetadataResponse._();
  GetModelMetadataResponse createEmptyInstance() => create();
  static $pb.PbList<GetModelMetadataResponse> createRepeated() =>
      $pb.PbList<GetModelMetadataResponse>();
  @$core.pragma('dart2js:noInline')
  static GetModelMetadataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetModelMetadataResponse>(create);
  static GetModelMetadataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($1.ModelSpec v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => clearField(1);
  @$pb.TagNumber(1)
  $1.ModelSpec ensureModelSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $2.Any> get metadata => $_getMap(1);
}
