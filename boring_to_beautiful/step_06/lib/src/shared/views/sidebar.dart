import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../classes/classes.dart';
import '../extensions.dart';
import '../providers/providers.dart';
import 'image_clipper.dart';

final playlistProvider = PlaylistsProvider();
final playlists = playlistProvider.playlists;

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => GoRouter.of(context).go('/'),
          ),
          const ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Artists'),
            onTap: () => GoRouter.of(context).go('/artists'),
          ),
          ListTile(
            leading: const Icon(Icons.menu),
            title: const Text('Playlists'),
            onTap: () => GoRouter.of(context).go('/playlists'),
          ),
          for (Playlist playlist in playlists)
            ListTile(
              title: Text(playlist.title),
              onTap: () => GoRouter.of(context).go('/playlists/${playlist.id}'),
            ),
        ],
      ),
    );
  }
}

class PlaylistNav extends StatelessWidget {
  const PlaylistNav({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.colorScheme;
    return Container(
      color: colors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text(
              'Playlists',
              style: context.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              controller: ScrollController(),
              children: [
                for (Playlist playlist in playlists)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: _PlaylistNavItem(
                      image: playlist.cover.image,
                      playlistId: playlist.id,
                      title: playlist.title,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PlaylistNavItem extends StatefulWidget {
  const _PlaylistNavItem({
    required this.image,
    required this.playlistId,
    required this.title,
  });

  final String image;
  final String playlistId;
  final String title;

  @override
  State<_PlaylistNavItem> createState() => _PlaylistNavItemState();
}

class _PlaylistNavItemState extends State<_PlaylistNavItem> {
  bool _isSelected = false;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode(debugLabel: widget.title)
      ..addListener(() {
        setState(() => _isSelected = _focusNode.hasPrimaryFocus);
      });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClippedImage(widget.image),
      title: Text(
        widget.title,
        maxLines: 1,
        overflow: TextOverflow.clip,
        style: context.labelSmall!.copyWith(
          fontStyle: _isSelected ? FontStyle.italic : null,
          decoration: _isSelected ? TextDecoration.underline : null,
        ),
      ),
      onTap: () => GoRouter.of(context).go('/playlists/${widget.playlistId}'),
      hoverColor: Theme.of(context).colorScheme.primary.withOpacity(0.04),
      selected: _isSelected,
      focusNode: _focusNode,
    );
  }
}
