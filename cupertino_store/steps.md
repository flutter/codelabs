# Cupertino Store script

## `step_00`

Remove generated code.

```console
$ rm -rf step_00
```

Create project.

```console
$ flutter create cupertino_store
```

Replace `cupertino_store/analysis_options.yaml` with the following content.

```yaml
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

include: package:flutter_lints/flutter.yaml

analyzer:
  strong-mode:
    implicit-casts: false
    implicit-dynamic: false

linter:
  rules:
    avoid_print: false
    directives_ordering: true
    prefer_single_quotes: true
    sort_pub_dependencies: true
```

Add dependencies.

```console
$ cd cupertino_store && \
  flutter pub add intl && \
  flutter pub add provider && \
  flutter pub add shrine_images && \
  cd ..
```

Prepend the copyright notice, and append the following to `cupertino_store/pubspec.yaml`.

```yaml
  assets:
    - packages/shrine_images/0-0.jpg
    - packages/shrine_images/1-0.jpg
    - packages/shrine_images/2-0.jpg
    - packages/shrine_images/3-0.jpg
    - packages/shrine_images/4-0.jpg
    - packages/shrine_images/5-0.jpg
    - packages/shrine_images/6-0.jpg
    - packages/shrine_images/7-0.jpg
    - packages/shrine_images/8-0.jpg
    - packages/shrine_images/9-0.jpg
    - packages/shrine_images/10-0.jpg
    - packages/shrine_images/11-0.jpg
    - packages/shrine_images/12-0.jpg
    - packages/shrine_images/13-0.jpg
    - packages/shrine_images/14-0.jpg
    - packages/shrine_images/15-0.jpg
    - packages/shrine_images/16-0.jpg
    - packages/shrine_images/17-0.jpg
    - packages/shrine_images/18-0.jpg
    - packages/shrine_images/19-0.jpg
    - packages/shrine_images/20-0.jpg
    - packages/shrine_images/21-0.jpg
    - packages/shrine_images/22-0.jpg
    - packages/shrine_images/23-0.jpg
    - packages/shrine_images/24-0.jpg
    - packages/shrine_images/25-0.jpg
    - packages/shrine_images/26-0.jpg
    - packages/shrine_images/27-0.jpg
    - packages/shrine_images/28-0.jpg
    - packages/shrine_images/29-0.jpg
    - packages/shrine_images/30-0.jpg
    - packages/shrine_images/31-0.jpg
    - packages/shrine_images/32-0.jpg
    - packages/shrine_images/33-0.jpg
    - packages/shrine_images/34-0.jpg
    - packages/shrine_images/35-0.jpg
    - packages/shrine_images/36-0.jpg
    - packages/shrine_images/37-0.jpg
```

Remove the `README.md`.

```console
$ rm cupertino_store/README.md
```

Remove the Android, Web, and Desktop runners

```console
$ rm -rf cupertino_store/android && \
  rm -rf cupertino_store/linux && \
  rm -rf cupertino_store/macos && \
  rm -rf cupertino_store/web && \
  rm -rf cupertino_store/windows
```

Create `cupertino_store/lib/app.dart` with the following content.

```dart
// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CupertinoStoreApp extends StatelessWidget {
  const CupertinoStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoStoreHomePage(),
    );
  }
}

class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Store'),
      ),
      child: SizedBox(),
    );
  }
}
```

Replace `cupertino_store/lib/main.dart` with the following content.

```dart
// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/cupertino.dart';

import 'app.dart';

void main() {
  return runApp(const CupertinoStoreApp());
}
```

Create `cupertino_store/lib/styles.dart` with the following content.

```dart
// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productRowItemPrice = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle deliveryTimeLabel = TextStyle(
    color: Color(0xFFC2C2C2),
    fontWeight: FontWeight.w300,
  );

  static const TextStyle deliveryTime = TextStyle(
    color: CupertinoColors.inactiveGray,
  );

  static const Color productRowDivider = Color(0xFFD9D9D9);

  static const Color scaffoldBackground = Color(0xfff0f0f0);

  static const Color searchBackground = Color(0xffe0e0e0);

  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1);

  static const Color searchIconColor = Color.fromRGBO(128, 128, 128, 1);
}
```

Replace the contents of `cupertino_store/test/widget_test.dart` with the following.

```dart
// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:cupertino_store/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (tester) async {
    await tester.pumpWidget(const CupertinoStoreApp());
    expect(find.text('Cupertino Store'), findsOneWidget);
  });
}
```

Copy content into `step_00`.

```console
$ cp -R cupertino_store step_00
```

## `step_01`

Remove generated code.

```console
$ rm -rf step_01
```

Apply the following diff to `cupertino_store/test/widget_test.dart`

```diff
15a16
> import 'package:cupertino_store/model/app_state_model.dart';
16a18
> import 'package:provider/provider.dart';
20,21c22,30
<     await tester.pumpWidget(const CupertinoStoreApp());
<     expect(find.text('Cupertino Store'), findsOneWidget);
---
>     await tester.pumpWidget(
>       ChangeNotifierProvider<AppStateModel>(
>         create: (context) => AppStateModel()..loadProducts(),
>         child: const CupertinoStoreApp(),
>       ),
>     );
>     expect(find.text('Products'), findsOneWidget);
>     expect(find.text('Search'), findsOneWidget);
>     expect(find.text('Cart'), findsOneWidget);
```

Copy content into `step_01`.

```console
$ cp -R cupertino_store step_01
```

## Tidyup

```console
$ rm -rf cupertino_store
```