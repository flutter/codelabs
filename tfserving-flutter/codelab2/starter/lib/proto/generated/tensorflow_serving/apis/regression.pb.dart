//
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/regression.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'input.pb.dart' as $1;
import 'model.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Regression result for a single item (tensorflow.Example).
class Regression extends $pb.GeneratedMessage {
  factory Regression({
    $core.double? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Regression._() : super();
  factory Regression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Regression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Regression', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Regression clone() => Regression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Regression copyWith(void Function(Regression) updates) => super.copyWith((message) => updates(message as Regression)) as Regression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Regression create() => Regression._();
  Regression createEmptyInstance() => create();
  static $pb.PbList<Regression> createRepeated() => $pb.PbList<Regression>();
  @$core.pragma('dart2js:noInline')
  static Regression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Regression>(create);
  static Regression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

/// Contains one result per input example, in the same order as the input in
/// RegressionRequest.
class RegressionResult extends $pb.GeneratedMessage {
  factory RegressionResult({
    $core.Iterable<Regression>? regressions,
  }) {
    final $result = create();
    if (regressions != null) {
      $result.regressions.addAll(regressions);
    }
    return $result;
  }
  RegressionResult._() : super();
  factory RegressionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegressionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegressionResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..pc<Regression>(1, _omitFieldNames ? '' : 'regressions', $pb.PbFieldType.PM, subBuilder: Regression.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegressionResult clone() => RegressionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegressionResult copyWith(void Function(RegressionResult) updates) => super.copyWith((message) => updates(message as RegressionResult)) as RegressionResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegressionResult create() => RegressionResult._();
  RegressionResult createEmptyInstance() => create();
  static $pb.PbList<RegressionResult> createRepeated() => $pb.PbList<RegressionResult>();
  @$core.pragma('dart2js:noInline')
  static RegressionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegressionResult>(create);
  static RegressionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Regression> get regressions => $_getList(0);
}

class RegressionRequest extends $pb.GeneratedMessage {
  factory RegressionRequest({
    $0.ModelSpec? modelSpec,
    $1.Input? input,
  }) {
    final $result = create();
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    if (input != null) {
      $result.input = input;
    }
    return $result;
  }
  RegressionRequest._() : super();
  factory RegressionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegressionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegressionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..aOM<$0.ModelSpec>(1, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..aOM<$1.Input>(2, _omitFieldNames ? '' : 'input', subBuilder: $1.Input.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegressionRequest clone() => RegressionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegressionRequest copyWith(void Function(RegressionRequest) updates) => super.copyWith((message) => updates(message as RegressionRequest)) as RegressionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegressionRequest create() => RegressionRequest._();
  RegressionRequest createEmptyInstance() => create();
  static $pb.PbList<RegressionRequest> createRepeated() => $pb.PbList<RegressionRequest>();
  @$core.pragma('dart2js:noInline')
  static RegressionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegressionRequest>(create);
  static RegressionRequest? _defaultInstance;

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

  /// Input data.
  @$pb.TagNumber(2)
  $1.Input get input => $_getN(1);
  @$pb.TagNumber(2)
  set input($1.Input v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Input ensureInput() => $_ensure(1);
}

class RegressionResponse extends $pb.GeneratedMessage {
  factory RegressionResponse({
    RegressionResult? result,
    $0.ModelSpec? modelSpec,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (modelSpec != null) {
      $result.modelSpec = modelSpec;
    }
    return $result;
  }
  RegressionResponse._() : super();
  factory RegressionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegressionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegressionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'tensorflow.serving'), createEmptyInstance: create)
    ..aOM<RegressionResult>(1, _omitFieldNames ? '' : 'result', subBuilder: RegressionResult.create)
    ..aOM<$0.ModelSpec>(2, _omitFieldNames ? '' : 'modelSpec', subBuilder: $0.ModelSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegressionResponse clone() => RegressionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegressionResponse copyWith(void Function(RegressionResponse) updates) => super.copyWith((message) => updates(message as RegressionResponse)) as RegressionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegressionResponse create() => RegressionResponse._();
  RegressionResponse createEmptyInstance() => create();
  static $pb.PbList<RegressionResponse> createRepeated() => $pb.PbList<RegressionResponse>();
  @$core.pragma('dart2js:noInline')
  static RegressionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegressionResponse>(create);
  static RegressionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RegressionResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(RegressionResult v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => $_clearField(1);
  @$pb.TagNumber(1)
  RegressionResult ensureResult() => $_ensure(0);

  /// Effective Model Specification used for regression.
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
