import 'package:firebase_backend_dart/helpers.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:googleapis/firestore/v1.dart';

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
}

enum NonSubscriptionStatus {
  pending,
  completed,
  cancelled,
}

enum SubscriptionStatus {
  pending,
  active,
  expired,
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
}

class SubscriptionPurchase extends Purchase {
  final SubscriptionStatus status;

  SubscriptionPurchase({
    required super.iapSource,
    required super.orderId,
    required super.productId,
    required super.userId,
    required super.purchaseDate,
    required this.status,
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
                    '/projects/$projectId/databases/(default)/documents/$purchaseId'),
          ),
        ],
      ),
      'projects/$projectId/databases/(default)',
    );
  }

  Future<void> updatePurchase(Purchase purchaseData) async {
    // TODO: Necessary??
    await createOrUpdatePurchase(purchaseData);
  }

  String _purchaseId(Purchase purchaseData) {
    return '${purchaseData.iapSource.name}_${purchaseData.orderId}';
  }
}
