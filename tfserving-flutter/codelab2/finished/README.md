# Flutter sample to demonstrate sending requests to TF Serving

This Flutter sample project demos how to call TF Serving from a Flutter app, via
gRPC and REST. You can input some text and it will send the text to TF Serving
to classify the text as spam or not.

## Usage

1. Download the spam detection SavedModel from this [codelab](https://colab.sandbox.google.com/github/tensorflow/codelabs/blob/main/TFServing/TextClassificationFlutter/codelab1/SpamCommentsModelMaker.ipynb).
2. Start TF Serving with: `docker run -t --rm -p 8500:8500 -p 8501:8501 -v
   "PATH/TO/SAVEDMODEL:/models/spam-detection" -e MODEL_NAME=spam-detection
   tensorflow/serving`.
3. Go into 'lib/proto' folder and run 'generate_grpc_stub_dart.sh' to generate the gRPC
   client stub.
4. Start Android emulator and run the app.
5. If you are not using an Android emulator, make sure to replace '10.0.2.2'
   with your TF Serving host's IP address.
