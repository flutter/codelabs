import 'dart:io' show Platform;

import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/link.dart';

typedef AdaptiveLoginBuilder = Widget Function(
  BuildContext context,
  http.Client authClient,
);

typedef _AdaptiveLoginButtonWidget = Widget Function({
  required VoidCallback? onPressed,
});

class AdaptiveLogin extends StatelessWidget {
  const AdaptiveLogin(
      {required this.builder,
      required this.clientId,
      required this.scopes,
      required this.loginButtonChild,
      Key? key})
      : super(key: key);
  final AdaptiveLoginBuilder builder;
  final ClientId clientId;
  final List<String> scopes;
  final Widget loginButtonChild;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
      return _GoogleSignInLogin(
        builder: builder,
        button: _loginButton,
        scopes: scopes,
      );
    } else {
      return _GoogleApisAuthLogin(
        builder: builder,
        button: _loginButton,
        scopes: scopes,
        clientId: clientId,
      );
    }
  }

  Widget _loginButton({required VoidCallback? onPressed}) => ElevatedButton(
        onPressed: onPressed,
        child: loginButtonChild,
      );
}

class _GoogleSignInLogin extends StatefulWidget {
  const _GoogleSignInLogin({
    required this.builder,
    required this.button,
    required this.scopes,
  });
  final AdaptiveLoginBuilder builder;
  final _AdaptiveLoginButtonWidget button;
  final List<String> scopes;

  @override
  State<_GoogleSignInLogin> createState() => _GoogleSignInLoginState();
}

class _GoogleSignInLoginState extends State<_GoogleSignInLogin> {
  @override
  initState() {
    super.initState();
    _googleSignIn = GoogleSignIn(
      scopes: widget.scopes,
    );
    _googleSignIn.onCurrentUserChanged.listen((account) {
      if (account != null) {
        _googleSignIn.authenticatedClient().then((authClient) {
          setState(() {
            _authClient = authClient;
          });
        });
      }
    });
  }

  late final GoogleSignIn _googleSignIn;
  http.Client? _authClient;

  @override
  Widget build(BuildContext context) {
    final authClient = _authClient;
    if (authClient != null) {
      return widget.builder(context, authClient);
    }

    return Scaffold(
      body: Center(
        child: widget.button(onPressed: () {
          _googleSignIn.signIn();
        }),
      ),
    );
  }
}

class _GoogleApisAuthLogin extends StatefulWidget {
  const _GoogleApisAuthLogin({
    required this.builder,
    required this.button,
    required this.scopes,
    required this.clientId,
  });
  final AdaptiveLoginBuilder builder;
  final _AdaptiveLoginButtonWidget button;
  final List<String> scopes;
  final ClientId clientId;

  @override
  State<_GoogleApisAuthLogin> createState() => _GoogleApisAuthLoginState();
}

class _GoogleApisAuthLoginState extends State<_GoogleApisAuthLogin> {
  @override
  initState() {
    super.initState();
    clientViaUserConsent(widget.clientId, widget.scopes, (url) {
      setState(() {
        _authUrl = Uri.parse(url);
      });
    }).then((authClient) {
      setState(() {
        _authClient = authClient;
      });
    });
  }

  Uri? _authUrl;
  http.Client? _authClient;

  @override
  Widget build(BuildContext context) {
    final authClient = _authClient;
    if (authClient != null) {
      return widget.builder(context, authClient);
    }

    final authUrl = _authUrl;
    if (authUrl != null) {
      return Scaffold(
        body: Center(
          child: Link(
            uri: authUrl,
            builder: (context, followLink) =>
                widget.button(onPressed: followLink),
          ),
        ),
      );
    }

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
