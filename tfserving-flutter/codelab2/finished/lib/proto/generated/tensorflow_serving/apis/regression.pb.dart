///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/regression.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $0;
import 'input.pb.dart' as $1;

class Regression extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Regression',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..a<$core.double>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  Regression._() : super();
  factory Regression({
    $core.double? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Regression.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Regression.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Regression clone() => Regression()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Regression copyWith(void Function(Regression) updates) =>
      super.copyWith((message) => updates(message as Regression))
          as Regression; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Regression create() => Regression._();
  Regression createEmptyInstance() => create();
  static $pb.PbList<Regression> createRepeated() => $pb.PbList<Regression>();
  @$core.pragma('dart2js:noInline')
  static Regression getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Regression>(create);
  static Regression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) {
    $_setFloat(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class RegressionResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegressionResult',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..pc<Regression>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'regressions',
        $pb.PbFieldType.PM,
        subBuilder: Regression.create)
    ..hasRequiredFields = false;

  RegressionResult._() : super();
  factory RegressionResult({
    $core.Iterable<Regression>? regressions,
  }) {
    final _result = create();
    if (regressions != null) {
      _result.regressions.addAll(regressions);
    }
    return _result;
  }
  factory RegressionResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegressionResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegressionResult clone() => RegressionResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegressionResult copyWith(void Function(RegressionResult) updates) =>
      super.copyWith((message) => updates(message as RegressionResult))
          as RegressionResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegressionResult create() => RegressionResult._();
  RegressionResult createEmptyInstance() => create();
  static $pb.PbList<RegressionResult> createRepeated() =>
      $pb.PbList<RegressionResult>();
  @$core.pragma('dart2js:noInline')
  static RegressionResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegressionResult>(create);
  static RegressionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Regression> get regressions => $_getList(0);
}

class RegressionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegressionRequest',
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
    ..aOM<$1.Input>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'input',
        subBuilder: $1.Input.create)
    ..hasRequiredFields = false;

  RegressionRequest._() : super();
  factory RegressionRequest({
    $0.ModelSpec? modelSpec,
    $1.Input? input,
  }) {
    final _result = create();
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    if (input != null) {
      _result.input = input;
    }
    return _result;
  }
  factory RegressionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegressionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegressionRequest clone() => RegressionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegressionRequest copyWith(void Function(RegressionRequest) updates) =>
      super.copyWith((message) => updates(message as RegressionRequest))
          as RegressionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegressionRequest create() => RegressionRequest._();
  RegressionRequest createEmptyInstance() => create();
  static $pb.PbList<RegressionRequest> createRepeated() =>
      $pb.PbList<RegressionRequest>();
  @$core.pragma('dart2js:noInline')
  static RegressionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegressionRequest>(create);
  static RegressionRequest? _defaultInstance;

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
  $1.Input get input => $_getN(1);
  @$pb.TagNumber(2)
  set input($1.Input v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => clearField(2);
  @$pb.TagNumber(2)
  $1.Input ensureInput() => $_ensure(1);
}

class RegressionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegressionResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..aOM<RegressionResult>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'result',
        subBuilder: RegressionResult.create)
    ..aOM<$0.ModelSpec>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $0.ModelSpec.create)
    ..hasRequiredFields = false;

  RegressionResponse._() : super();
  factory RegressionResponse({
    RegressionResult? result,
    $0.ModelSpec? modelSpec,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    return _result;
  }
  factory RegressionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegressionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegressionResponse clone() => RegressionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegressionResponse copyWith(void Function(RegressionResponse) updates) =>
      super.copyWith((message) => updates(message as RegressionResponse))
          as RegressionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegressionResponse create() => RegressionResponse._();
  RegressionResponse createEmptyInstance() => create();
  static $pb.PbList<RegressionResponse> createRepeated() =>
      $pb.PbList<RegressionResponse>();
  @$core.pragma('dart2js:noInline')
  static RegressionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegressionResponse>(create);
  static RegressionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RegressionResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(RegressionResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  RegressionResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.ModelSpec get modelSpec => $_getN(1);
  @$pb.TagNumber(2)
  set modelSpec($0.ModelSpec v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasModelSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelSpec() => clearField(2);
  @$pb.TagNumber(2)
  $0.ModelSpec ensureModelSpec() => $_ensure(1);
}
