import 'package:codelab_rebuild/load_config.dart';

void main(List<String> arguments) {
  final sourcePathOrYaml = arguments.single;
  Configuration config = loadConfig(sourcePathOrYaml);
  print(config);
}
