import 'package:codelab_rebuild/load_config.dart';
import 'package:test/test.dart';

void main() {
  test('loadConfig from simple config', () {
    final input = '''
name: foo
count: 10
''';
    final config = loadConfig(input);
    expect(config.name, equals('foo'));
    expect(config.count, equals(10));
  });
}
