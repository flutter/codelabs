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
      body: const WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
  }
}
