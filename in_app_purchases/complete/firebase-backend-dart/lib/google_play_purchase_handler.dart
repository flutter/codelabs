import 'dart:io';

import 'package:firebase_backend_dart/constants.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:firebase_backend_dart/purchase_handler.dart';

import 'package:googleapis/firestore/v1.dart' as fs;
import 'package:googleapis/androidpublisher/v3.dart' as ap;
import 'package:googleapis_auth/auth_io.dart' as auth;

class GooglePlayPurchaseHandler extends PurchaseHandler {
  late ap.AndroidPublisherApi androidPublisher;

  GooglePlayPurchaseHandler() {
    try {
      final scopes = [
        ap.AndroidPublisherApi.androidpublisherScope,
      ];
      final json = File('assets/service-account.json').readAsStringSync();
      final clientCredentials = auth.ServiceAccountCredentials.fromJson(json);
      auth.clientViaServiceAccount(clientCredentials, scopes).then((client) {
        androidPublisher = ap.AndroidPublisherApi(client);
      });
    } catch (e) {
      print('Error creating API: $e');
    }
  }

  @override
  Future<bool> handleNonSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  }) async {
    print(
      'GooglePlayPurchaseHandler.handleNonSubscription'
      '($userId, ${productData.productId}, $token)',
    );

    try {
      final response = await androidPublisher.purchases.products.get(
        androidPackageId,
        productData.productId,
        token,
      );
      print('Response: $response');
    } on ap.DetailedApiRequestError catch (e) {
      print(
        'Error creating GooglePlayPurchaseHandler: $e\n'
        'JSON: ${e.jsonResponse}',
      );
    }

    throw UnimplementedError();
  }

  @override
  Future<bool> handleSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  }) {
    print(
      'GooglePlayPurchaseHandler.handleSubscription'
      '($userId, ${productData.productId}, $token)',
    );
    throw UnimplementedError();
  }
}
