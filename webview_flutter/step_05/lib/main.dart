import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MaterialApp(home: WebViewExample()));

class WebViewExample extends StatefulWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://flutter.dev',
      onPageStarted: (url) {
        print('Page started loading: $url');
      },
      onProgress: (progress) {
        print('WebView is loading (progress : $progress%)');
      },
      onPageFinished: (url) {
        print('Page finished loading: $url');
      },
    );
  }
}
