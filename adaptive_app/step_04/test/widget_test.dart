import 'package:adaptive_app/main.dart';
import 'package:adaptive_app/src/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:provider/provider.dart';

class FakeFlutterDevPlaylists extends ChangeNotifier
    implements FlutterDevPlaylists {
  @override
  List<PlaylistItem> playlistItems({required String playlistId}) => [];

  @override
  List<Playlist> get playlists => [];
}

void main() {
  testWidgets('smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider<FlutterDevPlaylists>(
        create: (context) => FakeFlutterDevPlaylists(),
        child: const PlaylistsApp(),
      ),
    );
  });
}
