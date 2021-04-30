import 'package:flutter_test/flutter_test.dart';

import 'package:dashclicker/main.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

void main() {
  testWidgets('App starts', (WidgetTester tester) async {
    IAPConnection.instance = TestIAPConnection();
    await tester.pumpWidget(MyApp());
    expect(find.text('Tim Sneath'), findsOneWidget);
  });
}

class TestIAPConnection implements InAppPurchaseConnection {
  @override
  Future<bool> buyConsumable(
      {required PurchaseParam purchaseParam, bool autoConsume = true}) {
    return Future.value(false);
  }

  @override
  Future<bool> buyNonConsumable({required PurchaseParam purchaseParam}) {
    return Future.value(false);
  }

  @override
  Future<BillingResultWrapper> completePurchase(PurchaseDetails purchase) {
    return Future.value(BillingResultWrapper(
      debugMessage: 'test connection',
      responseCode: BillingResponse.featureNotSupported,
    ));
  }

  @override
  Future<BillingResultWrapper> consumePurchase(PurchaseDetails purchase) {
    return Future.value(BillingResultWrapper(
      debugMessage: 'test connection',
      responseCode: BillingResponse.featureNotSupported,
    ));
  }

  @override
  Future<bool> isAvailable() {
    return Future.value(false);
  }

  @override
  Future<void> presentCodeRedemptionSheet() {
    return Future.value();
  }

  @override
  // TODO: implement purchaseUpdatedStream
  Stream<List<PurchaseDetails>> get purchaseUpdatedStream =>
      Stream.value(<PurchaseDetails>[]);

  @override
  Future<QueryPurchaseDetailsResponse> queryPastPurchases(
      {String? applicationUserName}) {
    return Future.value(QueryPurchaseDetailsResponse(
      pastPurchases: <PurchaseDetails>[],
    ));
  }

  @override
  Future<ProductDetailsResponse> queryProductDetails(Set<String> identifiers) {
    return Future.value(ProductDetailsResponse(
      productDetails: [],
      notFoundIDs: [],
    ));
  }

  @override
  Future<PurchaseVerificationData?> refreshPurchaseVerificationData() {
    return Future.value(null);
  }
}
