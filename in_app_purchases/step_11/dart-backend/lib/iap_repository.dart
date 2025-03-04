import 'package:googleapis/firestore/v1.dart';

import 'products.dart';

enum IAPSource { googleplay, appstore }

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
      'purchaseDate': Value(
        timestampValue: purchaseDate.toUtc().toIso8601String(),
      ),
      'type': Value(stringValue: type.name),
    };
  }

  Map<String, Value> updateDocument();

  static Purchase fromDocument(Document e) {
    final type = ProductType.values.firstWhere(
      (element) => element.name == e.fields!['type']!.stringValue,
    );
    switch (type) {
      case ProductType.subscription:
        return SubscriptionPurchase(
          iapSource:
              e.fields!['iapSource']!.stringValue == 'googleplay'
                  ? IAPSource.googleplay
                  : IAPSource.appstore,
          orderId: e.fields!['orderId']!.stringValue!,
          productId: e.fields!['productId']!.stringValue!,
          userId: e.fields!['userId']!.stringValue,
          purchaseDate: DateTime.parse(
            e.fields!['purchaseDate']!.timestampValue!,
          ),
          status: SubscriptionStatus.values.firstWhere(
            (element) => element.name == e.fields!['status']!.stringValue,
          ),
          expiryDate:
              DateTime.tryParse(
                e.fields!['expiryDate']?.timestampValue ?? '',
              ) ??
              DateTime.now(),
        );
      case ProductType.nonSubscription:
        return NonSubscriptionPurchase(
          iapSource:
              e.fields!['iapSource']!.stringValue == 'googleplay'
                  ? IAPSource.googleplay
                  : IAPSource.appstore,
          orderId: e.fields!['orderId']!.stringValue!,
          productId: e.fields!['productId']!.stringValue!,
          userId: e.fields!['userId']!.stringValue,
          purchaseDate: DateTime.parse(
            e.fields!['purchaseDate']!.timestampValue!,
          ),
          status: NonSubscriptionStatus.values.firstWhere(
            (element) => element.name == e.fields!['status']!.stringValue,
          ),
        );
    }
  }
}

enum NonSubscriptionStatus { pending, completed, cancelled }

enum SubscriptionStatus { pending, active, expired }

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
    doc.addAll({'status': Value(stringValue: status.name)});
    return doc;
  }

  @override
  Map<String, Value> updateDocument() {
    return {'status': Value(stringValue: status.name)};
  }

  @override
  String toString() {
    return 'NonSubscriptionPurchase { '
        'iapSource: $iapSource, '
        'orderId: $orderId, '
        'productId: $productId, '
        'userId: $userId, '
        'purchaseDate: $purchaseDate, '
        'status: $status, '
        'type: $type '
        '}';
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
      'expiryDate': Value(timestampValue: expiryDate.toUtc().toIso8601String()),
      'status': Value(stringValue: status.name),
    });
    return doc;
  }

  @override
  Map<String, Value> updateDocument() {
    return {'status': Value(stringValue: status.name)};
  }

  @override
  String toString() {
    return 'SubscriptionPurchase { '
        'iapSource: $iapSource, '
        'orderId: $orderId, '
        'productId: $productId, '
        'userId: $userId, '
        'purchaseDate: $purchaseDate, '
        'status: $status, '
        'expiryDate: $expiryDate, '
        'type: $type '
        '}';
  }
}

class IapRepository {
  final FirestoreApi api;
  final String projectId;

  IapRepository(this.api, this.projectId);

  Future<void> createOrUpdatePurchase(Purchase purchaseData) async {
    print('Updating $purchaseData');
    final purchaseId = _purchaseId(purchaseData);
    await api.projects.databases.documents.commit(
      CommitRequest(
        writes: [
          Write(
            update: Document(
              fields: purchaseData.toDocument(),
              name:
                  'projects/$projectId/databases/(default)/documents/purchases/$purchaseId',
            ),
          ),
        ],
      ),
      'projects/$projectId/databases/(default)',
    );
  }

  Future<void> updatePurchase(Purchase purchaseData) async {
    print('Updating $purchaseData');
    final purchaseId = _purchaseId(purchaseData);
    await api.projects.databases.documents.commit(
      CommitRequest(
        writes: [
          Write(
            update: Document(
              fields: purchaseData.updateDocument(),
              name:
                  'projects/$projectId/databases/(default)/documents/purchases/$purchaseId',
            ),
            updateMask: DocumentMask(fieldPaths: ['status']),
          ),
        ],
      ),
      'projects/$projectId/databases/(default)',
    );
  }

  String _purchaseId(Purchase purchaseData) {
    return '${purchaseData.iapSource.name}_${purchaseData.orderId}';
  }

  Future<List<Purchase>> getPurchases() async {
    final list = await api.projects.databases.documents.list(
      'projects/$projectId/databases/(default)/documents',
      'purchases',
    );
    return list.documents!.map((e) => Purchase.fromDocument(e)).toList();
  }
}
