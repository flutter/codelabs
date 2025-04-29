//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/predict.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../tensorflow/core/framework/tensor.pb.dart' as $1;
import 'model.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// PredictRequest specifies which TensorFlow model to run, as well as
/// how inputs are mapped to tensors and how outputs are filtered before
/// returning to user.
class PredictRequest extends $pb.GeneratedMessage {
  factory PredictRequest({
    $0.ModelSpec? modelSpec,
    $pb.PbMap<$core.String, $1.TensorProto>? inputs,
    $core.Iterable<$core.String>? outputFilter,
  }) {
    final $result = create();
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    if (inputs != null) {
      $result.inputs.addAll(inputs);
    }
    if (outputFilter != null) {
      $result.outputFilter.addAll(outputFilter);
    }
    return $result;
  }
  PredictRequest._() : super();
  factory PredictRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..aOM<$0.ModelSpec>(1, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..m<$core.String, $1.TensorProto>(2, _omitFieldNames ? '' : 'inputs', entryClassName: 'PredictRequest.InputsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.TensorProto.create, valueDefaultOrMaker: $1.TensorProto.getDefault, packageName: const $pb.PackageName('tensorflow.serving'))
    ..pPS(3, _omitFieldNames ? '' : 'outputFilter')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictRequest clone() => PredictRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictRequest copyWith(void Function(PredictRequest) updates) => super.copyWith((message) => updates(message as PredictRequest)) as PredictRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictRequest create() => PredictRequest._();
  PredictRequest createEmptyInstance() => create();
  static $pb.PbList<PredictRequest> createRepeated() => $pb.PbList<PredictRequest>();
  @$core.pragma('dart2js:noInline')
  static PredictRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictRequest>(create);
  static PredictRequest? _defaultInstance;

  /// Model Specification. If version is not specified, will use the latest
  /// (numerical) version.
  @$pb.TagNumber(1)
  $0.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($0.ModelSpec v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ModelSpec ensureModelSpec() => $_ensure(0);

  /// Input tensors.
  /// Names of input tensor are alias names. The mapping from aliases to real
  /// input tensor names is stored in the SavedModel export as a prediction
  /// SignatureDef under the 'inputs' field.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $1.TensorProto> get inputs => $_getMap(1);

  /// Output filter.
  /// Names specified are alias names. The mapping from aliases to real output
  /// tensor names is stored in the SavedModel export as a prediction
  /// SignatureDef under the 'outputs' field.
  /// Only tensors specified here will be run/fetched and returned, with the
  /// exception that when none is specified, all tensors specified in the
  /// named signature will be run/fetched and returned.
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get outputFilter => $_getList(2);
}

/// Response for PredictRequest on successful run.
class PredictResponse extends $pb.GeneratedMessage {
  factory PredictResponse({
    $pb.PbMap<$core.String, $1.TensorProto>? outputs,
    $0.ModelSpec? modelSpec,
  }) {
    final $result = create();
    if (outputs != null) {
      $result.outputs.addAll(outputs);
    }
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    return $result;
  }
  PredictResponse._() : super();
  factory PredictResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PredictResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PredictResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..m<$core.String, $1.TensorProto>(1, _omitFieldNames ? '' : 'outputs', entryClassName: 'PredictResponse.OutputsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.TensorProto.create, valueDefaultOrMaker: $1.TensorProto.getDefault, packageName: const $pb.PackageName('tensorflow.serving'))
    ..aOM<$0.ModelSpec>(2, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PredictResponse clone() => PredictResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PredictResponse copyWith(void Function(PredictResponse) updates) => super.copyWith((message) => updates(message as PredictResponse)) as PredictResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredictResponse create() => PredictResponse._();
  PredictResponse createEmptyInstance() => create();
  static $pb.PbList<PredictResponse> createRepeated() => $pb.PbList<PredictResponse>();
  @$core.pragma('dart2js:noInline')
  static PredictResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PredictResponse>(create);
  static PredictResponse? _defaultInstance;

  /// Output tensors.
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $1.TensorProto> get outputs => $_getMap(0);

  /// Effective Model Specification used to process PredictRequest.
  @$pb.TagNumber(2)
  $0.ModelSpec get modelSpec => $_getN(1);
  @$pb.TagNumber(2)
  set modelSpec($0.ModelSpec v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasModelSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelSpec() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ModelSpec ensureModelSpec() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
