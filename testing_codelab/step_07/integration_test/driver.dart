// Copyright 2021 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Fix for integration_test in https://github.com/flutter/flutter/pull/75074
// ignore: import_of_legacy_library_into_null_safe
import 'package:integration_test/integration_test_driver.dart';

Future<void> main() => integrationDriver();
