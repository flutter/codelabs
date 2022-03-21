///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/predict.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pb.dart' as $0;
import '../../tensorflow/core/framework/tensor.pb.dart' as $1;

class PredictRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PredictRequest',
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
    ..m<$core.String, $1.TensorProto>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inputs',
        entryClassName: 'PredictRequest.InputsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $1.TensorProto.create,
        packageName: const $pb.PackageName('tensorflow.serving'))
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputFilter')
    ..hasRequiredFields = false;

  PredictRequest._() : super();
  factory PredictRequest({
    $0.ModelSpec? modelSpec,
    $core.Map<$core.String, $1.TensorProto>? inputs,
    $core.Iterable<$core.String>? outputFilter,
  }) {
    final _result = create();
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    if (inputs != null) {
      _result.inputs.addAll(inputs);
    }
    if (outputFilter != null) {
      _result.outputFilter.addAll(outputFilter);
    }
    return _result;
  }
  factory PredictRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PredictRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PredictRequest clone() => PredictRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PredictRequest copyWith(void Function(PredictRequest) updates) =>
      super.copyWith((message) => updates(message as PredictRequest))
          as PredictRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PredictRequest create() => PredictRequest._();
  PredictRequest createEmptyInstance() => create();
  static $pb.PbList<PredictRequest> createRepeated() =>
      $pb.PbList<PredictRequest>();
  @$core.pragma('dart2js:noInline')
  static PredictRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredictRequest>(create);
  static PredictRequest? _defaultInstance;

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
  $core.Map<$core.String, $1.TensorProto> get inputs => $_getMap(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get outputFilter => $_getList(2);
}

class PredictResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PredictResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'tensorflow.serving'),
      createEmptyInstance: create)
    ..m<$core.String, $1.TensorProto>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputs',
        entryClassName: 'PredictResponse.OutputsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $1.TensorProto.create,
        packageName: const $pb.PackageName('tensorflow.serving'))
    ..aOM<$0.ModelSpec>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modelSpec',
        subBuilder: $0.ModelSpec.create)
    ..hasRequiredFields = false;

  PredictResponse._() : super();
  factory PredictResponse({
    $core.Map<$core.String, $1.TensorProto>? outputs,
    $0.ModelSpec? modelSpec,
  }) {
    final _result = create();
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    if (modelSpec != null) {
      _result.modelSpec = modelSpec;
    }
    return _result;
  }
  factory PredictResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PredictResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PredictResponse clone() => PredictResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PredictResponse copyWith(void Function(PredictResponse) updates) =>
      super.copyWith((message) => updates(message as PredictResponse))
          as PredictResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PredictResponse create() => PredictResponse._();
  PredictResponse createEmptyInstance() => create();
  static $pb.PbList<PredictResponse> createRepeated() =>
      $pb.PbList<PredictResponse>();
  @$core.pragma('dart2js:noInline')
  static PredictResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredictResponse>(create);
  static PredictResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $1.TensorProto> get outputs => $_getMap(0);

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
