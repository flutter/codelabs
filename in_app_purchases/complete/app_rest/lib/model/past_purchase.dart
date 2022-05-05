import 'package:flutter/widgets.dart';

import '../constants.dart';

enum PurchaseType {
  subscriptionPurchase,
  nonSubscriptionPurchase,
}

enum Store {
  googlePlay,
  appStore,
}

enum Status {
  pending,
  completed,
  active,
  expired,
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
    switch (productId) {
      case storeKeyConsumable:
        return 'Consumable';
      case storeKeySubscription:
        return 'Subscription';
      default:
        return productId;
    }
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
  switch (type) {
    case 'nonSubscription':
      return PurchaseType.subscriptionPurchase;
    case 'subscription':
      return PurchaseType.nonSubscriptionPurchase;
    default:
      throw ArgumentError.value(type, '$type is not a supported type');
  }
}

Store _storeFromString(String store) {
  switch (store) {
    case 'googleplay':
      return Store.googlePlay;
    case 'appStore':
      return Store.appStore;
    default:
      throw ArgumentError.value(store, '$store is not a supported store');
  }
}

Status _statusFromString(String status) {
  switch (status) {
    case 'pending':
      return Status.pending;
    case 'completed':
      return Status.completed;
    case 'active':
      return Status.active;
    case 'expired':
      return Status.expired;
    default:
      throw ArgumentError.value(status, '$status is not a supported status');
  }
}
