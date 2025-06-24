import 'dart:io';

import 'package:path/path.dart' as path;

import 'blueprint.dart';

Future<void> regenerateCodelabRebuildMdFromBlueprint(
  Directory cwd,
  Blueprint blueprint,
) async {
  if (blueprint.generateMarkdown != true) return;

  final buff = StringBuffer();

  buff.writeln('# ${blueprint.name}');
  buff.writeln();

  for (final step in blueprint.steps) {
    _handleStep(step, buff, 2);
  }

  await File(
    path.join(cwd.path, 'codelab_rebuild.md'),
  ).writeAsString(buff.toString(), flush: true);
}

void _handleStep(BlueprintStep step, StringBuffer buff, int depth) {
  // Skip certain steps
  if (step.rmdir != null || step.stripLinesContaining != null) return;

  buff.writeln('${'#' * depth} ${step.name}');

  if (step.steps.length > 1) {
    for (final subStep in step.steps) {
      _handleStep(subStep, buff, depth + 1);
    }
    return;
  }

  final flutter = step.flutter;
  if (flutter != null) {
    buff.write('''
Run the following Flutter command:

```console
\$ flutter $flutter
```
      ''');
    return;
  }

  final dart = step.dart;
  if (dart != null) {
    buff.write('''
Run the following Dart command:

```console
\$ dart $dart
```
      ''');
    return;
  }
}
