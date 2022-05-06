import 'dart:io';

import 'package:firebase_backend_dart/constants.dart';
import 'package:firebase_backend_dart/helpers.dart';
import 'package:firebase_backend_dart/products.dart';
import 'package:firebase_backend_dart/purchase_handler.dart';

import 'package:googleapis/androidpublisher/v3.dart' as ap;
import 'package:googleapis/pubsub/v1.dart' as pubsub;

import 'iap_repository.dart';

class GooglePlayPurchaseHandler extends PurchaseHandler {
  final ap.AndroidPublisherApi androidPublisher;
  final IapRepository iapRepository;
  final pubsub.PubsubApi pubsubApi;

  GooglePlayPurchaseHandler(
    this.androidPublisher,
    this.iapRepository,
    this.pubsubApi,
  ) {
    // _pullMessageFromPubSub();
  }

  // TODO: Does not work yet
  // Error:
  // Could not connect to http://metadata.google.internal/.
  // If not running on Google Cloud, one of these environment variables must be set
  // to the target Google Project ID:
  // GCP_PROJECT
  // GCLOUD_PROJECT
  // CLOUDSDK_CORE_PROJECT
  // GOOGLE_CLOUD_PROJECT
  Future<void> _pullMessageFromPubSub() async {
    final request = pubsub.PullRequest(
      maxMessages: 1000,
    );
    final projectId = await currentProjectId();
    final topicName =
        'projects/$projectId/topics/$googlePlayPubsubBillingTopic';
    final pullResponse = await pubsubApi.projects.subscriptions.pull(
      request,
      topicName,
    );
    final messages = pullResponse.receivedMessages;
    print('Received ${messages?.length} messages');
  }

  @override
  Future<bool> handleNonSubscription({
    required String? userId,
    required ProductData productData,
    required String token,
  }) async {
    print(
      'GooglePlayPurchaseHandler.handleNonSubscription'
      '($userId, ${productData.productId}, $token)',
    );

    try {
      // Verify purchase with Google
      final response = await androidPublisher.purchases.products.get(
        androidPackageId,
        productData.productId,
        token,
      );

      // Make sure an order id exists
      if (response.orderId == null) {
        print("Could not handle purchase without order id");
        return false;
      }

      final purchaseData = NonSubscriptionPurchase(
        purchaseDate: DateTime.fromMillisecondsSinceEpoch(
          int.parse(response.purchaseTimeMillis ?? "0"),
        ),
        orderId: response.orderId!,
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

  @override
  Future<bool> handleSubscription({
    required String? userId,
    required ProductData productData,
    required String token,
  }) async {
    print(
      'GooglePlayPurchaseHandler.handleSubscription'
      '($userId, ${productData.productId}, $token)',
    );

    try {
      // Verify purchase with Google
      final response = await androidPublisher.purchases.subscriptions.get(
        androidPackageId,
        productData.productId,
        token,
      );

      // Make sure an order id exists
      if (response.orderId == null) {
        print("Could not handle purchase without order id");
        return false;
      }

      final purchaseData = SubscriptionPurchase(
        purchaseDate: DateTime.fromMillisecondsSinceEpoch(
          int.parse(response.startTimeMillis ?? "0"),
        ),
        orderId: response.orderId!,
        productId: productData.productId,
        status: subscriptionStatusFrom(response.paymentState),
        userId: userId,
        iapSource: IAPSource.googleplay,
        expiryDate: DateTime.fromMillisecondsSinceEpoch(
          int.parse(response.expiryTimeMillis ?? "0"),
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
}
