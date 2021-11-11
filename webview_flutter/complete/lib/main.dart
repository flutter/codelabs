import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(home: WebViewExample()));

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter WebView example'),
          // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
          actions: <Widget>[
            NavigationControls(_controller.future),
            Menu(_controller.future)
          ],
        ),
        // We're using a Builder here so we have a context that is below the Scaffold
        // to allow calling Scaffold.of(context) so we can show a snackbar, which
        // will be mentioned later in this CodeLab.
        body: Builder(builder: (context) {
          return WebView(
            initialUrl: 'https://flutter.dev',
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
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
              if (request.url.startsWith('https://m.youtube.com/')) {
                print('blocking navigation to $request}');
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: _createJavascriptChannels(context),
          );
        }),
      ),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController? controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller!.canGoBack()) {
                        await controller.goBack();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("No back history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller!.canGoForward()) {
                        await controller.goForward();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("No forward history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                      controller!.reload();
                    },
            ),
          ],
        );
      },
    );
  }
}

Set<JavascriptChannel> _createJavascriptChannels(BuildContext context) {
  return {
    JavascriptChannel(
        name: 'Snackbar',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message.message)));
        }),
  };
}

enum _MenuOptions {
  navigationDelegate,
  userAgent,
  javascriptChannel,
  listCookies,
  clearCookies,
  addCookie,
  removeCookie,
}

class Menu extends StatelessWidget {
  Menu(this.controller);

  final Future<WebViewController> controller;
  final CookieManager cookieManager = CookieManager();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: controller,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        return PopupMenuButton<_MenuOptions>(
          onSelected: (_MenuOptions value) async {
            switch (value) {
              case _MenuOptions.navigationDelegate:
                controller.data!.loadUrl('https://www.youtube.com');
                break;
              case _MenuOptions.userAgent:
                final userAgent = await controller.data!
                    .runJavascriptReturningResult('navigator.userAgent');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(userAgent),
                ));
                break;
              case _MenuOptions.javascriptChannel:
                const String javaScript = ''' 
    var req = new XMLHttpRequest();
    req.open('GET', "https://api.ipify.org/?format=json");
    req.onload = function() {
      if (req.status == 200) {
        Snackbar.postMessage(req.responseText);
      } else {
        Snackbar.postMessage("Error: " + req.status);
      }
    }
    req.send();
  ''';
                await controller.data!.runJavascript(javaScript);
                break;
              case _MenuOptions.clearCookies:
                _onClearCookies(context);
                break;
              case _MenuOptions.listCookies:
                _onListCookies(controller.data!, context);
                break;
              case _MenuOptions.addCookie:
                _onAddCookie(controller.data!, context);
                break;
              case _MenuOptions.removeCookie:
                _onRemoveCookie(controller.data!, context);
                break;
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuItem<_MenuOptions>>[
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.navigationDelegate,
              child: Text('Navigation Delegate Example'),
            ),
            const PopupMenuItem<_MenuOptions>(
                value: _MenuOptions.userAgent, child: Text('Show user-agent')),
            const PopupMenuItem<_MenuOptions>(
                value: _MenuOptions.javascriptChannel,
                child: Text('JavaScript Channel Example')),
            const PopupMenuItem<_MenuOptions>(
                value: _MenuOptions.clearCookies, child: Text('Clear cookies')),
            const PopupMenuItem<_MenuOptions>(
                value: _MenuOptions.listCookies, child: Text('List cookies')),
            const PopupMenuItem<_MenuOptions>(
                value: _MenuOptions.addCookie, child: Text('Add cookie')),
            const PopupMenuItem<_MenuOptions>(
                value: _MenuOptions.removeCookie, child: Text('Remove cookie')),
          ],
        );
      },
    );
  }

  Future<void> _onListCookies(
      WebViewController controller, BuildContext context) async {
    final String cookies =
        await controller.runJavascriptReturningResult('document.cookie');
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(cookies),
    ));
  }

  void _onClearCookies(BuildContext context) async {
    final bool hadCookies = await cookieManager.clearCookies();
    String message = 'There were cookies. Now, they are gone!';
    if (!hadCookies) {
      message = 'There are no cookies.';
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  void _onAddCookie(WebViewController controller, BuildContext context) async {
    await controller.runJavascript(
        'document.cookie="FirstName=John; expires=Fri, 12 Nov 2021 12:00:00 UTC"');
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Added a custom cookie."),
    ));
  }

  void _onRemoveCookie(
      WebViewController controller, BuildContext context) async {
    await controller.runJavascript(
        'document.cookie="FirstName=John; expires=Thu, 01 Jan 1970 00:00:00 UTC" ');
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Removed custom cookie."),
    ));
  }
}
