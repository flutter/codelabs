import 'products.dart';

/// Generic purchase handler,
/// must be implemented for Google Play and Apple Store
abstract class PurchaseHandler {
  /// Verify if purchase is valid and update the database
  Future<bool> verifyPurchase({
    required String userId,
    required ProductData productData,
    required String token,
  }) async {
    switch (productData.type) {
      case ProductType.subscription:
        return handleSubscription(
          userId: userId,
          productData: productData,
          token: token,
        );
      case ProductType.nonSubscription:
        return handleNonSubscription(
          userId: userId,
          productData: productData,
          token: token,
        );
    }
  }

  /// Verify if non-subscription purchase (aka consumable) is valid
  /// and update the database
  Future<bool> handleNonSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  });

  /// Verify if subscription purchase (aka non-consumable) is valid
  /// and update the database
  Future<bool> handleSubscription({
    required String userId,
    required ProductData productData,
    required String token,
  });
}
