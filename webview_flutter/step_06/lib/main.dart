import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MaterialApp(home: WebViewExample()));

class WebViewExample extends StatefulWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  final _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
        actions: [NavigationControls(_controller.future)],
      ),
      body: WebView(
        initialUrl: 'https://flutter.dev',
        onWebViewCreated: (webViewController) {
          _controller.complete(webViewController);
        },
        onPageStarted: (url) {
          print('Page started loading: $url');
        },
        onProgress: (progress) {
          print('WebView is loading (progress : $progress%)');
        },
        onPageFinished: (url) {
          print('Page finished loading: $url');
        },
      ),
    );
  }
}