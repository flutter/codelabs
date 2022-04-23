import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:codelab_rebuild/configuration.dart';

void main(List<String> arguments) {
  final sourcePathOrYaml = arguments.single;
  String yamlContent;
  Uri? sourceUri;

  if (FileSystemEntity.isFileSync(sourcePathOrYaml)) {
    yamlContent = File(sourcePathOrYaml).readAsStringSync();
    sourceUri = Uri.parse(sourcePathOrYaml);
  } else {
    yamlContent = sourcePathOrYaml;
  }

  final config = checkedYamlDecode(
    yamlContent,
    (m) => Configuration.fromJson(m!),
    sourceUrl: sourceUri,
  );
  print(config);
}
