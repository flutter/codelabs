// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:codelab_rebuild/codelab_rebuild.dart';
import 'package:test/test.dart';

void main() {
  test('Blueprint.load() from simple blueprint', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: Remove generated code.
        rmdir: step_00
      - name: Create project.
        flutter: create cupertino_store
      - name: blueprint
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
      - name: Add intl dependency.
        path: cupertino_store
        flutter: pub add intl 
      - name: Remove the README.md.
        rm: cupertino_store/README.md
      - name: Remove the Android, Web, and Desktop runners
        path: cupertino_store
        rmdirs:
          - android 
          - linux 
          - macos 
          - web 
          - windows
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
    expect(blueprint.name, equals('Cupertino Store script'));
    expect(blueprint.steps.length, equals(1));
    expect(blueprint.steps[0].steps.length, equals(6));
    expect(blueprint.steps[0].steps[0].isValid, equals(true));
    expect(blueprint.steps[0].steps[0].name, equals('Remove generated code.'));
    expect(blueprint.steps[0].steps[0].rmdir, equals('step_00'));
    expect(blueprint.steps[0].steps[1].isValid, equals(true));
    expect(blueprint.steps[0].steps[2].isValid, equals(true));
    expect(blueprint.steps[0].steps[2].name, equals('blueprint'));
    expect(blueprint.steps[0].steps[2].path,
        equals('cupertino_store/analysis_options.yaml'));
    expect(blueprint.steps[0].steps[2].replaceContents, equals('''
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
    expect(blueprint.steps[0].steps[3].isValid, equals(true));
    expect(blueprint.steps[0].steps[4].isValid, equals(true));
    expect(blueprint.steps[0].steps[5].isValid, equals(true));
    expect(blueprint.steps[0].steps[5].name,
        equals('Remove the Android, Web, and Desktop runners'));
    expect(
      blueprint.steps[0].steps[5].path,
      equals('cupertino_store'),
    );
    expect(
      blueprint.steps[0].steps[5].rmdirs,
      equals(['android', 'linux', 'macos', 'web', 'windows']),
    );
  });

  test('Valid base64-contents blueprint', () {
    final input = '''
name: Valid base64-contents blueprint
steps:
  - name: step_00
    steps:
      - name: base64-contents.
        path: some-file.txt
        base64-contents: SGVsbG8sIHdvcmxkIQo=
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });

  test('Valid replace-contents blueprint', () {
    final input = '''
name: Valid base64-contents blueprint
steps:
  - name: step_00
    steps:
      - name: replace-contents.
        path: some-file.txt
        replace-contents: Hello world!
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });

  test('Valid patch blueprint', () {
    final input = '''
name: Valid patch blueprint
steps:
  - name: step_00
    steps:
      - name: replace-contents.
        path: some-file.txt
        patch: Not actually a delta
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });

  test('Valid patch-u blueprint', () {
    final input = '''
name: Valid patch-u blueprint
steps:
  - name: step_00
    steps:
      - name: replace-contents.
        path: some-file.txt
        patch-u: Not actually a delta
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });

  test('Valid patch-c blueprint', () {
    final input = '''
name: Valid patch-c blueprint
steps:
  - name: step_00
    steps:
      - name: replace-contents.
        path: some-file.txt
        patch-c: Not actually a delta
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });

  test('Invalid blueprint, patch without path', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: patch without path.
        patch: foo
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(false));
  });

  test('Invalid blueprint, patch-u without path', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: patch without path.
        patch-u: foo
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(false));
  });

  test('Invalid blueprint, patch-c without path', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: step_00
    steps:
      - name: patch without path.
        patch-c: foo
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(false));
  });

  test('Invalid blueprint, replace-contents without path', () {
    final input = '''
name: replace-contents without path
steps:
  - name: step_00
    steps:
      - name: replace-contents without path.
        replace-contents: contents 
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(false));
  });

  test('Valid sub-step blueprint', () {
    final input = '''
name: Valid sub-step blueprint
steps:
  - name: Steps
    steps:
      - name: Random valid patch
        path: some/dir
        patch: foo
      - name: Sub Steps
        steps: 
          - name: Random valid patch
            path: some/other/dir
            patch: bar
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });

  test('Invalid sub-step blueprint', () {
    final input = '''
name: Invalid sub-step blueprint
steps:
  - name: Steps
    steps:
      - name: Random valid patch
        path: some/dir
        patch: foo
      - name: Sub Steps
        steps: 
          - name: Random valid patch
            path: some/other/dir
            patch: bar
          - name: replace-contents without path.
            replace-contents: contents 
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(false));
  });

  test('valid pod blueprint', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: Rebuild ios/Podfile.lock
    path: adaptive_app/ios
    pod: update
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });

  test('valid rm blueprint', () {
    final input = '''
name: Cupertino Store script
steps:
  - name: valid rm
    rm: foo
''';
    final blueprint = Blueprint.load(input);
    expect(blueprint.isValid, equals(true));
  });
}
