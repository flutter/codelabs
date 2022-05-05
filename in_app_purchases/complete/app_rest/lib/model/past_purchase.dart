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
    case 'NON_SUBSCRIPTION':
      return PurchaseType.subscriptionPurchase;
    case 'SUBSCRIPTION':
      return PurchaseType.nonSubscriptionPurchase;
    default:
      throw ArgumentError.value(type, '$type is not a supported type');
  }
}

Store _storeFromString(String store) {
  switch (store) {
    case 'google_play':
      return Store.googlePlay;
    case 'app_store':
      return Store.appStore;
    default:
      throw ArgumentError.value(store, '$store is not a supported store');
  }
}

Status _statusFromString(String status) {
  switch (status) {
    case 'PENDING':
      return Status.pending;
    case 'COMPLETED':
      return Status.completed;
    case 'ACTIVE':
      return Status.active;
    case 'EXPIRED':
      return Status.expired;
    default:
      throw ArgumentError.value(status, '$status is not a supported status');
  }
}
