import 'dart:io';
import 'package:codelab_rebuild/codelab_rebuild.dart';
import 'package:codelab_rebuild/src/rebuild_config.dart';
import 'package:logging/logging.dart';

void main(List<String> arguments) {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  final source = arguments.single;
  Configuration config = loadConfig(source);
  rebuildConfig(File(source).parent, config);
}
