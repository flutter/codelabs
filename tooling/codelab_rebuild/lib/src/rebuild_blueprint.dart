import 'dart:convert';
import 'dart:io';

import 'package:cli_script/cli_script.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;

import 'blueprint.dart';

final _logger = Logger('rebuild_blueprint');

Future<void> rebuildFromBlueprint(Directory cwd, Blueprint blueprint) async {
  _logger.info(blueprint.name);

  if (!blueprint.isValid) {
    _logger.warning('Invalid blueprint');
    exit(-1);
  }

  for (final step in blueprint.steps) {
    await _buildBlueprintStep(cwd, step);
  }
}

Future<void> _buildBlueprintStep(Directory cwd, BlueprintStep step) async {
  _logger.info(step.name);

  final steps = step.steps;
  if (steps.isNotEmpty) {
    for (final subStep in steps) {
      await _buildBlueprintStep(cwd, subStep);
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
    _logger.severe(
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
      _logger.warning(event);
    });
    script.stdout.lines.listen((event) {
      _logger.info(event);
    });

    final exitCode = await script.exitCode;
    if (exitCode != 0) {
      _logger.severe('Patch failed');
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
  _logger.severe('Invalid step: $step');
  exit(-1);
}

Future<void> _execCommand(
    String command, BlueprintStep step, Directory cwd) async {
  if (command.isEmpty) {
    _logger.severe('Invalid step: $step');
    exit(-1);
  }

  _logger.info('exec: $command');
  final script = Script(command,
      workingDirectory:
          step.path == null ? cwd.path : p.join(cwd.path, step.path))
    ..stdout.lines.listen((event) {
      _logger.info(event);
    })
    ..stderr.lines.listen((event) {
      _logger.warning(event);
    });

  final exitCode = await script.exitCode;
  if (exitCode != 0) {
    _logger.severe('exec failed');
    exit(-1);
  }
}
