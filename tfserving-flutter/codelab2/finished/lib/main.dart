import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'proto/generated/tensorflow/core/framework/tensor.pb.dart';
import 'proto/generated/tensorflow/core/framework/tensor_shape.pb.dart';
import 'proto/generated/tensorflow/core/framework/types.pbenum.dart';
import 'proto/generated/tensorflow_serving/apis/model.pb.dart';
import 'proto/generated/tensorflow_serving/apis/predict.pb.dart';
import 'proto/generated/tensorflow_serving/apis/prediction_service.pbgrpc.dart';

enum connectionModeType { GRPC, REST }

const kServer = '10.0.2.2';
const kGRPCPort = 8500;
const kRESTPort = 8501;
const kModelName = 'spam-detection';
const kSignatureName = 'serving_default';

const kClassificationThreshold = 0.8;
const kVocabFile = 'assets/vocab.txt';
const kMaxSentenceLength = 20;

const String kInitialPrompt =
    'Type some text and tap the button. The spam detection model will determine if the text is spam or not.';

void main() => runApp(const TFServingDemo());

class TFServingDemo extends StatefulWidget {
  const TFServingDemo({Key? key}) : super(key: key);

  @override
  _TFServingDemoState createState() => _TFServingDemoState();
}

class _TFServingDemoState extends State<TFServingDemo> {
  late Future<String> _futurePrediction;
  final Map<String, int> _vocabMap = {};
  final TextEditingController _inputSentenceController =
      TextEditingController();
  late List<int> _tokenIndices;
  bool? usegRPC = true;

  connectionModeType? _connectionMode = connectionModeType.GRPC;
  late PredictionServiceClient stub;

  @override
  void initState() {
    super.initState();
    _futurePrediction = Future<String>.value(kInitialPrompt);
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
                        leading: Radio<connectionModeType>(
                          value: connectionModeType.GRPC,
                          groupValue: _connectionMode,
                          onChanged: (connectionModeType? value) {
                            setState(() {
                              _connectionMode = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('REST'),
                        leading: Radio<connectionModeType>(
                          value: connectionModeType.REST,
                          groupValue: _connectionMode,
                          onChanged: (connectionModeType? value) {
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
                                    Future<String>.value(kInitialPrompt);
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
    if (_vocabMap.isEmpty) {
      final vocabFileString = await rootBundle.loadString(kVocabFile);
      final lines = vocabFileString.split('\n');
      for (final l in lines) {
        if (l != "") {
          var wordAndIndex = l.split(' ');
          (_vocabMap)[wordAndIndex[0]] = int.parse(wordAndIndex[1]);
        }
      }
    }

    // Tokenize the input sentence.
    final inputWords = _inputSentenceController.text
        .toLowerCase()
        .replaceAll(RegExp('[^a-z ]'), '')
        .split(' ');
    // Initialize with padding token
    _tokenIndices = List.filled(kMaxSentenceLength, 0);
    var i = 0;
    for (final w in inputWords) {
      if ((_vocabMap).containsKey(w)) {
        _tokenIndices[i] = (_vocabMap)[w]!;
        i++;
      }

      // Truncate the string if longer than maxSentenceLength.
      if (i >= kMaxSentenceLength - 1) {
        break;
      }
    }

    if (_connectionMode == connectionModeType.REST) {
      final response = await http.post(
        Uri.parse('http://' +
            kServer +
            ':' +
            kRESTPort.toString() +
            '/v1/models/' +
            kModelName +
            ':predict'),
        body: jsonEncode(<String, List<List<int>>>{
          'instances': [_tokenIndices],
        }),
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> result = jsonDecode(response.body);
        if (result['predictions']![0][1] >= kClassificationThreshold) {
          return 'This sentence is spam. Spam score is ' +
              result['predictions']![0][1].toString();
        }
        return 'This sentence is not spam. Spam score is ' +
            result['predictions']![0][1].toString();
      } else {
        throw Exception('Error response');
      }
    } else {
      final channel = ClientChannel(kServer,
          port: kGRPCPort,
          options:
              const ChannelOptions(credentials: ChannelCredentials.insecure()));
      stub = PredictionServiceClient(channel,
          options: CallOptions(timeout: const Duration(seconds: 10)));

      ModelSpec modelSpec = ModelSpec(
        name: 'spam-detection',
        signatureName: 'serving_default',
      );

      TensorShapeProto_Dim batchDim = TensorShapeProto_Dim(size: Int64(1));
      TensorShapeProto_Dim inputDim =
          TensorShapeProto_Dim(size: Int64(kMaxSentenceLength));
      TensorShapeProto inputTensorShape =
          TensorShapeProto(dim: [batchDim, inputDim]);
      TensorProto inputTensor = TensorProto(
          dtype: DataType.DT_INT32,
          tensorShape: inputTensorShape,
          intVal: _tokenIndices);

      // If you train your own model, make sure to update the input and output
      // tensor names.
      const inputTensorName = 'input_3';
      const outputTensorName = 'dense_5';
      PredictRequest request = PredictRequest(
          modelSpec: modelSpec, inputs: {inputTensorName: inputTensor});

      PredictResponse response = await stub.predict(request);

      if (response.outputs.containsKey(outputTensorName)) {
        if (response.outputs[outputTensorName]!.floatVal[1] >
            kClassificationThreshold) {
          return 'This sentence is spam. Spam score is ' +
              response.outputs[outputTensorName]!.floatVal[1].toString();
        } else {
          return 'This sentence is not spam. Spam score is ' +
              response.outputs[outputTensorName]!.floatVal[1].toString();
        }
      } else {
        throw Exception('Error response');
      }
    }
  }
}
