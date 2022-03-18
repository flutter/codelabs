///
//  Generated code. Do not modify.
//  source: tensorflow_serving/apis/prediction_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'classification.pb.dart' as $0;
import 'regression.pb.dart' as $1;
import 'predict.pb.dart' as $2;
import 'inference.pb.dart' as $3;
import 'get_model_metadata.pb.dart' as $4;
export 'prediction_service.pb.dart';

class PredictionServiceClient extends $grpc.Client {
  static final _$classify =
      $grpc.ClientMethod<$0.ClassificationRequest, $0.ClassificationResponse>(
          '/tensorflow.serving.PredictionService/Classify',
          ($0.ClassificationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ClassificationResponse.fromBuffer(value));
  static final _$regress =
      $grpc.ClientMethod<$1.RegressionRequest, $1.RegressionResponse>(
          '/tensorflow.serving.PredictionService/Regress',
          ($1.RegressionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegressionResponse.fromBuffer(value));
  static final _$predict =
      $grpc.ClientMethod<$2.PredictRequest, $2.PredictResponse>(
          '/tensorflow.serving.PredictionService/Predict',
          ($2.PredictRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.PredictResponse.fromBuffer(value));
  static final _$multiInference =
      $grpc.ClientMethod<$3.MultiInferenceRequest, $3.MultiInferenceResponse>(
          '/tensorflow.serving.PredictionService/MultiInference',
          ($3.MultiInferenceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.MultiInferenceResponse.fromBuffer(value));
  static final _$getModelMetadata = $grpc.ClientMethod<
          $4.GetModelMetadataRequest, $4.GetModelMetadataResponse>(
      '/tensorflow.serving.PredictionService/GetModelMetadata',
      ($4.GetModelMetadataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.GetModelMetadataResponse.fromBuffer(value));

  PredictionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ClassificationResponse> classify(
      $0.ClassificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$classify, request, options: options);
  }

  $grpc.ResponseFuture<$1.RegressionResponse> regress(
      $1.RegressionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$regress, request, options: options);
  }

  $grpc.ResponseFuture<$2.PredictResponse> predict($2.PredictRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$predict, request, options: options);
  }

  $grpc.ResponseFuture<$3.MultiInferenceResponse> multiInference(
      $3.MultiInferenceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$multiInference, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetModelMetadataResponse> getModelMetadata(
      $4.GetModelMetadataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getModelMetadata, request, options: options);
  }
}

abstract class PredictionServiceBase extends $grpc.Service {
  $core.String get $name => 'tensorflow.serving.PredictionService';

  PredictionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ClassificationRequest,
            $0.ClassificationResponse>(
        'Classify',
        classify_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClassificationRequest.fromBuffer(value),
        ($0.ClassificationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegressionRequest, $1.RegressionResponse>(
        'Regress',
        regress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegressionRequest.fromBuffer(value),
        ($1.RegressionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PredictRequest, $2.PredictResponse>(
        'Predict',
        predict_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PredictRequest.fromBuffer(value),
        ($2.PredictResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.MultiInferenceRequest,
            $3.MultiInferenceResponse>(
        'MultiInference',
        multiInference_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.MultiInferenceRequest.fromBuffer(value),
        ($3.MultiInferenceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetModelMetadataRequest,
            $4.GetModelMetadataResponse>(
        'GetModelMetadata',
        getModelMetadata_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetModelMetadataRequest.fromBuffer(value),
        ($4.GetModelMetadataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ClassificationResponse> classify_Pre($grpc.ServiceCall call,
      $async.Future<$0.ClassificationRequest> request) async {
    return classify(call, await request);
  }

  $async.Future<$1.RegressionResponse> regress_Pre($grpc.ServiceCall call,
      $async.Future<$1.RegressionRequest> request) async {
    return regress(call, await request);
  }

  $async.Future<$2.PredictResponse> predict_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PredictRequest> request) async {
    return predict(call, await request);
  }

  $async.Future<$3.MultiInferenceResponse> multiInference_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.MultiInferenceRequest> request) async {
    return multiInference(call, await request);
  }

  $async.Future<$4.GetModelMetadataResponse> getModelMetadata_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetModelMetadataRequest> request) async {
    return getModelMetadata(call, await request);
  }

  $async.Future<$0.ClassificationResponse> classify(
      $grpc.ServiceCall call, $0.ClassificationRequest request);
  $async.Future<$1.RegressionResponse> regress(
      $grpc.ServiceCall call, $1.RegressionRequest request);
  $async.Future<$2.PredictResponse> predict(
      $grpc.ServiceCall call, $2.PredictRequest request);
  $async.Future<$3.MultiInferenceResponse> multiInference(
      $grpc.ServiceCall call, $3.MultiInferenceRequest request);
  $async.Future<$4.GetModelMetadataResponse> getModelMetadata(
      $grpc.ServiceCall call, $4.GetModelMetadataRequest request);
}
