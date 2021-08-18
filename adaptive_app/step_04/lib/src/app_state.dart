import 'package:flutter/foundation.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

class FlutterDevPlaylists extends ChangeNotifier {
  FlutterDevPlaylists({
    required this.flutterDevAccountId,
    required String youTubeApiKey,
  }) : _api = YouTubeApi(_ApiKeyClient(
          client: http.Client(),
          key: youTubeApiKey,
        )) {
    _api.playlists.list(
      ['snippet', 'contentDetails', 'id'],
      channelId: flutterDevAccountId,
      maxResults: 25,
    ).then((value) {
      _playlistList = value;
      notifyListeners();
    }, onError: (err) {
      _log.warning('Error: $err');
      _errorMessage = err.message;
      notifyListeners();
    });
  }

  final String flutterDevAccountId;
  final _api;
  final _log = Logger('YouTubeFlutterDev');

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  PlaylistListResponse? _playlistList;
  PlaylistListResponse? get playlistList => _playlistList;

  final Map<String, List<PlaylistItem>> _playlistItems = {};
  List<PlaylistItem> playlistItems({required String playlistId}) =>
      _playlistItems[playlistId] ?? [];

  Future<void> retrievePlaylist({required String playlistId}) async {
    // prevent double fetching
    if (_playlistItems.containsKey(playlistId)) {
      return;
    } else {
      _playlistItems[playlistId] = [];
    }

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
  final _log = Logger('ApiKeyClient');

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    final url = request.url.replace(queryParameters: {
      ...request.url.queryParametersAll,
      'key': [key]
    });

    _log.info('Requesting $url');

    return client.send(http.Request(request.method, url));
  }
}
