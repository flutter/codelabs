import 'package:codelab_rebuild/codelab_rebuild.dart';
import 'package:logging/logging.dart';

void main(List<String> arguments) {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  final logger = Logger('main');
  final sourcePathOrYaml = arguments.single;

  Configuration config = loadConfig(sourcePathOrYaml);
  logger.info(config);
}
