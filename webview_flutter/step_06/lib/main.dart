import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(home: WebViewExample()));

const String kNavigationExamplePage = '''
<!DOCTYPE html>
<html>
  <head><title>Navigation Delegate Example</title></head>
  <body>
    <p>
      The navigation delegate is set to block navigation to the youtube website.
    </p>
    <ul>
      <ul><a href="https://www.youtube.com/">https://www.youtube.com/</a></ul>
      <ul><a href="https://www.google.com/">https://www.google.com/</a></ul>
    </ul>
  </body>
</html>
''';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
  }

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
      navigationDelegate: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          print('blocking navigation to $request}');
          return NavigationDecision.prevent;
        }
        print('allowing navigation to $request');
        return NavigationDecision.navigate;
      },
    );
  }
}
