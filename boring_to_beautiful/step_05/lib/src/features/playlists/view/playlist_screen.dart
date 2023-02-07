import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';
import '../../../shared/views/adaptive_image_card.dart';
import '../../../shared/views/views.dart';
import 'playlist_songs.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({required this.playlist, super.key});

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final colors = Theme.of(context).colorScheme;
      final double headerHeight = constraints.isMobile
          ? max(constraints.biggest.height * 0.5, 450)
          : max(constraints.biggest.height * 0.25, 250);
      if (constraints.isMobile) {
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () => GoRouter.of(context).go('/playlists'),
            ),
            title: Text(playlist.title),
            actions: [
              IconButton(
                icon: const Icon(Icons.play_circle_fill),
                onPressed: () {},
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shuffle),
              ),
            ],
          ),
          body: ArticleContent(
            child: PlaylistSongs(
              playlist: playlist,
              constraints: constraints,
            ),
          ),
        );
      }
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: BackButton(
                onPressed: () => GoRouter.of(context).go('/playlists'),
              ),
              expandedHeight: headerHeight,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: AdaptiveImageCard(
                  axis: constraints.isMobile ? Axis.vertical : Axis.horizontal,
                  constraints:
                      constraints.copyWith(maxHeight: headerHeight).normalize(),
                  image: playlist.cover.image,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'PLAYLIST',
                        style: context.titleSmall!
                            .copyWith(color: colors.onSurface),
                      ),
                      Text(
                        playlist.title,
                        style: context.displaySmall!
                            .copyWith(color: colors.onSurface),
                      ),
                      Text(
                        playlist.description,
                        style: context.bodyLarge!.copyWith(
                          color: colors.onSurface.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.play_circle_fill,
                              color: colors.tertiary,
                            ),
                            onPressed: () {},
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shuffle,
                              color: colors.tertiary,
                            ),
                            label: Text(
                              'Shuffle',
                              style: context.bodySmall!.copyWith(
                                color: colors.tertiary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ArticleContent(
                child: PlaylistSongs(
                  playlist: playlist,
                  constraints: constraints,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
