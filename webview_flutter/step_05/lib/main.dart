import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(home: WebViewExample()));

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://flutter.dev',
      onPageStarted: (String url) {
        print('Page started loading: $url');
      },
      onProgress: (int progress) {
        print("WebView is loading (progress : $progress%)");
      },
      onPageFinished: (String url) {
        print('Page finished loading: $url');
      },
    );
  }
}
