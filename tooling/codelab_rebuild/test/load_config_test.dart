import 'package:codelab_rebuild/codelab_rebuild.dart';
import 'package:test/test.dart';

void main() {
  test('loadConfig from simple config', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: Remove generated code.
        command: rm -rf step_00
      - name: Create project.
        command: flutter create cupertino_store
      - name: Configure 
        path: cupertino_store/analysis_options.yaml
        replace-contents: |
          # Copyright 2019 Google LLC
          #
          # Licensed under the Apache License, Version 2.0 (the "License");
          # you may not use this file except in compliance with the License.
          # You may obtain a copy of the License at
          #
          #      https://www.apache.org/licenses/LICENSE-2.0
          #
          # Unless required by applicable law or agreed to in writing, software
          # distributed under the License is distributed on an "AS IS" BASIS,
          # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
          # See the License for the specific language governing permissions and
          # limitations under the License.
          
          include: ../../analysis_options.yaml
      - name: Add dependencies.
        path: cupertino_store
        commands:
          - flutter pub add intl 
          - flutter pub add provider 
          - flutter pub add shrine_images
      - name: Remove the README.md.
        command: rm cupertino_store/README.md
      - name: Remove the Android, Web, and Desktop runners
        path: cupertino_store
        commands:
          - rm -rf android 
          - rm -rf linux 
          - rm -rf macos 
          - rm -rf web 
          - rm -rf windows
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(true));
    expect(config.name, equals('Cupertino Store script'));
    expect(config.steps.length, equals(1));
    expect(config.steps[0].steps.length, equals(6));
    expect(config.steps[0].steps[0].isValid, equals(true));
    expect(config.steps[0].steps[0].name, equals('Remove generated code.'));
    expect(config.steps[0].steps[0].command, equals('rm -rf step_00'));
    expect(config.steps[0].steps[1].isValid, equals(true));
    expect(config.steps[0].steps[2].isValid, equals(true));
    expect(config.steps[0].steps[2].name, equals('Configure'));
    expect(config.steps[0].steps[2].path,
        equals('cupertino_store/analysis_options.yaml'));
    expect(config.steps[0].steps[2].replaceContents, equals('''
# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include: ../../analysis_options.yaml
'''));
    expect(config.steps[0].steps[3].isValid, equals(true));
    expect(config.steps[0].steps[4].isValid, equals(true));
    expect(config.steps[0].steps[5].isValid, equals(true));
    expect(config.steps[0].steps[5].name,
        equals('Remove the Android, Web, and Desktop runners'));
    expect(
      config.steps[0].steps[5].path,
      equals('cupertino_store'),
    );
    expect(
      config.steps[0].steps[5].commands,
      equals([
        'rm -rf android',
        'rm -rf linux',
        'rm -rf macos',
        'rm -rf web',
        'rm -rf windows'
      ]),
    );
  });

  test('Valid base64-contents config', () {
    final input = '''
name: Valid base64-contents config
steps:
  - name: step_00
    steps:
      - name: base64-contents.
        path: some-file.txt
        base64-contents: SGVsbG8sIHdvcmxkIQo=
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(true));
  });

  test('Valid command config', () {
    final input = '''
name: Valid command config
steps:
  - name: step_00
    steps:
      - name: command.
        command: echo 'Hello world!'
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(true));
  });

  test('Valid commands config', () {
    final input = '''
name: Valid commands config
steps:
  - name: step_00
    steps:
      - name: commands.
        commands: 
          - echo 'Hello world!'
          - echo 'Goodbye!'
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(true));
  });

  test('Valid replace-contents config', () {
    final input = '''
name: Valid base64-contents config
steps:
  - name: step_00
    steps:
      - name: replace-contents.
        path: some-file.txt
        replace-contents: Hello world!
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(true));
  });

  test('Valid patch config', () {
    final input = '''
name: Valid patch config
steps:
  - name: step_00
    steps:
      - name: replace-contents.
        path: some-file.txt
        patch: Not actually a delta
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(true));
  });

  test('Invalid config, empty command', () {
    final input = '''
name: Invalid config, empty command
steps:
  - name: step_00
    steps:
      - name: empty command.
        command: 
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(false));
  });

  test('Invalid config, command with patch', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: command with patch.
        command: foo
        patch: not really a patch 
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(false));
  });

  test('Invalid config, command with replace-contents', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: command with replace-contents.
        command: foo
        replace-contents: contents 
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(false));
  });

  test('Invalid config, patch without path', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: patch without path.
        patch: foo
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(false));
  });

  test('Invalid config, replace-contents without path', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: replace-contents without path.
        replace-contents: contents 
''';
    final config = loadConfig(input);
    expect(config.isValid, equals(false));
  });
}
