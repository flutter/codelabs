import {PurchaseHandler} from "./purchase-handler";
import {ProductData, productDataMap} from "./products";
import {
  ANDROID_PACKAGE_ID,
  CLOUD_REGION,
  GOOGLE_PLAY_PUBSUB_BILLING_TOPIC,
} from "./constants";
import {GoogleAuth} from "google-auth-library";
import {androidpublisher_v3 as AndroidPublisherApi} from "googleapis";
import credentials from "./assets/service-account.json";
import {
  IapRepository, NonSubscriptionPurchase,
  NonSubscriptionStatus, Purchase, SubscriptionPurchase,
  SubscriptionStatus,
} from "./iap.repository";
import {firestore} from "firebase-admin/lib/firestore";
import * as Functions from "firebase-functions";
const functions = Functions.region(CLOUD_REGION);

export class GooglePlayPurchaseHandler extends PurchaseHandler {
  private androidPublisher: AndroidPublisherApi.Androidpublisher;

  constructor(private iapRepository: IapRepository) {
    super();
    this.androidPublisher = new AndroidPublisherApi.Androidpublisher({
      auth: new GoogleAuth(
          {
            credentials,
            scopes: ["https://www.googleapis.com/auth/androidpublisher"],
          }),
    });
  }

  async handleNonSubscription(
      userId: string | null,
      productData: ProductData,
      token: string,
  ): Promise<boolean> {
    try {
      // Verify purchase with Google
      const response = await this.androidPublisher.purchases.products.get(
          {
            packageName: ANDROID_PACKAGE_ID,
            productId: productData.productId,
            token,
          },
      );
      // Make sure an order id exists
      if (!response.data.orderId) {
        console.error("Could not handle purchase without order id");
        return false;
      }
      // Construct purchase data for db updates
      const purchaseData: Omit<NonSubscriptionPurchase, "userId"> =
          {
            type: "NON_SUBSCRIPTION",
            iapSource: "google_play",
            orderId: response.data.orderId,
            productId: productData.productId,
            purchaseDate: firestore.Timestamp.fromMillis(parseInt(response.data.purchaseTimeMillis ?? "0", 10)),
            status: [
              "COMPLETED",
              "CANCELLED",
              "PENDING",
            ][response.data.purchaseState ?? 0] as NonSubscriptionStatus,
          };
      // Update the database
      try {
        if (userId) {
        // If we know the userId,
        // update the existing purchase or create it if it does not exist.
          await this.iapRepository
              .createOrUpdatePurchase({
                ...purchaseData,
                userId,
              } as Purchase);
        } else {
        // If we do not know the user id, a previous entry must already
        // exist, and thus we'll only update it.
          await this.iapRepository.updatePurchase(purchaseData);
        }
      } catch (e) {
        console.log("Could not create or update purchase", {orderId: response.data.orderId, productId: productData.productId});
      }
      return true;
    } catch (e) {
      console.error(e);
      return false;
    }
  }

  async handleSubscription(
      userId: string | null,
      productData: ProductData,
      token: string,
  ): Promise<boolean> {
    try {
      // Verify the purchase with Google
      const response = await this.androidPublisher.purchases.subscriptions.get(
          {
            packageName: ANDROID_PACKAGE_ID,
            subscriptionId: productData.productId,
            token,
          },
      );
      // Make sure an order id exists
      if (!response.data.orderId) {
        console.error("Could not handle purchase without order id");
        return false;
      }
      // If a subscription suffix is present (..#) extract the orderId.
      let orderId = response.data.orderId;
      const orderIdMatch = /^(.+)?[.]{2}[0-9]+$/g.exec(orderId);
      if (orderIdMatch) {
        orderId = orderIdMatch[1];
      }
      console.log({
        rawOrderId: response.data.orderId,
        newOrderId: orderId,
      });
      // Construct purchase data for db updates
      const purchaseData: Omit<SubscriptionPurchase, "userId"> = {
        type: "SUBSCRIPTION",
        iapSource: "google_play",
        orderId: orderId,
        productId: productData.productId,
        purchaseDate: firestore.Timestamp.fromMillis(parseInt(response.data.startTimeMillis ?? "0", 10)),
        expiryDate: firestore.Timestamp.fromMillis(parseInt(response.data.expiryTimeMillis ?? "0", 10)),
        status: [
          "PENDING", // Payment pending
          "ACTIVE", // Payment received
          "ACTIVE", // Free trial
          "PENDING", // Pending deferred upgrade/downgrade
          "EXPIRED", // Expired or cancelled
        ][response.data.paymentState ?? 4] as SubscriptionStatus,
      };
      try {
        if (userId) {
          // If we know the userId,
          // update the existing purchase or create it if it does not exist.
          await this.iapRepository
              .createOrUpdatePurchase({
                ...purchaseData,
                userId,
              } as Purchase);
        } else {
          // If we do not know the user id, a previous entry must already
          // exist, and thus we'll only update it.
          await this.iapRepository.updatePurchase(purchaseData);
        }
      } catch (e) {
        console.log("Could not create or update purchase", {orderId, productId: productData.productId});
      }
      return true;
    } catch (e) {
      console.error(e);
      return false;
    }
  }

  handleServerEvent = functions.pubsub.topic(GOOGLE_PLAY_PUBSUB_BILLING_TOPIC)
      .onPublish(async (message) => {
        // Define the event
        // https://developer.android.com/google/play/billing/rtdn-reference
        type GooglePlayOneTimeProductNotification = {
          "version": string;
          "notificationType": number;
          "purchaseToken": string;
          "sku": string;
        }
        type GooglePlaySubscriptionNotification = {
          "version": string;
          "notificationType": number;
          "purchaseToken": string;
          "subscriptionId": string;
        }
        type GooglePlayTestNotification = {
          "version": string;
        }
        type GooglePlayBillingEvent = {
          "version": string;
          "packageName": string;
          "eventTimeMillis": number;
          "oneTimeProductNotification": GooglePlayOneTimeProductNotification;
          "subscriptionNotification": GooglePlaySubscriptionNotification;
          "testNotification": GooglePlayTestNotification;
        }
        let event: GooglePlayBillingEvent;
        // Parse the event data
        try {
          event = JSON.parse(new Buffer(message.data, "base64").toString("ascii"));
        } catch (e) {
          console.error("Could not parse Google Play billing event", e);
          return;
        }
        // Skip test events
        if (event.testNotification) return;
        // Extract event data
        const {purchaseToken, subscriptionId, sku} = {
          ...event.subscriptionNotification,
          ...event.oneTimeProductNotification,
        };
        // Get the product for this event
        const productData = productDataMap[subscriptionId ?? sku];
        // Skip products that are unknown
        if (!productData) return;
        // Skip products that do not match the notification type
        const notificationType = subscriptionId ? "SUBSCRIPTION" : sku ? "NON_SUBSCRIPTION" : null;
        if (productData.type !== notificationType) return;
        // Handle notifications
        switch (notificationType) {
          case "SUBSCRIPTION":
            await this.handleSubscription(null, productData, purchaseToken);
            break;
          case "NON_SUBSCRIPTION":
            await this.handleNonSubscription(null, productData, purchaseToken);
            break;
        }
      });
}
