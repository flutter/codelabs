import 'dart:convert';
import 'dart:io';

import 'package:cli_script/cli_script.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;

import 'configuration.dart';

final logger = Logger('rebuildConfig');

Future<void> rebuildConfig(Directory cwd, Configuration config) async {
  logger.info(config.name);

  if (!config.isValid) {
    logger.warning('Invalid config');
    exit(-1);
  }

  for (final step in config.steps) {
    await buildConfigStep(cwd, step);
  }
}

Future<void> buildConfigStep(Directory cwd, ConfigurationStep step) async {
  logger.info(step.name);

  final steps = step.steps;
  if (steps.isNotEmpty) {
    for (final subStep in steps) {
      await buildConfigStep(cwd, subStep);
    }
    return;
  }

  final command = step.command;
  if (command != null) {
    await _execCommand(command, step, cwd);
    return;
  }

  if (step.commands.isNotEmpty) {
    for (final command in step.commands) {
      await _execCommand(command, step, cwd);
    }
    return;
  }

  final path = step.path;
  if (path == null) {
    logger.severe(
        'patch, base64-contents and replace-contents require a path: $step');
    exit(-1);
  }

  final patch = step.patch;
  final patchU = step.patchU;
  final patchC = step.patchC;

  if (patch != null || patchC != null || patchU != null) {
    final fullPath = p.join(cwd.path, path);
    if (!FileSystemEntity.isFileSync(fullPath)) {
      File(fullPath).createSync();
    }

    late final Script script;
    if (patch != null) {
      script =
          patch | Script('patch', args: [path], workingDirectory: cwd.path);
    }
    if (patchC != null) {
      script = patchC |
          Script('patch', args: ['-c', path], workingDirectory: cwd.path);
    }
    if (patchU != null) {
      script = patchU |
          Script('patch', args: ['-u', path], workingDirectory: cwd.path);
    }
    script.stderr.lines.listen((event) {
      logger.warning(event);
    });
    script.stdout.lines.listen((event) {
      logger.info(event);
    });

    final exitCode = await script.exitCode;
    if (exitCode != 0) {
      logger.severe('Patch failed');
      exit(-1);
    }

    return;
  }

  final base64Contents = step.base64Contents;
  if (base64Contents != null) {
    File(p.join(cwd.path, path))
        .writeAsBytesSync(base64Decode(base64Contents.split('\n').join('')));
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

Future<void> _execCommand(
    String command, ConfigurationStep step, Directory cwd) async {
  if (command.isEmpty) {
    logger.severe('Invalid step: $step');
    exit(-1);
  }

  logger.info('exec: $command');
  final script = Script(command,
      workingDirectory:
          step.path == null ? cwd.path : p.join(cwd.path, step.path))
    ..stdout.lines.listen((event) {
      logger.info(event);
    })
    ..stderr.lines.listen((event) {
      logger.warning(event);
    });

  final exitCode = await script.exitCode;
  if (exitCode != 0) {
    logger.severe('exec failed');
    exit(-1);
  }
}
