import 'dart:io';

import 'package:diff_match_patch/diff_match_patch.dart';
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
  if (!step.isValid) {
    logger.severe('Invalid step: $step');
    exit(-1);
  }

  final steps = step.steps;
  if (steps != null && steps.isNotEmpty) {
    for (final subStep in steps) {
      buildConfigStep(cwd, subStep);
    }
    return;
  }

  final exec = step.exec;
  if (exec != null && exec.isNotEmpty) {
    // ignore: unused_local_variable
    final shell = Shell(workingDirectory: cwd.toString());
    logger.info('exec: $exec');
    shell.run(exec);
    return;
  }

  final path = step.path;
  if (path == null) {
    logger.severe('Exec and ReplaceContents both require a file: $step');
    exit(-1);
  }

  final diff = step.patch;
  if (diff != null) {
    var content = '';
    if (FileSystemEntity.isFileSync(path)) {
      content = File(path).readAsStringSync();
    }

    final applied = dmpPatch(content, diff);
    for (var chunkApplied in applied.successfullyApplied) {
      if (!chunkApplied) {
        logger.severe('Patch failed to apply: $step');
        exit(-1);
      }
    }

    File(path).writeAsStringSync(applied.patchedText);
    return;
  }

  final replaceContents = step.replaceContents;
  if (replaceContents != null) {
    File(path).writeAsStringSync(replaceContents);
    return;
  }

  // Shouldn't get this far.
  logger.severe('Invalid step: $step');
  exit(-1);
}

class PatchesApplied {
  const PatchesApplied(this.patchedText, this.successfullyApplied);
  final String patchedText;
  final List<bool> successfullyApplied;
}

PatchesApplied dmpPatch(String text, String patch) {
  final patches = patchFromText(patch);
  var result = patchApply(patches, text);
  final patchedText = result[0] as String;
  final successfullyApplied = result[1] as List<bool>;
  return PatchesApplied(patchedText, successfullyApplied);
}
