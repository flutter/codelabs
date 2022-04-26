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
        exec: rm -rf step_00
      - name: Create project.
        exec: flutter create cupertino_store
      - name: Configure 
        file: cupertino_store/analysis_options.yaml
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
        exec: |
          cd cupertino_store 
          flutter pub add intl 
          flutter pub add provider 
          flutter pub add shrine_images
      - name: Remove the README.md.
        exec: rm cupertino_store/README.md
      - name: Remove the Android, Web, and Desktop runners
        exec: |
          rm -rf cupertino_store/android 
          rm -rf cupertino_store/linux 
          rm -rf cupertino_store/macos 
          rm -rf cupertino_store/web 
          rm -rf cupertino_store/windows
''';
    final config = loadConfig(input);
    expect(config.name, equals('Cupertino Store script'));
    expect(config.steps.length, equals(1));
    expect(config.steps[0].steps!.length, equals(6));
    expect(config.steps[0].steps![0].name, equals('Remove generated code.'));
    expect(config.steps[0].steps![0].exec, equals('rm -rf step_00'));
    expect(config.steps[0].steps![2].name, equals('Configure'));
    expect(config.steps[0].steps![2].file,
        equals('cupertino_store/analysis_options.yaml'));
    expect(config.steps[0].steps![2].replaceContents, equals('''
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
    expect(config.steps[0].steps![5].name,
        equals('Remove the Android, Web, and Desktop runners'));
    expect(
      config.steps[0].steps![5].exec,
      equals('''
rm -rf cupertino_store/android 
rm -rf cupertino_store/linux 
rm -rf cupertino_store/macos 
rm -rf cupertino_store/web 
rm -rf cupertino_store/windows
'''),
    );
  });
}
