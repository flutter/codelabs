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
          final errorMessage = flutterDev.errorMessage;
          if (errorMessage != null) {
            return _ErrorCard(errorMessage: errorMessage);
          }

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

          return _PlaylistsListView(items: items);
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
              // overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
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

class _ErrorCard extends StatelessWidget {
  const _ErrorCard({Key? key, required this.errorMessage}) : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: Card(
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                child: Text(
                  'YouTube API Error',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
                child: Text(
                  errorMessage,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
