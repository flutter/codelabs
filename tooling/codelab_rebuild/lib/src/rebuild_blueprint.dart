// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:io/io.dart' as io;
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

  final stop = step.stop;
  if (stop != null && stop == true) {
    _logger.info('Stopping.');
    exit(0);
  }

  final platforms = step.platforms;
  if (platforms != null) {
    if (!platforms.contains(Platform.operatingSystem)) {
      _logger.info(
          'Skipping because ${Platform.operatingSystem} is not in [${platforms.join(',')}].');
      return;
    }
  }

  final steps = step.steps;
  if (steps.isNotEmpty) {
    for (final subStep in steps) {
      await _buildBlueprintStep(cwd, subStep);
    }
    return;
  }

  if (step.mkdir != null || step.mkdirs.isNotEmpty) {
    final dir = step.mkdir;
    if (dir != null) {
      _mkdir(
          step.path != null
              ? p.join(cwd.path, step.path, dir)
              : p.join(cwd.path, dir),
          step: step);
    } else {
      for (final dir in step.mkdirs) {
        _mkdir(
            step.path != null
                ? p.join(cwd.path, step.path, dir)
                : p.join(cwd.path, dir),
            step: step);
      }
    }
    return;
  }

  if (step.rmdir != null || step.rmdirs.isNotEmpty) {
    final dir = step.rmdir;
    if (dir != null) {
      _rmdir(
          step.path != null
              ? p.join(cwd.path, step.path, dir)
              : p.join(cwd.path, dir),
          step: step);
    } else {
      for (final dir in step.rmdirs) {
        _rmdir(
            step.path != null
                ? p.join(cwd.path, step.path, dir)
                : p.join(cwd.path, dir),
            step: step);
      }
    }
    return;
  }

  final rename = step.rename;
  if (rename != null) {
    if (step.path != null) {
      _rename(
          from: p.join(cwd.path, step.path, rename.from),
          to: p.join(cwd.path, step.path, rename.to),
          step: step);
    } else {
      _rename(
          from: p.join(cwd.path, rename.from),
          to: p.join(cwd.path, rename.to),
          step: step);
    }
    return;
  }

  final cpdir = step.copydir;
  if (cpdir != null) {
    if (step.path != null) {
      _cpdir(
          from: p.join(cwd.path, step.path, cpdir.from),
          to: p.join(cwd.path, step.path, cpdir.to),
          step: step);
    } else {
      _cpdir(
          from: p.join(cwd.path, cpdir.from),
          to: p.join(cwd.path, cpdir.to),
          step: step);
    }
    return;
  }

  final cp = step.copy;
  if (cp != null) {
    if (step.path != null) {
      _cp(
          from: p.join(cwd.path, step.path, cp.from),
          to: p.join(cwd.path, step.path, cp.to),
          step: step);
    } else {
      _cp(
          from: p.join(cwd.path, cp.from),
          to: p.join(cwd.path, cp.to),
          step: step);
    }
    return;
  }

  final rm = step.rm;
  if (rm != null) {
    late final File target;
    if (step.path != null) {
      target = File(p.join(cwd.path, step.path, rm));
    } else {
      target = File(p.join(cwd.path, rm));
    }
    if (!target.existsSync()) {
      _logger.severe("File ${target.path} doesn't exist: ${step.name}");
      exit(-1);
    }
    target.deleteSync();
    return;
  }

  final retrieveUrl = step.retrieveUrl;
  if (retrieveUrl != null) {
    final request = await HttpClient().getUrl(Uri.parse(retrieveUrl));
    final response = await request.close();
    await response.pipe(File(p.join(cwd.path, step.path!)).openWrite());
    return;
  }

  final pod = step.pod;
  if (pod != null) {
    await _runNamedCommand(
      command: 'pod',
      step: step,
      cwd: cwd,
      args: pod,
      exitOnStdErr: false, // pod update writes lots of warnings we ignore
    );
    return;
  }

  final dart = step.dart;
  if (dart != null) {
    await _runNamedCommand(
      command: 'dart',
      step: step,
      cwd: cwd,
      args: dart,
    );
    return;
  }

  final flutter = step.flutter;
  if (flutter != null) {
    await _runNamedCommand(
      command: 'flutter',
      step: step,
      cwd: cwd,
      args: flutter,
      exitOnStdErr: false, // flutter prints status info to stderr.
    );
    return;
  }

  final git = step.git;
  if (git != null) {
    await _runNamedCommand(
      command: 'git',
      step: step,
      cwd: cwd,
      args: git,
      exitOnStdErr: false, // git prints status info to stderr. Sigh.
    );
    return;
  }

  final tar = step.tar;
  if (tar != null) {
    await _runNamedCommand(
      command: 'tar',
      step: step,
      cwd: cwd,
      args: tar,
    );
    return;
  }

  final sevenZip = step.sevenZip;
  if (sevenZip != null) {
    await _runNamedCommand(
      command: '7z',
      step: step,
      cwd: cwd,
      args: sevenZip,
    );
    return;
  }

  final stripLinesContaining = step.stripLinesContaining;
  if (stripLinesContaining != null) {
    final target = File(p.join(cwd.path, step.path));
    var lines = target.readAsLinesSync();
    lines.removeWhere((line) => line.contains(stripLinesContaining));
    target.writeAsStringSync(lines.join('\n'));
    return;
  }

  final path = step.path;
  if (path == null) {
    _logger.severe(
        'patch, base64-contents and replace-contents require a path: ${step.name}');
    exit(-1);
  }

  final patch = step.patch;
  final patchU = step.patchU;
  final patchC = step.patchC;

  if (patch != null || patchC != null || patchU != null) {
    bool seenError = false;
    final fullPath = p.canonicalize(p.join(cwd.path, path));
    if (!FileSystemEntity.isFileSync(fullPath)) {
      File(fullPath).createSync();
    }

    late final Process process;
    if (patch != null) {
      process =
          await Process.start('patch', [fullPath], workingDirectory: cwd.path);
    } else if (patchC != null) {
      process = await Process.start('patch', ['-c', fullPath],
          workingDirectory: cwd.path);
    } else if (patchU != null) {
      process = await Process.start('patch', ['-u', fullPath],
          workingDirectory: cwd.path);
    }
    process.stderr.transform(utf8.decoder).listen((str) {
      seenError = true;
      _logger.warning(str.trimRight());
    });
    process.stdout.transform(utf8.decoder).listen((str) {
      _logger.info(str.trimRight());
    });

    process.stdin.write(patch ?? patchC ?? patchU);
    await process.stdin.flush();
    await process.stdin.close();

    final exitCode = await process.exitCode;
    if (exitCode != 0 || seenError) {
      _logger.severe('patch $fullPath failed.');
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
  _logger.severe('Invalid step: ${step.name}');
  exit(-1);
}

Future<void> _runNamedCommand({
  required String command,
  required BlueprintStep step,
  required Directory cwd,
  required String args,
  bool exitOnStdErr = true,
}) async {
  var seenStdErr = false;
  final String workingDirectory = p
      .canonicalize(step.path != null ? p.join(cwd.path, step.path) : cwd.path);
  final shellSplit = io.shellSplit(args);
  final process = await Process.start(
    command,
    shellSplit,
    workingDirectory: workingDirectory,
    runInShell: true,
  );
  process.stderr.transform(utf8.decoder).listen((str) {
    seenStdErr = true;
    _logger.warning(str.trimRight());
  });
  process.stdout.transform(utf8.decoder).listen((str) {
    _logger.info(str.trimRight());
  });

  final exitCode = await process.exitCode;
  if (exitCode != 0 || exitOnStdErr && seenStdErr) {
    _logger.severe("'$command $args' failed");
    exit(-1);
  }
  return;
}

void _rename({
  required String from,
  required String to,
  required BlueprintStep step,
}) {
  from = p.canonicalize(from);
  to = p.canonicalize(to);
  File(from).renameSync(to);
}

void _cpdir({
  required String from,
  required String to,
  required BlueprintStep step,
}) {
  from = p.canonicalize(from);
  to = p.canonicalize(to);
  if (!FileSystemEntity.isDirectorySync(from)) {
    _logger.warning("Invalid cpdir for '$from': ${step.name}");
  }
  io.copyPathSync(from, to);
}

void _cp({
  required String from,
  required String to,
  required BlueprintStep step,
}) {
  from = p.canonicalize(from);
  to = p.canonicalize(to);
  if (!FileSystemEntity.isFileSync(from)) {
    _logger.warning("Invalid cp for '$from': ${step.name}");
  }
  File(from).copySync(to);
}

void _rmdir(String dir, {required BlueprintStep step}) {
  dir = p.canonicalize(dir);
  if (!FileSystemEntity.isDirectorySync(dir)) {
    _logger.warning("Invalid rmdir for '$dir': ${step.name}");
  }
  Directory(dir).deleteSync(recursive: true);
}

void _mkdir(String dir, {required BlueprintStep step}) {
  p.canonicalize(dir);
  Directory(dir).createSync(recursive: true);
}
