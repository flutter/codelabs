import 'dart:convert';

import 'package:firebase_backend_dart/constants.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:firebase_backend_dart/purchase_handler.dart';
import 'package:googleapis/shared.dart';
import 'package:http/http.dart' as http;

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
    final json = jsonDecode(response.body);
    final status = json['status'];
    if (status == 0) {
      print('Successfully verified purchase');
      return true;
    } else {
      print('Error: Status: $status');
      return false;
    }
  }
}
