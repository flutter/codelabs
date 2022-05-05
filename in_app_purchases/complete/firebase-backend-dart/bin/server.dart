// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'dart:convert';
import 'dart:io';

import 'package:firebase_backend_dart/google_play_purchase_handler.dart';
import 'package:firebase_backend_dart/helpers.dart';
import 'package:firebase_backend_dart/iap_repository.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:firebase_backend_dart/purchase_handler.dart';
import 'package:googleapis/firestore/v1.dart' as fs;
import 'package:googleapis/androidpublisher/v3.dart' as ap;
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Future<Map<String, PurchaseHandler>> _createPurchaseHandlers() async {
  // Configure Android Publisher API access
  final serviceAccountGooglePlay = File('assets/service-account-google-play.json').readAsStringSync();
  final clientCredentialsGooglePlay = auth.ServiceAccountCredentials.fromJson(serviceAccountGooglePlay);
  final clientGooglePlay = await auth.clientViaServiceAccount(clientCredentialsGooglePlay, [
    ap.AndroidPublisherApi.androidpublisherScope,
  ]);
  final androidPublisher = ap.AndroidPublisherApi(clientGooglePlay);

  // Configure Firestore API access
  final serviceAccountFirebase = File('assets/service-account-firebase.json').readAsStringSync();
  final clientCredentialsFirebase = auth.ServiceAccountCredentials.fromJson(serviceAccountFirebase);
  final clientFirebase = await auth.clientViaServiceAccount(clientCredentialsFirebase, [
    fs.FirestoreApi.cloudPlatformScope,
  ]);
  final firestoreApi = fs.FirestoreApi(clientFirebase);
  final json = jsonDecode(serviceAccountFirebase);
  final projectId = json['project_id'];
  final iapRepository = IapRepository(firestoreApi, projectId);

  return {
    'google_play': GooglePlayPurchaseHandler(androidPublisher, iapRepository),
  };
}

Future<void> main() async {
  final router = Router();

  final purchaseHandlers = await _createPurchaseHandlers();

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
      return Response.ok('all good');
    } else {
      return Response.internalServerError();
    }
  });

  await serveHandler(router);
}
