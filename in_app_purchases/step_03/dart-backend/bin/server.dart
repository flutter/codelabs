// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:firebase_backend_dart/helpers.dart';
import 'package:shelf_router/shelf_router.dart';

Future<void> main() async {
  final router = Router();

  // Start service
  await serveHandler(router.call);
}
