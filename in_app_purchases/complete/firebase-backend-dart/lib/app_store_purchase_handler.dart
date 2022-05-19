import 'dart:convert';

import 'package:http/http.dart' as http;

import 'constants.dart';
import 'products.dart';
import 'purchase_handler.dart';

/// TODO: Unfinished. Cannot be tested without iOS app submitted.
class AppStorePurchaseHandler extends PurchaseHandler {
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

  Future<bool> handleValidation({
    required String userId,
    required String token,
  }) async {
    print('AppStorePurchaseHandler.handleValidation');
    print('userId: $userId');
    print('token: $token');
    // https://developer.apple.com/documentation/appstorereceipts/verifyreceipt
    final url = Uri.parse('https://sandbox.itunes.apple.com/verifyReceipt');
    const headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    final response = await http.post(
      url,
      body: jsonEncode({
        'receipt-data': token,
        'password': appStoreSharedSecret,
      }),
      headers: headers,
    );
    final dynamic json = jsonDecode(response.body);
    final status = json['status'] as int;
    if (status == 0) {
      print('Successfully verified purchase');
      return true;
    } else {
      print('Error: Status: $status');
      return false;
    }
  }
}
