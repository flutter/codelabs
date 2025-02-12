// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/artists/artists.dart';
import '../features/home/home.dart';
import '../features/playlists/playlists.dart';
import '../features/playlists/view/view.dart';
import 'providers/artists.dart';
import 'providers/playlists.dart';
import 'views/views.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

final artistsProvider = ArtistsProvider();
final playlistsProvider = PlaylistsProvider();

const List<NavigationDestination> destinations = [
  NavigationDestination(
    label: 'Home',
    icon: Icon(Icons.arrow_right_rounded), // Modify this line
    route: '/',
  ),
  NavigationDestination(
    label: 'Playlists',
    icon: Icon(Icons.arrow_right_rounded), // Modify this line
    route: '/playlists',
  ),
  NavigationDestination(
    label: 'Artists',
    icon: Icon(Icons.arrow_right_rounded), // Modify this line
    route: '/artists',
  ),
];

class NavigationDestination {
  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

final appRouter = GoRouter(
  routes: [
    // HomeScreen
    GoRoute(
      path: '/',
      pageBuilder:
          (context, state) => const MaterialPage<void>(
            key: _pageKey,
            child: RootLayout(
              key: _scaffoldKey,
              currentIndex: 0,
              child: HomeScreen(),
            ),
          ),
    ),

    // PlaylistHomeScreen
    GoRoute(
      path: '/playlists',
      pageBuilder:
          (context, state) => const MaterialPage<void>(
            key: _pageKey,
            child: RootLayout(
              key: _scaffoldKey,
              currentIndex: 1,
              child: PlaylistHomeScreen(),
            ),
          ),
      routes: [
        GoRoute(
          path: ':pid',
          pageBuilder:
              (context, state) => MaterialPage<void>(
                key: state.pageKey,
                child: RootLayout(
                  key: _scaffoldKey,
                  currentIndex: 1,
                  child: PlaylistScreen(
                    playlist:
                        playlistsProvider.getPlaylist(
                          state.pathParameters['pid']!,
                        )!,
                  ),
                ),
              ),
        ),
      ],
    ),

    // ArtistHomeScreen
    GoRoute(
      path: '/artists',
      pageBuilder:
          (context, state) => const MaterialPage<void>(
            key: _pageKey,
            child: RootLayout(
              key: _scaffoldKey,
              currentIndex: 2,
              child: ArtistsScreen(),
            ),
          ),
      routes: [
        GoRoute(
          path: ':aid',
          pageBuilder:
              (context, state) => MaterialPage<void>(
                key: state.pageKey,
                child: RootLayout(
                  key: _scaffoldKey,
                  currentIndex: 2,
                  child: ArtistScreen(
                    artist:
                        artistsProvider.getArtist(
                          state.pathParameters['aid']!,
                        )!,
                  ),
                ),
              ),
          // builder: (context, state) => ArtistScreen(
          //   id: state.params['aid']!,
          // ),
        ),
      ],
    ),
    for (final route in destinations.skip(3))
      GoRoute(
        path: route.route,
        pageBuilder:
            (context, state) => MaterialPage<void>(
              key: _pageKey,
              child: RootLayout(
                key: _scaffoldKey,
                currentIndex: destinations.indexOf(route),
                child: const SizedBox(),
              ),
            ),
      ),
  ],
);
