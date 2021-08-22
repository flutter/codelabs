import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/adaptive_playlists.dart';
import 'src/app_state.dart';

void main() {
  runApp(ChangeNotifierProvider<AuthedUserPlaylists>(
    create: (BuildContext context) => AuthedUserPlaylists(),
    child: const PlaylistsApp(),
  ));
}

class PlaylistsApp extends StatelessWidget {
  const PlaylistsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDev Playlists',
      theme: FlexColorScheme.light(scheme: FlexScheme.red).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.red).toTheme,
      themeMode: ThemeMode.dark, // Or ThemeMode.System if you'd prefer
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Consumer<AuthedUserPlaylists>(builder: (context, playlists, _) {
        if (!playlists.readyForLogin) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (!playlists.loggedIn) {
          return Scaffold(
            body: Center(
              child: playlists.loginButton,
            ),
          );
        }

        return const AdaptivePlaylists();
      });
}
