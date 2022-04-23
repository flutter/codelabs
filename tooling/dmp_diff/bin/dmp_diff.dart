import 'dart:io';

import 'package:args/args.dart';
import 'package:dmp_diff/dmp_diff.dart';
import 'package:logging/logging.dart';

void main(List<String> arguments) {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  final logger = Logger('main');
  final parser = ArgParser();
  final args = parser.parse(arguments);

  if (args.rest.length != 2) {
    logger.shout('two file paths required as args');
    return;
  }

  final fileA = File(args.rest[0]);
  final fileB = File(args.rest[1]);
  for (final file in [fileA, fileB]) {
    if (!file.existsSync()) {
      logger.shout("${file.path} doesn't exist");
      return;
    }
  }

  print("DiffMatchPatch of '${fileA.path}' and '${fileB.path}':");
  print(dmpDiff(fileA.readAsStringSync(), fileB.readAsStringSync()));
}
