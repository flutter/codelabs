import 'package:firebase_backend_dart/google_play_purchase_handler.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:test/test.dart';

import '../bin/server.dart';

void main() {
  test('extractOrderId with subscription suffix', () {
    final orderId = extractOrderId('googleplay_GPA.3391-7354-8735-85865..0');
    expect(orderId, 'googleplay_GPA.3391-7354-8735-85865');
  });

  test('extractOrderId without subscription suffix', () {
    final orderId = extractOrderId('googleplay_GPA.3391-7354-8735-85865');
    expect(orderId, 'googleplay_GPA.3391-7354-8735-85865');
  });

  test('Parse Purchase data should fail', () {
    expect(() => getPurchaseData('{}'), throwsFormatException);
  });

  test('Parse Purchase data should succeed', () {
    final (
      :userId,
      :source,
      productData: ProductData(:productId, :type),
      :token,
    ) = getPurchaseData({
      'userId': 'USER_ID',
      'source': 'google_play',
      'productId': 'dash_consumable_2k',
      'verificationData': 'TOKEN',
    });
    expect(userId, 'USER_ID');
    expect(source, 'google_play');
    expect(productId, 'dash_consumable_2k');
    expect(type, ProductType.nonSubscription);
    expect(token, 'TOKEN');
  });
}
