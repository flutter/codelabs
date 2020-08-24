// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Testing App State Management Tests', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('Verifying add method', () async {
      await driver.requestData('ADD');
      await driver.waitFor(find.text('Item 30'));
    });

    test('Verifying remove method', () async {
      await driver.requestData('REMOVE');
      await driver.waitForAbsent(find.text('Item 30'));
    });
  });
}
