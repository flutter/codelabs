// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:firebase_backend_dart/helpers.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

Future<void> main() async {
  final router = Router();

  router.get('/verifypurchase', (Request request) {
    return Response.ok('test');
  });

  await serveHandler(router);
}
