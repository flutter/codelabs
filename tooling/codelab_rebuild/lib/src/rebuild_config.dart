import 'dart:io';
import 'package:logging/logging.dart';
import 'package:process_run/shell.dart';
import 'configuration.dart';

final logger = Logger('rebuildConfig');

void rebuildConfig(Directory cwd, Configuration config) {
  logger.info(config.name);
  for (final step in config.steps) {
    buildConfigStep(cwd, step);
  }
}

void buildConfigStep(Directory cwd, ConfigurationStep step) {
  logger.info(step.name);
  final shell = Shell(workingDirectory: cwd.toString());
}
