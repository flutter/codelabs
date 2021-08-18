import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'src/app_state.dart';
import 'src/playlists.dart';

const youTubeApiKey = 'AIzaNotAnApiKey';
const flutterDevAccountId = 'UCwXdFgeE9KYzlDdR7TG9cMw';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  runApp(ChangeNotifierProvider<FlutterDevPlaylists>(
    create: (BuildContext context) => FlutterDevPlaylists(
      flutterDevAccountId: flutterDevAccountId,
      youTubeApiKey: youTubeApiKey,
    ),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDev Playlists',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Playlists(),
    );
  }
}
