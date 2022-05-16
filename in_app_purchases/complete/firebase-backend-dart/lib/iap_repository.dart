import 'package:googleapis/firestore/v1.dart';

import 'products.dart';

enum IAPSource {
  googleplay,
  appstore,
}

abstract class Purchase {
  final IAPSource iapSource;
  final String orderId;
  final String productId;
  final String? userId;
  final DateTime purchaseDate;
  final ProductType type;

  const Purchase({
    required this.iapSource,
    required this.orderId,
    required this.productId,
    required this.userId,
    required this.purchaseDate,
    required this.type,
  });

  Map<String, Value> toDocument() {
    return {
      'iapSource': Value(stringValue: iapSource.name),
      'orderId': Value(stringValue: orderId),
      'productId': Value(stringValue: productId),
      'userId': Value(stringValue: userId),
      'purchaseDate':
          Value(timestampValue: purchaseDate.toUtc().toIso8601String()),
      'type': Value(stringValue: type.name),
    };
  }

  Map<String, Value> updateDocument();
}

enum NonSubscriptionStatus {
  pending,
  completed,
  cancelled,
}

enum SubscriptionStatus { pending, active, expired }

SubscriptionStatus subscriptionStatusFrom(int? state) {
  switch (state) {
    case 0: // Payment pending
      return SubscriptionStatus.pending;
    case 1: // Payment received
    case 2: // Free trial
      return SubscriptionStatus.active;
    case 3: // Pending deferred upgrade/downgrade
      return SubscriptionStatus.pending;
    case null: // Expired or cancelled
    default:
      return SubscriptionStatus.expired;
  }
}

class NonSubscriptionPurchase extends Purchase {
  final NonSubscriptionStatus status;

  NonSubscriptionPurchase({
    required super.iapSource,
    required super.orderId,
    required super.productId,
    required super.userId,
    required super.purchaseDate,
    required this.status,
    super.type = ProductType.nonSubscription,
  });

  @override
  Map<String, Value> toDocument() {
    final doc = super.toDocument();
    doc.addAll({
      'status': Value(stringValue: status.name),
    });
    return doc;
  }

  @override
  Map<String, Value> updateDocument() {
    return {
      'status': Value(stringValue: status.name),
    };
  }
}

class SubscriptionPurchase extends Purchase {
  final SubscriptionStatus status;
  final DateTime expiryDate;

  SubscriptionPurchase({
    required super.iapSource,
    required super.orderId,
    required super.productId,
    required super.userId,
    required super.purchaseDate,
    required this.status,
    required this.expiryDate,
    super.type = ProductType.subscription,
  });

  @override
  Map<String, Value> toDocument() {
    final doc = super.toDocument();
    doc.addAll({
      'status': Value(stringValue: status.name),
    });
    return doc;
  }

  @override
  Map<String, Value> updateDocument() {
    return {
      'status': Value(stringValue: status.name),
    };
  }
}

class IapRepository {
  final FirestoreApi api;
  final String projectId;

  IapRepository(this.api, this.projectId);

  Future<void> createOrUpdatePurchase(Purchase purchaseData) async {
    final purchaseId = _purchaseId(purchaseData);
    await api.projects.databases.documents.commit(
      CommitRequest(
        writes: [
          Write(
            update: Document(
                fields: purchaseData.toDocument(),
                name:
                    'projects/$projectId/databases/(default)/documents/purchases/$purchaseId'),
          ),
        ],
      ),
      'projects/$projectId/databases/(default)',
    );
  }

  Future<void> updatePurchase(Purchase purchaseData) async {
    final purchaseId = _purchaseId(purchaseData);
    await api.projects.databases.documents.commit(
      CommitRequest(
        writes: [
          Write(
            update: Document(
                fields: purchaseData.updateDocument(),
                name:
                    'projects/$projectId/databases/(default)/documents/purchases/$purchaseId'),
          ),
        ],
      ),
      'projects/$projectId/databases/(default)',
    );
  }

  String _purchaseId(Purchase purchaseData) {
    return '${purchaseData.iapSource.name}_${purchaseData.orderId}';
  }
}
