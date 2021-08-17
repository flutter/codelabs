import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

const youTubeApiKey = 'AIzaNotAnApiKey';
const flutterDevAccountId = 'UCwXdFgeE9KYzlDdR7TG9cMw';

class ApiKeyClient extends http.BaseClient {
  ApiKeyClient({required this.key, required this.client});

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

class FlutterDevPlaylists extends ChangeNotifier {
  FlutterDevPlaylists() {
    _api.playlists.list(
      ['snippet', 'contentDetails', 'id'],
      channelId: flutterDevAccountId,
      maxResults: 25,
    ).then((value) {
      _log.info('Response\n${_encoder.convert(value)}');
      _playlistList = value;
      notifyListeners();
    }, onError: (err) {
      _log.warning('Error: $err');
    });
  }

  final _api =
      YouTubeApi(ApiKeyClient(client: http.Client(), key: youTubeApiKey));
  static const _encoder = JsonEncoder.withIndent('  ');
  final _log = Logger('YouTubeFlutterDev');

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

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  runApp(ChangeNotifierProvider<FlutterDevPlaylists>(
    create: (BuildContext context) => FlutterDevPlaylists(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Playlists(),
    );
  }
}

class Playlists extends StatelessWidget {
  const Playlists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterDev Playlists'),
      ),
      body: Consumer<FlutterDevPlaylists>(
        builder: (context, flutterDev, child) {
          final playlistList = flutterDev.playlistList;
          if (playlistList == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final items = playlistList.items;
          if (items == null || items.isEmpty) {
            return const Center(
              child: Text('There are no playlists to display'),
            );
          }

          return ListView.builder(
            itemBuilder: (context, index) {
              var playlist = items[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.network(
                    playlist.snippet!.thumbnails!.default_!.url!,
                  ),
                  title: Text(playlist.snippet!.title!),
                  subtitle: Text(
                    playlist.snippet!.description!,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          flutterDev.retrievePlaylist(playlistId: playlist.id!);
                          return PlaylistDetails(
                            playlistId: playlist.id!,
                            playlistName: playlist.snippet!.title!,
                          );
                        },
                      ),
                    );
                  },
                ),
              );
            },
            itemCount: items.length,
          );
        },
      ),
    );
  }
}

class PlaylistDetails extends StatelessWidget {
  const PlaylistDetails(
      {required this.playlistId, required this.playlistName, Key? key})
      : super(key: key);
  final String playlistId;
  final String playlistName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(playlistName),
      ),
      body: Consumer<FlutterDevPlaylists>(
        builder: (context, flutterDev, _) {
          final playlistItems =
              flutterDev.playlistItems(playlistId: playlistId);
          if (playlistItems.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemBuilder: (context, index) {
              final playlistItem = playlistItems[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(playlistItem.snippet!.title!),
                  subtitle: Text(playlistItem.snippet!.description!),
                  leading: Image.network(
                      playlistItem.snippet!.thumbnails!.default_!.url!),
                ),
              );
            },
            itemCount: playlistItems.length,
          );
        },
      ),
    );
  }
}
