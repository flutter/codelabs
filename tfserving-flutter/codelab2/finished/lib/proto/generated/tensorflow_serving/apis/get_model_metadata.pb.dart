//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/get_model_metadata.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/any.pb.dart' as $2;
import '../../tensorflow/core/protobuf/meta_graph.pb.dart' as $0;
import 'model.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Message returned for "signature_def" field.
class SignatureDefMap extends $pb.GeneratedMessage {
  factory SignatureDefMap({
    $pb.PbMap<$core.String, $0.SignatureDef>? signatureDef,
  }) {
    final $result = create();
    if (signatureDef != null) {
      $result.signatureDef.addAll(signatureDef);
    }
    return $result;
  }
  SignatureDefMap._() : super();
  factory SignatureDefMap.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignatureDefMap.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignatureDefMap',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..m<$core.String, $0.SignatureDef>(1, _omitFieldNames ? '' : 'signatureDef',
        entryClassName: 'SignatureDefMap.SignatureDefEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.SignatureDef.create,
        valueDefaultOrMaker: $0.SignatureDef.getDefault,
        packageName: const $pb.PackageName('tensorflow.serving'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SignatureDefMap clone() => SignatureDefMap()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SignatureDefMap copyWith(void Function(SignatureDefMap) updates) =>
      super.copyWith((message) => updates(message as SignatureDefMap))
          as SignatureDefMap;

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
  $pb.PbMap<$core.String, $0.SignatureDef> get signatureDef => $_getMap(0);
}

class GetModelMetadataRequest extends $pb.GeneratedMessage {
  factory GetModelMetadataRequest({
    $1.ModelSpec? modelSpec,
    $core.Iterable<$core.String>? metadataField,
  }) {
    final $result = create();
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    if (metadataField != null) {
      $result.metadataField.addAll(metadataField);
    }
    return $result;
  }
  GetModelMetadataRequest._() : super();
  factory GetModelMetadataRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetModelMetadataRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetModelMetadataRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<$1.ModelSpec>(1, _omitFieldNames ? '' : 'modelSpec',
        subBuilder: $1.ModelSpec.create)
    ..pPS(2, _omitFieldNames ? '' : 'metadataField')
    ..hasRequiredFields = false;

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
          as GetModelMetadataRequest;

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

  /// Model Specification indicating which model we are querying for metadata.
  /// If version is not specified, will use the latest (numerical) version.
  @$pb.TagNumber(1)
  $1.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($1.ModelSpec v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.ModelSpec ensureModelSpec() => $_ensure(0);

  /// Metadata fields to get. Currently supported: "signature_def".
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get metadataField => $_getList(1);
}

class GetModelMetadataResponse extends $pb.GeneratedMessage {
  factory GetModelMetadataResponse({
    $1.ModelSpec? modelSpec,
    $pb.PbMap<$core.String, $2.Any>? metadata,
  }) {
    final $result = create();
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  GetModelMetadataResponse._() : super();
  factory GetModelMetadataResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetModelMetadataResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetModelMetadataResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<$1.ModelSpec>(1, _omitFieldNames ? '' : 'modelSpec',
        subBuilder: $1.ModelSpec.create)
    ..m<$core.String, $2.Any>(2, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'GetModelMetadataResponse.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $2.Any.create,
        valueDefaultOrMaker: $2.Any.getDefault,
        packageName: const $pb.PackageName('tensorflow.serving'))
    ..hasRequiredFields = false;

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
          as GetModelMetadataResponse;

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

  /// Model Specification indicating which model this metadata belongs to.
  @$pb.TagNumber(1)
  $1.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($1.ModelSpec v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.ModelSpec ensureModelSpec() => $_ensure(0);

  /// Map of metadata field name to metadata field. The options for metadata
  /// field name are listed in GetModelMetadataRequest. Currently supported:
  /// "signature_def".
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $2.Any> get metadata => $_getMap(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
