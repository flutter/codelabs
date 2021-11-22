import 'package:flutter/material.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'playlist_details.dart';

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
          final playlists = flutterDev.playlists;
          if (playlists.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return _PlaylistsListView(items: playlists);
        },
      ),
    );
  }
}

class _PlaylistsListView extends StatelessWidget {
  const _PlaylistsListView({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Playlist> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
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
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) {
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
    );
  }
}
