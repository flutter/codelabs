//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/inference.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'classification.pb.dart' as $1;
import 'input.pb.dart' as $3;
import 'model.pb.dart' as $0;
import 'regression.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Inference request such as classification, regression, etc...
class InferenceTask extends $pb.GeneratedMessage {
  factory InferenceTask({
    $0.ModelSpec? modelSpec,
    $core.String? methodName,
  }) {
    final $result = create();
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    if (methodName != null) {
      $result.methodName = methodName;
    }
    return $result;
  }
  InferenceTask._() : super();
  factory InferenceTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InferenceTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InferenceTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..aOM<$0.ModelSpec>(1, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..aOS(2, _omitFieldNames ? '' : 'methodName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InferenceTask clone() => InferenceTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InferenceTask copyWith(void Function(InferenceTask) updates) => super.copyWith((message) => updates(message as InferenceTask)) as InferenceTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InferenceTask create() => InferenceTask._();
  InferenceTask createEmptyInstance() => create();
  static $pb.PbList<InferenceTask> createRepeated() => $pb.PbList<InferenceTask>();
  @$core.pragma('dart2js:noInline')
  static InferenceTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InferenceTask>(create);
  static InferenceTask? _defaultInstance;

  /// Model Specification. If version is not specified, will use the latest
  /// (numerical) version.
  /// All ModelSpecs in a MultiInferenceRequest must access the same model name.
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

  /// Signature's method_name. Should be one of the method names defined in
  /// third_party/tensorflow/python/saved_model/signature_constants.py.
  /// e.g. "tensorflow/serving/classify".
  @$pb.TagNumber(2)
  $core.String get methodName => $_getSZ(1);
  @$pb.TagNumber(2)
  set methodName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethodName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethodName() => $_clearField(2);
}

enum InferenceResult_Result {
  classificationResult, 
  regressionResult, 
  notSet
}

/// Inference result, matches the type of request or is an error.
class InferenceResult extends $pb.GeneratedMessage {
  factory InferenceResult({
    $0.ModelSpec? modelSpec,
    $1.ClassificationResult? classificationResult,
    $2.RegressionResult? regressionResult,
  }) {
    final $result = create();
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    if (classificationResult != null) {
      $result.classificationResult = classificationResult;
    }
    if (regressionResult != null) {
      $result.regressionResult = regressionResult;
    }
    return $result;
  }
  InferenceResult._() : super();
  factory InferenceResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InferenceResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, InferenceResult_Result> _InferenceResult_ResultByTag = {
    2 : InferenceResult_Result.classificationResult,
    3 : InferenceResult_Result.regressionResult,
    0 : InferenceResult_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InferenceResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$0.ModelSpec>(1, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..aOM<$1.ClassificationResult>(2, _omitFieldNames ? '' : 'classificationResult', subBuilder: $1.ClassificationResult.create)
    ..aOM<$2.RegressionResult>(3, _omitFieldNames ? '' : 'regressionResult', subBuilder: $2.RegressionResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InferenceResult clone() => InferenceResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InferenceResult copyWith(void Function(InferenceResult) updates) => super.copyWith((message) => updates(message as InferenceResult)) as InferenceResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InferenceResult create() => InferenceResult._();
  InferenceResult createEmptyInstance() => create();
  static $pb.PbList<InferenceResult> createRepeated() => $pb.PbList<InferenceResult>();
  @$core.pragma('dart2js:noInline')
  static InferenceResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InferenceResult>(create);
  static InferenceResult? _defaultInstance;

  InferenceResult_Result whichResult() => _InferenceResult_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

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

  @$pb.TagNumber(2)
  $1.ClassificationResult get classificationResult => $_getN(1);
  @$pb.TagNumber(2)
  set classificationResult($1.ClassificationResult v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClassificationResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearClassificationResult() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.ClassificationResult ensureClassificationResult() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.RegressionResult get regressionResult => $_getN(2);
  @$pb.TagNumber(3)
  set regressionResult($2.RegressionResult v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegressionResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegressionResult() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.RegressionResult ensureRegressionResult() => $_ensure(2);
}

/// Inference request containing one or more requests.
class MultiInferenceRequest extends $pb.GeneratedMessage {
  factory MultiInferenceRequest({
    $core.Iterable<InferenceTask>? tasks,
    $3.Input? input,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    if (input != null) {
      $result.input = input;
    }
    return $result;
  }
  MultiInferenceRequest._() : super();
  factory MultiInferenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiInferenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiInferenceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..pc<InferenceTask>(1, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: InferenceTask.create)
    ..aOM<$3.Input>(2, _omitFieldNames ? '' : 'input', subBuilder: $3.Input.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiInferenceRequest clone() => MultiInferenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiInferenceRequest copyWith(void Function(MultiInferenceRequest) updates) => super.copyWith((message) => updates(message as MultiInferenceRequest)) as MultiInferenceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiInferenceRequest create() => MultiInferenceRequest._();
  MultiInferenceRequest createEmptyInstance() => create();
  static $pb.PbList<MultiInferenceRequest> createRepeated() => $pb.PbList<MultiInferenceRequest>();
  @$core.pragma('dart2js:noInline')
  static MultiInferenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiInferenceRequest>(create);
  static MultiInferenceRequest? _defaultInstance;

  /// Inference tasks.
  @$pb.TagNumber(1)
  $pb.PbList<InferenceTask> get tasks => $_getList(0);

  /// Input data.
  @$pb.TagNumber(2)
  $3.Input get input => $_getN(1);
  @$pb.TagNumber(2)
  set input($3.Input v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Input ensureInput() => $_ensure(1);
}

/// Inference request containing one or more responses.
class MultiInferenceResponse extends $pb.GeneratedMessage {
  factory MultiInferenceResponse({
    $core.Iterable<InferenceResult>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  MultiInferenceResponse._() : super();
  factory MultiInferenceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiInferenceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiInferenceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..pc<InferenceResult>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: InferenceResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiInferenceResponse clone() => MultiInferenceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiInferenceResponse copyWith(void Function(MultiInferenceResponse) updates) => super.copyWith((message) => updates(message as MultiInferenceResponse)) as MultiInferenceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiInferenceResponse create() => MultiInferenceResponse._();
  MultiInferenceResponse createEmptyInstance() => create();
  static $pb.PbList<MultiInferenceResponse> createRepeated() => $pb.PbList<MultiInferenceResponse>();
  @$core.pragma('dart2js:noInline')
  static MultiInferenceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiInferenceResponse>(create);
  static MultiInferenceResponse? _defaultInstance;

  /// List of results; one for each InferenceTask in the request, returned in the
  /// same order as the request.
  @$pb.TagNumber(1)
  $pb.PbList<InferenceResult> get results => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
