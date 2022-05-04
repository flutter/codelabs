// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'dart:convert';

import 'package:firebase_backend_dart/google_play_purchase_handler.dart';
import 'package:firebase_backend_dart/helpers.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Future<void> main() async {
  final router = Router();

  final purchaseHandlers = {
    'google_play': GooglePlayPurchaseHandler(),
  };

  router.post('/verifypurchase', (Request request) async {
    final payload = json.decode(await request.readAsString());
    final source = payload['source'] as String;
    final userId = '1234';
    final productData = productDataMap[payload['productId']]!;
    final token = payload['verificationData'] as String;
    final result = await purchaseHandlers[source]!.verifyPurchase(
      userId: userId,
      productData: productData,
      token: token,
    );
    if (result) {
      return Response.ok({
        'verified': true,
      });
    } else {
      return Response.internalServerError();
    }
  });

  await serveHandler(router);
}
