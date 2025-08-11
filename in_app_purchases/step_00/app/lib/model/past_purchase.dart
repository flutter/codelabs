import 'package:flutter/widgets.dart';

import '../constants.dart';

enum PurchaseType {
  subscriptionPurchase,
  nonSubscriptionPurchase;

  static PurchaseType _fromString(String type) {
    return switch (type) {
      'nonSubscription' => PurchaseType.nonSubscriptionPurchase,
      'subscription' => PurchaseType.subscriptionPurchase,
      _ => throw ArgumentError.value(type, '$type is not a supported type'),
    };
  }
}

enum Store {
  googlePlay,
  appStore;

  static Store _fromString(String store) {
    return switch (store) {
      'googleplay' => Store.googlePlay,
      'appstore' => Store.appStore,
      _ => throw ArgumentError.value(store, '$store is not a supported store'),
    };
  }
}

enum Status {
  pending,
  completed,
  active,
  expired;

  static Status _fromString(String status) {
    return switch (status) {
      'pending' => Status.pending,
      'completed' => Status.completed,
      'active' => Status.active,
      'expired' => Status.expired,
      _ => throw ArgumentError.value(
        status,
        '$status is not a supported status',
      ),
    };
  }
}

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
    : type = PurchaseType._fromString(json['type'] as String),
      store = Store._fromString(json['iapSource'] as String),
      orderId = json['orderId'] as String,
      productId = json['productId'] as String,
      purchaseDate = DateTime.now(),
      expiryDate = null,
      status = Status._fromString(json['status'] as String);
}
