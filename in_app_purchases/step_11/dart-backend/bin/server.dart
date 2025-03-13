// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:app_store_server_sdk/app_store_server_sdk.dart';
import 'package:firebase_backend_dart/app_store_purchase_handler.dart';
import 'package:firebase_backend_dart/constants.dart';
import 'package:firebase_backend_dart/google_play_purchase_handler.dart';
import 'package:firebase_backend_dart/helpers.dart';
import 'package:firebase_backend_dart/iap_repository.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:firebase_backend_dart/purchase_handler.dart';
import 'package:googleapis/androidpublisher/v3.dart' as ap;
import 'package:googleapis/firestore/v1.dart' as fs;
import 'package:googleapis/pubsub/v1.dart' as pubsub;
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

/// Creates the Google Play and Apple Store [PurchaseHandler]
/// and their dependencies
Future<Map<String, PurchaseHandler>> _createPurchaseHandlers() async {
  // Configure Android Publisher API access
  final serviceAccountGooglePlay =
      File('assets/service-account-google-play.json').readAsStringSync();
  final clientCredentialsGooglePlay = auth.ServiceAccountCredentials.fromJson(
    serviceAccountGooglePlay,
  );
  final clientGooglePlay = await auth
      .clientViaServiceAccount(clientCredentialsGooglePlay, [
        ap.AndroidPublisherApi.androidpublisherScope,
        pubsub.PubsubApi.cloudPlatformScope,
      ]);
  final androidPublisher = ap.AndroidPublisherApi(clientGooglePlay);

  // Pub/Sub API to receive on purchase events from Google Play
  final pubsubApi = pubsub.PubsubApi(clientGooglePlay);

  // Configure Firestore API access
  final serviceAccountFirebase =
      File('assets/service-account-firebase.json').readAsStringSync();
  final clientCredentialsFirebase = auth.ServiceAccountCredentials.fromJson(
    serviceAccountFirebase,
  );
  final clientFirebase = await auth.clientViaServiceAccount(
    clientCredentialsFirebase,
    [fs.FirestoreApi.cloudPlatformScope],
  );
  final firestoreApi = fs.FirestoreApi(clientFirebase);
  final dynamic json = jsonDecode(serviceAccountFirebase);
  final projectId = json['project_id'] as String;
  final iapRepository = IapRepository(firestoreApi, projectId);

  final subscriptionKeyAppStore =
      File('assets/SubscriptionKey.p8').readAsStringSync();

  // Configure Apple Store API access
  var appStoreEnvironment = AppStoreEnvironment.sandbox(
    bundleId: bundleId,
    issuerId: appStoreIssuerId,
    keyId: appStoreKeyId,
    privateKey: subscriptionKeyAppStore,
  );

  // Stored token for Apple Store API access, if available
  final file = File('assets/appstore.token');
  String? appStoreToken;
  if (file.existsSync() && file.lengthSync() > 0) {
    appStoreToken = file.readAsStringSync();
  }

  final appStoreServerAPI = AppStoreServerAPI(
    AppStoreServerHttpClient(
      appStoreEnvironment,
      jwt: appStoreToken,
      jwtTokenUpdatedCallback: (token) {
        file.writeAsStringSync(token);
      },
    ),
  );

  return {
    'google_play': GooglePlayPurchaseHandler(
      androidPublisher,
      iapRepository,
      pubsubApi,
    ),
    'app_store': AppStorePurchaseHandler(iapRepository, appStoreServerAPI),
  };
}

Future<void> main() async {
  final router = Router();

  final purchaseHandlers = await _createPurchaseHandlers();

  /// Warning: This endpoint has no security
  /// and does not implement user authentication.
  /// Production applications should implement authentication.
  // ignore: avoid_types_on_closure_parameters
  router.post('/verifypurchase', (Request request) async {
    final dynamic payload = json.decode(await request.readAsString());

    // NOTE: userId should be obtained using authentication methods.
    // source from PurchaseDetails.verificationData.source
    // productData product data based on the productId
    // token from PurchaseDetails.verificationData.serverVerificationData
    final (:userId, :source, :productData, :token) = getPurchaseData(payload);

    // Will call to verifyPurchase on
    // [GooglePlayPurchaseHandler] or [AppleStorePurchaseHandler]
    final result = await purchaseHandlers[source]!.verifyPurchase(
      userId: userId,
      productData: productData,
      token: token,
    );

    if (result) {
      // Note: Better success response recommended
      return Response.ok('all good!');
    } else {
      // Note: Better error handling recommended
      return Response.internalServerError();
    }
  });

  // Start service
  await serveHandler(router.call);
}

({String userId, String source, ProductData productData, String token})
getPurchaseData(dynamic payload) {
  if (payload case {
    'userId': String userId,
    'source': String source,
    'productId': String productId,
    'verificationData': String token,
  }) {
    return (
      userId: userId,
      source: source,
      productData: productDataMap[productId]!,
      token: token,
    );
  } else {
    throw const FormatException('Unexpected JSON');
  }
}
