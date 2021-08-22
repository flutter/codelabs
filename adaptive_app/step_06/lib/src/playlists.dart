import 'package:flutter/material.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:provider/provider.dart';

import 'adaptive_image.dart';
import 'adaptive_text.dart';
import 'app_state.dart';

class Playlists extends StatelessWidget {
  const Playlists({required this.playlistSelected, Key? key}) : super(key: key);

  final PlaylistsListSelected playlistSelected;

  @override
  Widget build(BuildContext context) {
    return Consumer<FlutterDevPlaylists>(
      builder: (context, flutterDev, child) {
        final errorMessage = flutterDev.errorMessage;
        if (errorMessage != null) {
          return _ErrorCard(errorMessage: errorMessage);
        }

        final playlists = flutterDev.playlists;
        if (playlists.isEmpty) {
          return const Center(
            child: AdaptiveText('There are no playlists to display'),
          );
        }

        return _PlaylistsListView(
          items: playlists,
          playlistSelected: playlistSelected,
        );
      },
    );
  }
}

typedef PlaylistsListSelected = void Function(Playlist playlist);

class _PlaylistsListView extends StatefulWidget {
  const _PlaylistsListView({
    Key? key,
    required this.items,
    required this.playlistSelected,
  }) : super(key: key);

  final List<Playlist> items;
  final PlaylistsListSelected playlistSelected;

  @override
  State<_PlaylistsListView> createState() => _PlaylistsListViewState();
}

class _PlaylistsListViewState extends State<_PlaylistsListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        var playlist = widget.items[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: AdaptiveImage.network(
              playlist.snippet!.thumbnails!.default_!.url!,
            ),
            title: Text(playlist.snippet!.title!),
            subtitle: Text(
              playlist.snippet!.description!,
              // overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              widget.playlistSelected(playlist);
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
                child: AdaptiveText(
                  'YouTube API Error',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
                child: AdaptiveText(
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
