import 'dart:io';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/app_state.dart';
import 'src/playlists.dart';

// From https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw
const flutterDevAccountId = 'UCwXdFgeE9KYzlDdR7TG9cMw';

// TODO: Replace with your YouTube API Key
const youTubeApiKey = 'AIzaNotAnApiKey';

void main() {
  if (youTubeApiKey == 'AIzaNotAnApiKey') {
    print('youTubeApiKey has not been configured.');
    exit(1);
  }

  runApp(ChangeNotifierProvider<FlutterDevPlaylists>(
    create: (context) => FlutterDevPlaylists(
      flutterDevAccountId: flutterDevAccountId,
      youTubeApiKey: youTubeApiKey,
    ),
    child: const PlaylistsApp(),
  ));
}

class PlaylistsApp extends StatelessWidget {
  const PlaylistsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDev Playlists',
      theme: FlexColorScheme.light(scheme: FlexScheme.red).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.red).toTheme,
      themeMode: ThemeMode.dark, // Or ThemeMode.System if you'd prefer
      debugShowCheckedModeBanner: false,
      home: const Playlists(),
    );
  }
}
