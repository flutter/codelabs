import 'package:adaptive_components/adaptive_components.dart';
import 'package:flutter/material.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';
import '../../../shared/providers/providers.dart';
import '../../../shared/views/views.dart';
import '../../playlists/view/playlist_songs.dart';
import 'view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final PlaylistsProvider playlistProvider = PlaylistsProvider();
    final List<Playlist> playlists = playlistProvider.playlists;
    final Playlist topSongs = playlistProvider.topSongs;
    final Playlist newReleases = playlistProvider.newReleases;
    final ArtistsProvider artistsProvider = ArtistsProvider();
    final List<Artist> artists = artistsProvider.artists;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.isMobile) {
          return DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: false,
                title: const Text('Good morning'),
                actions: const [BrightnessToggle()],
                bottom: const TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Home'),
                    Tab(text: 'Recently Played'),
                    Tab(text: 'New Releases'),
                    Tab(text: 'Top Songs'),
                  ],
                ),
              ),
              body: LayoutBuilder(
                builder: (context, constraints) => TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const HomeHighlight(),
                          HomeArtists(
                            artists: artists,
                            constraints: constraints,
                          ),
                        ],
                      ),
                    ),
                    HomeRecent(
                      playlists: playlists,
                      axis: Axis.vertical,
                    ),
                    PlaylistSongs(
                      playlist: topSongs,
                      constraints: constraints,
                    ),
                    PlaylistSongs(
                      playlist: newReleases,
                      constraints: constraints,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return Scaffold(
          body: SingleChildScrollView(
            child: AdaptiveColumn(
              children: [
                AdaptiveContainer(
                  columnSpan: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(2), // Modify this line
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Good morning',
                            style: context.displaySmall,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const BrightnessToggle(),
                      ],
                    ),
                  ),
                ),
                AdaptiveContainer(
                  columnSpan: 12,
                  child: Column(
                    children: [
                      const HomeHighlight(),
                      LayoutBuilder(
                        builder: (context, constraints) => HomeArtists(
                          artists: artists,
                          constraints: constraints,
                        ),
                      ),
                    ],
                  ),
                ),
                AdaptiveContainer(
                  columnSpan: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2), // Modify this line
                        child: Text(
                          'Recently played',
                          style: context.headlineSmall,
                        ),
                      ),
                      HomeRecent(
                        playlists: playlists,
                      ),
                    ],
                  ),
                ),
                AdaptiveContainer(
                  columnSpan: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(2), // Modify this line
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.all(2), // Modify this line
                                child: Text(
                                  'Top Songs Today',
                                  style: context.titleLarge,
                                ),
                              ),
                              LayoutBuilder(
                                builder: (context, constraints) =>
                                    PlaylistSongs(
                                  playlist: topSongs,
                                  constraints: constraints,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Add spacer between tables
                        Flexible(
                          flex: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.all(2), // Modify this line
                                child: Text(
                                  'New Releases',
                                  style: context.titleLarge,
                                ),
                              ),
                              LayoutBuilder(
                                builder: (context, constraints) =>
                                    PlaylistSongs(
                                  playlist: newReleases,
                                  constraints: constraints,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
