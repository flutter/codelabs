import 'package:flutter/material.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

import 'app_state.dart';

class PlaylistDetails extends StatelessWidget {
  const PlaylistDetails(
      {required this.playlistId, required this.playlistName, super.key});
  final String playlistId;
  final String playlistName;

  @override
  Widget build(BuildContext context) {
    return Consumer<FlutterDevPlaylists>(
      builder: (context, playlists, _) {
        final playlistItems = playlists.playlistItems(playlistId: playlistId);
        if (playlistItems.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return _PlaylistDetailsListView(playlistItems: playlistItems);
      },
    );
  }
}

class _PlaylistDetailsListView extends StatefulWidget {
  const _PlaylistDetailsListView({required this.playlistItems});
  final List<PlaylistItem> playlistItems;

  @override
  State<_PlaylistDetailsListView> createState() =>
      _PlaylistDetailsListViewState();
}

class _PlaylistDetailsListViewState extends State<_PlaylistDetailsListView> {
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
      itemCount: widget.playlistItems.length,
      itemBuilder: (context, index) {
        final playlistItem = widget.playlistItems[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (playlistItem.snippet!.thumbnails!.high != null)
                  Image.network(playlistItem.snippet!.thumbnails!.high!.url!),
                _buildGradient(context),
                _buildTitleAndSubtitle(context, playlistItem),
                _buildPlayButton(context, playlistItem),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildGradient(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Theme.of(context).backgroundColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.5, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle(
      BuildContext context, PlaylistItem playlistItem) {
    return Positioned(
      left: 20,
      right: 0,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            playlistItem.snippet!.title!,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
          ),
          if (playlistItem.snippet!.videoOwnerChannelTitle != null)
            Text(
              playlistItem.snippet!.videoOwnerChannelTitle!,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 12,
                  ),
            ),
        ],
      ),
    );
  }

  Widget _buildPlayButton(BuildContext context, PlaylistItem playlistItem) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(21),
            ),
          ),
        ),
        Link(
          uri: Uri.parse(
              'https://www.youtube.com/watch?v=${playlistItem.snippet!.resourceId!.videoId}'),
          builder: (context, followLink) => IconButton(
            onPressed: followLink,
            color: Colors.red,
            icon: const Icon(Icons.play_circle_fill),
            iconSize: 45,
          ),
        ),
      ],
    );
  }
}
