import 'dart:async';
import 'dart:convert';

import 'package:googleapis/androidpublisher/v3.dart' as ap;
import 'package:googleapis/pubsub/v1.dart' as pubsub;

import 'constants.dart';
import 'iap_repository.dart';
import 'products.dart';
import 'purchase_handler.dart';

class GooglePlayPurchaseHandler extends PurchaseHandler {
  final ap.AndroidPublisherApi androidPublisher;
  final IapRepository iapRepository;
  final pubsub.PubsubApi pubsubApi;

  GooglePlayPurchaseHandler(
    this.androidPublisher,
    this.iapRepository,
    this.pubsubApi,
  ) {
    // Poll messages from Pub/Sub every 10 seconds
    Timer.periodic(Duration(seconds: 10), (_) {
      _pullMessageFromPubSub();
    });
  }

  /// Handle non-subscription purchases (one time purchases).
  ///
  /// Retrieves the purchase status from Google Play and updates
  /// the Firestore Database accordingly.
  @override
  Future<bool> handleNonSubscription({
    required String? userId,
    required ProductData productData,
    required String token,
  }) async {
    print(
      'GooglePlayPurchaseHandler.handleNonSubscription'
      '($userId, ${productData.productId}, ${token.substring(0, 5)}...)',
    );

    try {
      // Verify purchase with Google
      final response = await androidPublisher.purchases.products.get(
        androidPackageId,
        productData.productId,
        token,
      );

      print('Purchases response: ${response.toJson()}');

      // Make sure an order id exists
      if (response.orderId == null) {
        print('Could not handle purchase without order id');
        return false;
      }
      final orderId = response.orderId!;

      final purchaseData = NonSubscriptionPurchase(
        purchaseDate: DateTime.fromMillisecondsSinceEpoch(
          int.parse(response.purchaseTimeMillis ?? '0'),
        ),
        orderId: orderId,
        productId: productData.productId,
        status: NonSubscriptionStatus.values[response.purchaseState ?? 0],
        userId: userId,
        iapSource: IAPSource.googleplay,
      );

      // Update the database
      if (userId != null) {
        // If we know the userId,
        // update the existing purchase or create it if it does not exist.
        await iapRepository.createOrUpdatePurchase(purchaseData);
      } else {
        // If we do not know the user id, a previous entry must already
        // exist, and thus we'll only update it.
        await iapRepository.updatePurchase(purchaseData);
      }
      return true;
    } on ap.DetailedApiRequestError catch (e) {
      print(
        'Error on handle NonSubscription: $e\n'
        'JSON: ${e.jsonResponse}',
      );
    } catch (e) {
      print('Error on handle NonSubscription: $e\n');
    }
    return false;
  }

  /// Handle subscription purchases.
  ///
  /// Retrieves the purchase status from Google Play and updates
  /// the Firestore Database accordingly.
  @override
  Future<bool> handleSubscription({
    required String? userId,
    required ProductData productData,
    required String token,
  }) async {
    print(
      'GooglePlayPurchaseHandler.handleSubscription'
      '($userId, ${productData.productId}, ${token.substring(0, 5)}...)',
    );

    try {
      // Verify purchase with Google
      final response = await androidPublisher.purchases.subscriptions.get(
        androidPackageId,
        productData.productId,
        token,
      );

      print('Subscription response: ${response.toJson()}');

      // Make sure an order id exists
      if (response.orderId == null) {
        print('Could not handle purchase without order id');
        return false;
      }
      final orderId = extractOrderId(response.orderId!);

      final purchaseData = SubscriptionPurchase(
        purchaseDate: DateTime.fromMillisecondsSinceEpoch(
          int.parse(response.startTimeMillis ?? '0'),
        ),
        orderId: orderId,
        productId: productData.productId,
        status: subscriptionStatusFrom(response.paymentState),
        userId: userId,
        iapSource: IAPSource.googleplay,
        expiryDate: DateTime.fromMillisecondsSinceEpoch(
          int.parse(response.expiryTimeMillis ?? '0'),
        ),
      );

      // Update the database
      if (userId != null) {
        // If we know the userId,
        // update the existing purchase or create it if it does not exist.
        await iapRepository.createOrUpdatePurchase(purchaseData);
      } else {
        // If we do not know the user id, a previous entry must already
        // exist, and thus we'll only update it.
        await iapRepository.updatePurchase(purchaseData);
      }
      return true;
    } on ap.DetailedApiRequestError catch (e) {
      print(
        'Error on handle Subscription: $e\n'
        'JSON: ${e.jsonResponse}',
      );
    } catch (e) {
      print('Error on handle Subscription: $e\n');
    }
    return false;
  }

  /// Process messages from Google Play
  /// Called every 10 seconds
  Future<void> _pullMessageFromPubSub() async {
    print('Polling Google Play messages');
    final request = pubsub.PullRequest(
      maxMessages: 1000,
    );
    final topicName =
        'projects/$googlePlayProjectName/subscriptions/$googlePlayPubsubBillingTopic-sub';
    final pullResponse = await pubsubApi.projects.subscriptions.pull(
      request,
      topicName,
    );
    final messages = pullResponse.receivedMessages ?? [];
    for (final message in messages) {
      final data64 = message.message?.data;
      if (data64 != null) {
        await _processMessage(data64, message.ackId);
      }
    }
  }

  Future<void> _processMessage(String data64, String? ackId) async {
    final dataRaw = utf8.decode(base64Decode(data64));
    print('Received data: $dataRaw');
    final dynamic data = jsonDecode(dataRaw);
    if (data['testNotification'] != null) {
      print('Skip test messages');
      if (ackId != null) {
        await _ackMessage(ackId);
      }
      return;
    }
    final dynamic subscriptionNotification = data['subscriptionNotification'];
    final dynamic oneTimeProductNotification =
        data['oneTimeProductNotification'];
    if (subscriptionNotification != null) {
      print('Processing Subscription');
      final subscriptionId =
          subscriptionNotification['subscriptionId'] as String;
      final purchaseToken = subscriptionNotification['purchaseToken'] as String;
      final productData = productDataMap[subscriptionId]!;
      final result = await handleSubscription(
        userId: null,
        productData: productData,
        token: purchaseToken,
      );
      if (result && ackId != null) {
        await _ackMessage(ackId);
      }
    } else if (oneTimeProductNotification != null) {
      print('Processing NonSubscription');
      final sku = oneTimeProductNotification['sku'] as String;
      final purchaseToken =
          oneTimeProductNotification['purchaseToken'] as String;
      final productData = productDataMap[sku]!;
      final result = await handleNonSubscription(
        userId: null,
        productData: productData,
        token: purchaseToken,
      );
      if (result && ackId != null) {
        await _ackMessage(ackId);
      }
    } else {
      print('invalid data');
    }
  }

  /// ACK Messages from Pub/Sub
  Future<void> _ackMessage(String id) async {
    print('ACK Message');
    final request = pubsub.AcknowledgeRequest(
      ackIds: [id],
    );
    final subscriptionName =
        'projects/$googlePlayProjectName/subscriptions/$googlePlayPubsubBillingTopic-sub';
    await pubsubApi.projects.subscriptions.acknowledge(
      request,
      subscriptionName,
    );
  }
}

/// If a subscription suffix is present (..#) extract the orderId.
String extractOrderId(String orderId) {
  final orderIdSplit = orderId.split('..');
  if (orderIdSplit.isNotEmpty) {
    orderId = orderIdSplit[0];
  }
  return orderId;
}
