import 'dart:io';

import 'package:firebase_backend_dart/constants.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:firebase_backend_dart/purchase_handler.dart';

import 'package:googleapis/androidpublisher/v3.dart' as ap;

import 'iap_repository.dart';

class GooglePlayPurchaseHandler extends PurchaseHandler {
  final ap.AndroidPublisherApi androidPublisher;
  final IapRepository iapRepository;

  GooglePlayPurchaseHandler(
    this.androidPublisher,
    this.iapRepository,
  );

  @override
  Future<bool> handleNonSubscription({
    required String? userId,
    required ProductData productData,
    required String token,
  }) async {
    print(
      'GooglePlayPurchaseHandler.handleNonSubscription'
      '($userId, ${productData.productId}, $token)',
    );

    try {
      // Verify purchase with Google
      final response = await androidPublisher.purchases.products.get(
        androidPackageId,
        productData.productId,
        token,
      );

      // Make sure an order id exists
      if (response.orderId == null) {
        print("Could not handle purchase without order id");
        return false;
      }

      final purchaseData = NonSubscriptionPurchase(
        purchaseDate: DateTime.fromMillisecondsSinceEpoch(
          int.parse(response.purchaseTimeMillis ?? "0"),
        ),
        orderId: response.orderId!,
        productId: productData.productId,
        status: NonSubscriptionStatus.values[response.purchaseState ?? 0],
        userId: userId,
        iapSource: IAPSource.googleplay,
      );

      // Update the database
      if (userId != null) {
        // If we know the userId,
        // update the existing purchase or create it if it does not exist.
        await iapRepository.createOrUpdatePurchase(purchaseData);
      } else {
        // If we do not know the user id, a previous entry must already
        // exist, and thus we'll only update it.
        await iapRepository.updatePurchase(purchaseData);
      }
      return true;
    } on ap.DetailedApiRequestError catch (e) {
      print(
        'Error on handle NonSubscription: $e\n'
        'JSON: ${e.jsonResponse}',
      );
    } catch (e) {
      print('Error on handle NonSubscription: $e\n');
    }
    return false;
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
