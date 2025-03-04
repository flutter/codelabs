import 'dart:async';

import 'package:app_store_server_sdk/app_store_server_sdk.dart';

import 'constants.dart';
import 'iap_repository.dart';
import 'products.dart';
import 'purchase_handler.dart';

class AppStorePurchaseHandler extends PurchaseHandler {
  final IapRepository iapRepository;

  AppStorePurchaseHandler(this.iapRepository);

  final _iTunesAPI = ITunesApi(
    ITunesHttpClient(ITunesEnvironment.sandbox(), loggingEnabled: true),
  );

  @override
  Future<bool> handleNonSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  }) {
    return handleValidation(userId: userId, token: token);
  }

  @override
  Future<bool> handleSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  }) {
    return handleValidation(userId: userId, token: token);
  }

  /// Handle purchase validation.
  Future<bool> handleValidation({
    required String userId,
    required String token,
  }) async {
    print('AppStorePurchaseHandler.handleValidation');
    final response = await _iTunesAPI.verifyReceipt(
      password: appStoreSharedSecret,
      receiptData: token,
    );
    print('response: $response');
    if (response.status == 0) {
      print('Successfully verified purchase');
      final receipts = response.latestReceiptInfo ?? [];
      for (final receipt in receipts) {
        final product = productDataMap[receipt.productId];
        if (product == null) {
          print('Error: Unknown product: ${receipt.productId}');
          continue;
        }
        switch (product.type) {
          case ProductType.nonSubscription:
            await iapRepository.createOrUpdatePurchase(
              NonSubscriptionPurchase(
                userId: userId,
                productId: receipt.productId ?? '',
                iapSource: IAPSource.appstore,
                orderId: receipt.originalTransactionId ?? '',
                purchaseDate: DateTime.fromMillisecondsSinceEpoch(
                  int.parse(receipt.originalPurchaseDateMs ?? '0'),
                ),
                type: product.type,
                status: NonSubscriptionStatus.completed,
              ),
            );
            break;
          case ProductType.subscription:
            await iapRepository.createOrUpdatePurchase(
              SubscriptionPurchase(
                userId: userId,
                productId: receipt.productId ?? '',
                iapSource: IAPSource.appstore,
                orderId: receipt.originalTransactionId ?? '',
                purchaseDate: DateTime.fromMillisecondsSinceEpoch(
                  int.parse(receipt.originalPurchaseDateMs ?? '0'),
                ),
                type: product.type,
                expiryDate: DateTime.fromMillisecondsSinceEpoch(
                  int.parse(receipt.expiresDateMs ?? '0'),
                ),
                status: SubscriptionStatus.active,
              ),
            );
            break;
        }
      }
      return true;
    } else {
      print('Error: Status: ${response.status}');
      return false;
    }
  }
}
