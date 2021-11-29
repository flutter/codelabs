import 'dart:io';

import 'package:args/args.dart';
import 'package:logging/logging.dart';
import 'package:step_diff/step_diff.dart' as step_diff;

void main(List<String> arguments) {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  final logger = Logger('main');
  final parser = ArgParser();
  final args = parser.parse(arguments);
  final dirs = args.rest.map((d) {
    final dir = Directory(d);
    if (!dir.existsSync()) {
      logger.shout("Directory '$d' doesn't exist");
    }
    return dir;
  });

  if (dirs.length < 2) {
    logger.shout('At least two directories required');
  }

  step_diff.diffDirs(dirs.toList());
}
