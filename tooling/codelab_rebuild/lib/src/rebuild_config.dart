import 'dart:io';

import 'package:cli_script/cli_script.dart';
import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;

import 'configuration.dart';

final logger = Logger('rebuildConfig');

Future<void> rebuildConfig(Directory cwd, Configuration config) async {
  logger.info(config.name);
  for (final step in config.steps) {
    await buildConfigStep(cwd, step);
  }
}

Future<void> buildConfigStep(Directory cwd, ConfigurationStep step) async {
  logger.info(step.name);
  if (!step.isValid) {
    logger.severe('Invalid step: $step');
    exit(-1);
  }

  final steps = step.steps;
  if (steps != null && steps.isNotEmpty) {
    for (final subStep in steps) {
      await buildConfigStep(cwd, subStep);
    }
    return;
  }

  final exec = step.exec;
  if (exec != null) {
    logger.info('exec: $exec');
    final command = exec.command;
    if (command != null && command.isNotEmpty) {
      await _execCommand(command, step, exec, cwd);
    } else {
      for (final command in exec.commands) {
        await _execCommand(command, step, exec, cwd);
      }
    }
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
    final fullPath = p.join(cwd.path, path);
    if (FileSystemEntity.isFileSync(fullPath)) {
      content = File(fullPath).readAsStringSync();
    }

    final applied = _dmpPatch(content, diff);
    for (var chunkApplied in applied.successfullyApplied) {
      if (!chunkApplied) {
        logger.severe('Patch failed to apply: $step');
        exit(-1);
      }
    }

    File(fullPath).writeAsStringSync(applied.patchedText);
    return;
  }

  final replaceContents = step.replaceContents;
  if (replaceContents != null) {
    File(p.join(cwd.path, path)).writeAsStringSync(replaceContents);
    return;
  }

  // Shouldn't get this far.
  logger.severe('Invalid step: $step');
  exit(-1);
}

Future<void> _execCommand(String command, ConfigurationStep step, StepExec exec,
    Directory cwd) async {
  if (command.isEmpty) {
    logger.severe('Invalid step: $step');
    exit(-1);
  }

  final script = Script(command,
      workingDirectory:
          exec.path == null ? cwd.path : p.join(cwd.path, exec.path))
    ..stdout.lines.listen((event) {
      logger.info(event);
    })
    ..stderr.lines.listen((event) {
      logger.warning(event);
    });

  await script.done;
}

class _PatchesApplied {
  const _PatchesApplied(this.patchedText, this.successfullyApplied);
  final String patchedText;
  final List<bool> successfullyApplied;
}

_PatchesApplied _dmpPatch(String text, String patch) {
  final patches = patchFromText(patch);
  var result = patchApply(patches, text);
  final patchedText = result[0] as String;
  final successfullyApplied = result[1] as List<bool>;
  return _PatchesApplied(patchedText, successfullyApplied);
}
