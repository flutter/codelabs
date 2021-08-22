import 'dart:collection';
import 'dart:io';

import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:url_launcher/link.dart';

// googleapis_auth client identifier
final _clientId =
    ClientId('TODO-REPLACE-ME.apps.googleusercontent.com', 'TODO-Add-Secret');
// From https://developers.google.com/youtube/v3/guides/auth/installed-apps#identify-access-scopes
final _scopes = ['https://www.googleapis.com/auth/youtube.readonly'];

class AuthedUserPlaylists extends ChangeNotifier {
  AuthedUserPlaylists() {
    if (kIsWeb || Platform.isIOS || Platform.isAndroid) {
      // Use Google Sign In for Android, iOS and Web
      _googleSignIn = GoogleSignIn(
        scopes: _scopes,
      );
      _googleSignIn!.onCurrentUserChanged
          .listen((GoogleSignInAccount? account) {
        _googleSignIn!.authenticatedClient().then((authClient) {
          _api = YouTubeApi(authClient!);
          _loadPlaylists();
        });
      });
    } else {
      // Use googleapis_auth for Windows, macOS and Linux
      clientViaUserConsent(_clientId, _scopes, (url) {
        _loginUrl = url;
        notifyListeners();
      }).then((authClient) {
        _api = YouTubeApi(authClient);
        _loadPlaylists();
      });
    }
  }

  Future<void> _loadPlaylists() async {
    String? nextPageToken;
    _playlists.clear();

    do {
      final response = await _api!.playlists.list(
        ['snippet', 'contentDetails', 'id'],
        mine: true,
        maxResults: 50,
        pageToken: nextPageToken,
      );
      _playlists.addAll(response.items!);
      notifyListeners();
    } while (nextPageToken != null);
  }

  GoogleSignIn? _googleSignIn;

  String? _loginUrl;
  bool get readyForLogin =>
      kIsWeb || Platform.isIOS || Platform.isAndroid || _loginUrl != null;

  bool get loggedIn => _api != null;

  Widget get loginButton {
    if (kIsWeb || Platform.isIOS || Platform.isAndroid) {
      return ElevatedButton(
        onPressed: () {
          _googleSignIn!.signIn();
        },
        child: const Text('Login to YouTube'),
      );
    } else {
      return Link(
        uri: Uri.parse(_loginUrl!),
        builder: (context, login) => ElevatedButton(
          onPressed: login,
          child: const Text('Login to YouTube'),
        ),
      );
    }
  }

  YouTubeApi? _api;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  final List<Playlist> _playlists = [];
  List<Playlist> get playlists => UnmodifiableListView(_playlists);

  final Map<String, List<PlaylistItem>> _playlistItems = {};
  List<PlaylistItem> playlistItems({required String playlistId}) {
    if (!_playlistItems.containsKey(playlistId)) {
      _playlistItems[playlistId] = [];
      _retrievePlaylist(playlistId);
    }
    return UnmodifiableListView(_playlistItems[playlistId]!);
  }

  Future<void> _retrievePlaylist(String playlistId) async {
    String? nextPageToken;
    do {
      var response = await _api!.playlistItems.list(
        ['snippet', 'contentDetails'],
        playlistId: playlistId,
        maxResults: 25,
        pageToken: nextPageToken,
      );
      var items = response.items;
      if (items != null) {
        _playlistItems[playlistId]!.addAll(items);
      }
      notifyListeners();
      nextPageToken = response.nextPageToken;
    } while (nextPageToken != null);
  }
}
