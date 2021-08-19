import 'package:adaptive_app/main.dart';
import 'package:adaptive_app/src/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:googleapis/youtube/v3.dart';
import 'package:provider/provider.dart';

class FakeFlutterDevPlaylists extends ChangeNotifier
    implements FlutterDevPlaylists {
  @override
  String? get errorMessage => null;

  @override
  List<PlaylistItem> playlistItems({required String playlistId}) => [];

  @override
  PlaylistListResponse? get playlistList => PlaylistListResponse();
}

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider<FlutterDevPlaylists>(
        create: (context) => FakeFlutterDevPlaylists(),
        child: const PlaylistsApp(),
      ),
    );
  });
}
