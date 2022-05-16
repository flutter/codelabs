import 'dart:async';
import 'dart:convert';
import 'dart:io' show Platform;

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;

import 'proto/generated/tensorflow/core/framework/tensor.pb.dart';
import 'proto/generated/tensorflow/core/framework/tensor_shape.pb.dart';
import 'proto/generated/tensorflow/core/framework/types.pbenum.dart';
import 'proto/generated/tensorflow_serving/apis/model.pb.dart';
import 'proto/generated/tensorflow_serving/apis/predict.pb.dart';
import 'proto/generated/tensorflow_serving/apis/prediction_service.pbgrpc.dart';

enum ConnectionModeType { grpc, rest }

const grpcPort = 8500;
const restPort = 8501;
const modelName = 'spam-detection';
const signatureName = 'serving_default';

const classificationThreshold = 0.8;
const vocabFile = 'assets/vocab.txt';
const maxSentenceLength = 20;

const String initialPrompt =
    'Type some text and tap the button. The spam detection model will determine if the text is spam or not.';

void main() => runApp(const TFServingDemo());

class TFServingDemo extends StatefulWidget {
  const TFServingDemo({super.key});

  @override
  State<TFServingDemo> createState() => _TFServingDemoState();
}

class _TFServingDemoState extends State<TFServingDemo> {
  late Future<String> _futurePrediction;
  final Map<String, int> _vocabMap = {};
  final TextEditingController _inputSentenceController =
      TextEditingController();
  late List<int> _tokenIndices;
  bool? usegRPC = true;
  late String _server;

  ConnectionModeType? _connectionMode = ConnectionModeType.grpc;
  late PredictionServiceClient _stub;

  @override
  void initState() {
    super.initState();
    _futurePrediction = Future<String>.value(initialPrompt);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TF Serving Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TF Serving Flutter Demo'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: _inputSentenceController,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Enter a sentence here'),
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: const Text('gRPC'),
                        leading: Radio<ConnectionModeType>(
                          value: ConnectionModeType.grpc,
                          groupValue: _connectionMode,
                          onChanged: (value) {
                            setState(() {
                              _connectionMode = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('REST'),
                        leading: Radio<ConnectionModeType>(
                          value: ConnectionModeType.rest,
                          groupValue: _connectionMode,
                          onChanged: (value) {
                            setState(() {
                              _connectionMode = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                            onPressed: () {
                              setState(() {
                                _futurePrediction = predict();
                              });
                            },
                            child: const Text('Classify')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                            onPressed: () {
                              setState(() {
                                _futurePrediction =
                                    Future<String>.value(initialPrompt);
                                _inputSentenceController.clear();
                              });
                            },
                            child: const Text('Reset'))
                      ]),
                  FutureBuilder<String>(
                    future: _futurePrediction,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(snapshot.data!);
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Future<String> predict() async {
    if (Platform.isAndroid) {
      // For Android
      _server = '10.0.2.2';
    } else {
      // For iOS emulator, desktop and web platforms
      _server = '127.0.0.1';
    }
    // TODO: build _vocabMap if empty

    // TODO: tokenize the input sentence.

    if (_connectionMode == ConnectionModeType.rest) {
      // TODO: create and send the REST request

      // TODO: process the REST response

    } else {
      // TODO: create the gRPC request

      // TODO: send the gRPC request

      // TODO: process the gRPC response

    }
    return '';
  }
}
