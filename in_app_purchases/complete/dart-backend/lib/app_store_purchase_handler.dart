import 'dart:async';

import 'package:app_store_server_sdk/app_store_server_sdk.dart';

import 'constants.dart';
import 'iap_repository.dart';
import 'products.dart';
import 'purchase_handler.dart';

/// Handles App Store purchases.
/// Uses the ITunes API to validate purchases.
/// Uses the App Store Server SDK to obtain the latest subscription status.
class AppStorePurchaseHandler extends PurchaseHandler {
  final IapRepository iapRepository;
  final AppStoreServerAPI appStoreServerAPI;

  AppStorePurchaseHandler(this.iapRepository, this.appStoreServerAPI) {
    // Poll Subscription status every 10 seconds.
    Timer.periodic(Duration(seconds: 10), (_) {
      _pullStatus();
    });
  }

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

  /// Request the App Store for the latest subscription status.
  /// Updates all App Store subscriptions in the database.
  /// NOTE: This code only handles when a subscription expires as example.
  Future<void> _pullStatus() async {
    print('Polling App Store');
    final purchases = await iapRepository.getPurchases();
    // filter for App Store subscriptions
    final appStoreSubscriptions = purchases.where(
      (element) =>
          element.type == ProductType.subscription &&
          element.iapSource == IAPSource.appstore,
    );
    for (final purchase in appStoreSubscriptions) {
      final status = await appStoreServerAPI.getAllSubscriptionStatuses(
        purchase.orderId,
      );
      // Obtain all subscriptions for the order id.
      for (final subscription in status.data) {
        // Last transaction contains the subscription status.
        for (final transaction in subscription.lastTransactions) {
          final expirationDate = DateTime.fromMillisecondsSinceEpoch(
            transaction.transactionInfo.expiresDate ?? 0,
          );
          // Check if subscription has expired.
          final isExpired = expirationDate.isBefore(DateTime.now());
          print('Expiration Date: $expirationDate - isExpired: $isExpired');
          // Update the subscription status with the new expiration date and status.
          await iapRepository.updatePurchase(
            SubscriptionPurchase(
              userId: null,
              productId: transaction.transactionInfo.productId,
              iapSource: IAPSource.appstore,
              orderId: transaction.originalTransactionId,
              purchaseDate: DateTime.fromMillisecondsSinceEpoch(
                transaction.transactionInfo.originalPurchaseDate,
              ),
              type: ProductType.subscription,
              expiryDate: expirationDate,
              status:
                  isExpired
                      ? SubscriptionStatus.expired
                      : SubscriptionStatus.active,
            ),
          );
        }
      }
    }
  }
}
