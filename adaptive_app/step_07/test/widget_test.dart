import 'package:adaptive_app/main.dart';
import 'package:adaptive_app/src/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:provider/provider.dart';

class FakeAuthedUserPlaylists extends ChangeNotifier
    implements AuthedUserPlaylists {
  @override
  String? get errorMessage => null;

  @override
  List<PlaylistItem> playlistItems({required String playlistId}) => [];

  @override
  List<Playlist> get playlists => [];

  @override
  bool get loggedIn => throw UnimplementedError();

  @override
  Widget get loginButton => throw UnimplementedError();

  @override
  bool get readyForLogin => throw UnimplementedError();
}

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider<AuthedUserPlaylists>(
        create: (context) => FakeAuthedUserPlaylists(),
        child: const PlaylistsApp(),
      ),
    );
  });
}
