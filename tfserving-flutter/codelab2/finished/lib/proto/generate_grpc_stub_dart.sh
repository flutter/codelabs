#!/bin/bash
# This script generates the client stub for TF Serving

touch generated
rm -rf generated
mkdir generated

protoc -I./ ./tensorflow_serving/apis/input.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow_serving/apis/regression.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow_serving/apis/predict.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow_serving/apis/prediction_service.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow_serving/apis/get_model_metadata.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow_serving/apis/inference.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow_serving/apis/model.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow_serving/apis/classification.proto --dart_out=grpc:./generated

protoc -I./ ./tensorflow/core/framework/graph.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/tensor_shape.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/function.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/variable.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/types.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/full_type.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/versions.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/attr_value.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/op_def.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/node_def.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/tensor.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/framework/resource_handle.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/example/feature.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/example/example.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/protobuf/struct.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/protobuf/meta_graph.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/protobuf/saver.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/protobuf/trackable_object_graph.proto --dart_out=grpc:./generated
protoc -I./ ./tensorflow/core/protobuf/saved_object_graph.proto --dart_out=grpc:./generated

protoc -I./ ./google/protobuf/any.proto --dart_out=grpc:./generated
protoc -I./ ./google/protobuf/wrappers.proto --dart_out=grpc:./generated
