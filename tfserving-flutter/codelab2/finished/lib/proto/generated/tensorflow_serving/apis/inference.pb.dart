///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/inference.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $0;
import 'classification.pb.dart' as $1;
import 'regression.pb.dart' as $2;
import 'input.pb.dart' as $3;

class InferenceTask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InferenceTask',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<$0.ModelSpec>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $0.ModelSpec.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'methodName')
    ..hasRequiredFields = false;

  InferenceTask._() : super();
  factory InferenceTask({
    $0.ModelSpec? modelSpec,
    $core.String? methodName,
  }) {
    final _result = create();
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    if (methodName != null) {
      _result.methodName = methodName;
    }
    return _result;
  }
  factory InferenceTask.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InferenceTask.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InferenceTask clone() => InferenceTask()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InferenceTask copyWith(void Function(InferenceTask) updates) =>
      super.copyWith((message) => updates(message as InferenceTask))
          as InferenceTask; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InferenceTask create() => InferenceTask._();
  InferenceTask createEmptyInstance() => create();
  static $pb.PbList<InferenceTask> createRepeated() =>
      $pb.PbList<InferenceTask>();
  @$core.pragma('dart2js:noInline')
  static InferenceTask getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InferenceTask>(create);
  static InferenceTask? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($0.ModelSpec v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => clearField(1);
  @$pb.TagNumber(1)
  $0.ModelSpec ensureModelSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get methodName => $_getSZ(1);
  @$pb.TagNumber(2)
  set methodName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMethodName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethodName() => clearField(2);
}

enum InferenceResult_Result { classificationResult, regressionResult, notSet }

class InferenceResult extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, InferenceResult_Result>
      _InferenceResult_ResultByTag = {
    2: InferenceResult_Result.classificationResult,
    3: InferenceResult_Result.regressionResult,
    0: InferenceResult_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InferenceResult',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$0.ModelSpec>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $0.ModelSpec.create)
    ..aOM<$1.ClassificationResult>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'classificationResult',
        subBuilder: $1.ClassificationResult.create)
    ..aOM<$2.RegressionResult>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'regressionResult',
        subBuilder: $2.RegressionResult.create)
    ..hasRequiredFields = false;

  InferenceResult._() : super();
  factory InferenceResult({
    $0.ModelSpec? modelSpec,
    $1.ClassificationResult? classificationResult,
    $2.RegressionResult? regressionResult,
  }) {
    final _result = create();
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    if (classificationResult != null) {
      _result.classificationResult = classificationResult;
    }
    if (regressionResult != null) {
      _result.regressionResult = regressionResult;
    }
    return _result;
  }
  factory InferenceResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InferenceResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InferenceResult clone() => InferenceResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InferenceResult copyWith(void Function(InferenceResult) updates) =>
      super.copyWith((message) => updates(message as InferenceResult))
          as InferenceResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InferenceResult create() => InferenceResult._();
  InferenceResult createEmptyInstance() => create();
  static $pb.PbList<InferenceResult> createRepeated() =>
      $pb.PbList<InferenceResult>();
  @$core.pragma('dart2js:noInline')
  static InferenceResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InferenceResult>(create);
  static InferenceResult? _defaultInstance;

  InferenceResult_Result whichResult() =>
      _InferenceResult_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.ModelSpec get modelSpec => $_getN(0);
  @$pb.TagNumber(1)
  set modelSpec($0.ModelSpec v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasModelSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelSpec() => clearField(1);
  @$pb.TagNumber(1)
  $0.ModelSpec ensureModelSpec() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.ClassificationResult get classificationResult => $_getN(1);
  @$pb.TagNumber(2)
  set classificationResult($1.ClassificationResult v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasClassificationResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearClassificationResult() => clearField(2);
  @$pb.TagNumber(2)
  $1.ClassificationResult ensureClassificationResult() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.RegressionResult get regressionResult => $_getN(2);
  @$pb.TagNumber(3)
  set regressionResult($2.RegressionResult v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRegressionResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegressionResult() => clearField(3);
  @$pb.TagNumber(3)
  $2.RegressionResult ensureRegressionResult() => $_ensure(2);
}

class MultiInferenceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MultiInferenceRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<InferenceTask>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tasks',
        $pb.PbFieldType.PM,
        subBuilder: InferenceTask.create)
    ..aOM<$3.Input>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'input',
        subBuilder: $3.Input.create)
    ..hasRequiredFields = false;

  MultiInferenceRequest._() : super();
  factory MultiInferenceRequest({
    $core.Iterable<InferenceTask>? tasks,
    $3.Input? input,
  }) {
    final _result = create();
    if (tasks != null) {
      _result.tasks.addAll(tasks);
    }
    if (input != null) {
      _result.input = input;
    }
    return _result;
  }
  factory MultiInferenceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MultiInferenceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MultiInferenceRequest clone() =>
      MultiInferenceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MultiInferenceRequest copyWith(
          void Function(MultiInferenceRequest) updates) =>
      super.copyWith((message) => updates(message as MultiInferenceRequest))
          as MultiInferenceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultiInferenceRequest create() => MultiInferenceRequest._();
  MultiInferenceRequest createEmptyInstance() => create();
  static $pb.PbList<MultiInferenceRequest> createRepeated() =>
      $pb.PbList<MultiInferenceRequest>();
  @$core.pragma('dart2js:noInline')
  static MultiInferenceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultiInferenceRequest>(create);
  static MultiInferenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<InferenceTask> get tasks => $_getList(0);

  @$pb.TagNumber(2)
  $3.Input get input => $_getN(1);
  @$pb.TagNumber(2)
  set input($3.Input v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => clearField(2);
  @$pb.TagNumber(2)
  $3.Input ensureInput() => $_ensure(1);
}

class MultiInferenceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MultiInferenceResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<InferenceResult>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'results',
        $pb.PbFieldType.PM,
        subBuilder: InferenceResult.create)
    ..hasRequiredFields = false;

  MultiInferenceResponse._() : super();
  factory MultiInferenceResponse({
    $core.Iterable<InferenceResult>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory MultiInferenceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MultiInferenceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MultiInferenceResponse clone() =>
      MultiInferenceResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MultiInferenceResponse copyWith(
          void Function(MultiInferenceResponse) updates) =>
      super.copyWith((message) => updates(message as MultiInferenceResponse))
          as MultiInferenceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultiInferenceResponse create() => MultiInferenceResponse._();
  MultiInferenceResponse createEmptyInstance() => create();
  static $pb.PbList<MultiInferenceResponse> createRepeated() =>
      $pb.PbList<MultiInferenceResponse>();
  @$core.pragma('dart2js:noInline')
  static MultiInferenceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultiInferenceResponse>(create);
  static MultiInferenceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<InferenceResult> get results => $_getList(0);
}
