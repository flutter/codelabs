import 'package:flutter/material.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:split_view/split_view.dart';

import 'playlist_details.dart';
import 'playlists.dart';

class AdaptivePlaylists extends StatelessWidget {
  const AdaptivePlaylists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final targetPlatform = Theme.of(context).platform;

    if (targetPlatform == TargetPlatform.android ||
        targetPlatform == TargetPlatform.iOS ||
        screenWidth <= 600) {
      return const NarrowDisplayPlaylists();
    } else {
      return const WideDisplayPlaylists();
    }
  }
}

class NarrowDisplayPlaylists extends StatelessWidget {
  const NarrowDisplayPlaylists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FlutterDev Playlists')),
      body: Playlists(
        playlistSelected: (playlist) {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) {
                return Scaffold(
                  appBar: AppBar(title: Text(playlist.snippet!.title!)),
                  body: PlaylistDetails(
                    playlistId: playlist.id!,
                    playlistName: playlist.snippet!.title!,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class WideDisplayPlaylists extends StatefulWidget {
  const WideDisplayPlaylists({
    Key? key,
  }) : super(key: key);

  @override
  State<WideDisplayPlaylists> createState() => _WideDisplayPlaylistsState();
}

class _WideDisplayPlaylistsState extends State<WideDisplayPlaylists> {
  Playlist? selectedPlaylist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: selectedPlaylist == null
            ? const Text('FlutterDev Playlists')
            : Text('FlutterDev Playlist: ${selectedPlaylist!.snippet!.title!}'),
      ),
      body: SplitView(
        viewMode: SplitViewMode.Horizontal,
        children: [
          Playlists(playlistSelected: (playlist) {
            setState(() {
              selectedPlaylist = playlist;
            });
          }),
          if (selectedPlaylist != null)
            PlaylistDetails(
                playlistId: selectedPlaylist!.id!,
                playlistName: selectedPlaylist!.snippet!.title!)
          else
            const Center(
              child: Text('Select a playlist'),
            ),
        ],
      ),
    );
  }
}
