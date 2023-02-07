import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:http/http.dart' as http;

class FlutterDevPlaylists extends ChangeNotifier {
  FlutterDevPlaylists({
    required String flutterDevAccountId,
    required String youTubeApiKey,
  }) : _flutterDevAccountId = flutterDevAccountId {
    _api = YouTubeApi(
      _ApiKeyClient(
        client: http.Client(),
        key: youTubeApiKey,
      ),
    );
    _loadPlaylists();
  }

  Future<void> _loadPlaylists() async {
    String? nextPageToken;
    _playlists.clear();

    do {
      final response = await _api.playlists.list(
        ['snippet', 'contentDetails', 'id'],
        channelId: _flutterDevAccountId,
        maxResults: 50,
        pageToken: nextPageToken,
      );
      _playlists.addAll(response.items!);
      _playlists.sort((a, b) => a.snippet!.title!
          .toLowerCase()
          .compareTo(b.snippet!.title!.toLowerCase()));
      notifyListeners();
    } while (nextPageToken != null);
  }

  final String _flutterDevAccountId;
  late final YouTubeApi _api;

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
      var response = await _api.playlistItems.list(
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

class _ApiKeyClient extends http.BaseClient {
  _ApiKeyClient({required this.key, required this.client});

  final String key;
  final http.Client client;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    final url = request.url.replace(queryParameters: <String, List<String>>{
      ...request.url.queryParametersAll,
      'key': [key]
    });

    return client.send(http.Request(request.method, url));
  }
}
