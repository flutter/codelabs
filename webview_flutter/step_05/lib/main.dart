import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MaterialApp(home: WebViewApp()));

class WebViewApp extends StatelessWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: const WebViewStack(),
    );
  }
}

class WebViewStack extends StatefulWidget {
  const WebViewStack({Key? key}) : super(key: key);

  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  var loadingPercentage = 100;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebView(
          initialUrl: 'https://flutter.dev',
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
          ),
      ],
    );
  }
}
