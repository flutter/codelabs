import 'package:flutter/widgets.dart';

import '../constants.dart';

enum PurchaseType { subscriptionPurchase, nonSubscriptionPurchase }

enum Store { googlePlay, appStore }

enum Status { pending, completed, active, expired }

@immutable
class PastPurchase {
  final PurchaseType type;
  final Store store;
  final String orderId;
  final String productId;
  final DateTime purchaseDate;
  final DateTime? expiryDate;
  final Status status;

  String get title {
    return switch (productId) {
      storeKeyConsumable => 'Consumable',
      storeKeySubscription => 'Subscription',
      _ => productId,
    };
  }

  PastPurchase.fromJson(Map<String, dynamic> json)
    : type = _typeFromString(json['type'] as String),
      store = _storeFromString(json['iapSource'] as String),
      orderId = json['orderId'] as String,
      productId = json['productId'] as String,
      purchaseDate = DateTime.now(),
      expiryDate = null,
      status = _statusFromString(json['status'] as String);
}

PurchaseType _typeFromString(String type) {
  return switch (type) {
    'nonSubscription' => PurchaseType.subscriptionPurchase,
    'subscription' => PurchaseType.nonSubscriptionPurchase,
    _ => throw ArgumentError.value(type, '$type is not a supported type'),
  };
}

Store _storeFromString(String store) {
  return switch (store) {
    'googleplay' => Store.googlePlay,
    'appstore' => Store.appStore,
    _ => throw ArgumentError.value(store, '$store is not a supported store'),
  };
}

Status _statusFromString(String status) {
  return switch (status) {
    'pending' => Status.pending,
    'completed' => Status.completed,
    'active' => Status.active,
    'expired' => Status.expired,
    _ => throw ArgumentError.value(status, '$status is not a supported status'),
  };
}
