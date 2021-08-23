import 'dart:io' show Platform;

import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/link.dart';

// From https://developers.google.com/youtube/v3/guides/auth/installed-apps#identify-access-scopes
final _scopes = ['https://www.googleapis.com/auth/youtube.readonly'];

typedef AdaptiveLoginBuilder = Widget Function(
  BuildContext context,
  http.Client authClient,
);

typedef _AdaptiveLoginButtonWidget = Widget Function({
  required VoidCallback? onPressed,
});

class AdaptiveLogin extends StatelessWidget {
  const AdaptiveLogin({required this.builder, Key? key}) : super(key: key);
  final AdaptiveLoginBuilder builder;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
      return _GoogleSignInLogin(builder: builder, button: _loginButton);
    } else {
      return _GoogleApisAuthLogin(builder: builder, button: _loginButton);
    }
  }

  Widget _loginButton({required VoidCallback? onPressed}) => ElevatedButton(
        onPressed: onPressed,
        child: const Text('Login to YouTube'),
      );
}

class _GoogleSignInLogin extends StatefulWidget {
  const _GoogleSignInLogin({required this.builder, required this.button});
  final AdaptiveLoginBuilder builder;
  final _AdaptiveLoginButtonWidget button;

  @override
  State<_GoogleSignInLogin> createState() => _GoogleSignInLoginState();
}

class _GoogleSignInLoginState extends State<_GoogleSignInLogin> {
  _GoogleSignInLoginState() {
    _googleSignIn = GoogleSignIn(
      scopes: _scopes,
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
  const _GoogleApisAuthLogin({required this.builder, required this.button});
  final AdaptiveLoginBuilder builder;
  final _AdaptiveLoginButtonWidget button;

  @override
  State<_GoogleApisAuthLogin> createState() => _GoogleApisAuthLoginState();
}

class _GoogleApisAuthLoginState extends State<_GoogleApisAuthLogin> {
  _GoogleApisAuthLoginState() {
    clientViaUserConsent(_clientId, _scopes, (url) {
      setState(() {
        _authUrl = Uri.parse(url);
      });
    }).then((authClient) {
      setState(() {
        _authClient = authClient;
      });
    });
  }

  final _clientId =
      ClientId('TODO-REPLACE-ME.apps.googleusercontent.com', 'TODO-Add-Secret');
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
