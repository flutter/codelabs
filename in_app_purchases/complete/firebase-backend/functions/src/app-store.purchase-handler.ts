import {PurchaseHandler} from "./purchase-handler";
import {ProductData, productDataMap} from "./products";
import * as appleReceiptVerify from "node-apple-receipt-verify";
import {APP_STORE_SHARED_SECRET, CLOUD_REGION} from "./constants";
import {IapRepository} from "./iap.repository";
import {firestore} from "firebase-admin/lib/firestore";
import * as Functions from "firebase-functions";
import camelCaseKeys from "camelcase-keys";
import Timestamp = firestore.Timestamp;
import {groupBy} from "lodash";

// Add typings for missing property in library interface.
declare module "node-apple-receipt-verify" {
  interface PurchasedProducts {
    originalTransactionId: string;
  }
}

const functions = Functions.region(CLOUD_REGION);

export class AppStorePurchaseHandler extends PurchaseHandler {
  constructor(private iapRepository: IapRepository) {
    super();
    appleReceiptVerify.config({
      verbose: false,
      secret: APP_STORE_SHARED_SECRET,
      extended: true,
      environment: ["sandbox"], // Optional, defaults to ['production'],
      excludeOldTransactions: true,
    });
  }

  async handleNonSubscription(
      userId: string,
      productData: ProductData,
      token: string,
  ): Promise<boolean> {
    return this.handleValidation(userId, token);
  }

  async handleSubscription(
      userId: string,
      productData: ProductData,
      token: string,
  ): Promise<boolean> {
    return this.handleValidation(userId, token);
  }

  private async handleValidation(
      userId: string,
      token: string,
  ): Promise<boolean> {
    // Validate receipt and fetch the products
    let products: appleReceiptVerify.PurchasedProducts[];
    try {
      products = await appleReceiptVerify.validate({receipt: token});
    } catch (e) {
      if (e instanceof appleReceiptVerify.EmptyError) {
        // Receipt is valid but it is now empty.
        console.warn(
            "Received valid empty receipt");
        return true;
      } else if (e instanceof
          appleReceiptVerify.ServiceUnavailableError) {
        console.warn(
            "App store is currently unavailable, could not validate");
        // Handle app store services not being available
        return false;
      }
      return false;
    }
    // Process the received products
    for (const product of products) {
      // Skip processing the product if it is unknown
      const productData = productDataMap[product.productId];
      if (!productData) continue;
      // Process the product
      switch (productData.type) {
        case "SUBSCRIPTION":
          await this.iapRepository.createOrUpdatePurchase({
            type: productData.type,
            iapSource: "app_store",
            orderId: product.originalTransactionId,
            productId: product.productId,
            userId,
            purchaseDate: firestore.Timestamp.fromMillis(product.purchaseDate),
            expiryDate: firestore.Timestamp.fromMillis(
                product.expirationDate ?? 0,
            ),
            status: (product.expirationDate ?? 0) <= Date.now() ? "EXPIRED" : "ACTIVE",
          });
          break;
        case "NON_SUBSCRIPTION":
          await this.iapRepository.createOrUpdatePurchase({
            type: productData.type,
            iapSource: "app_store",
            orderId: product.originalTransactionId,
            productId: product.productId,
            userId,
            purchaseDate: firestore.Timestamp.fromMillis(product.purchaseDate),
            status: "COMPLETED",
          });
          break;
      }
    }
    return true;
  }

  handleServerEvent = functions.https.onRequest(async (
      req,
      res,
  ) => {
    // eslint-disable-next-line @typescript-eslint/no-var-requires
    type ReceiptInfo = {
      productId: string;
      expiresDateMs: string;
      originalTransactionId: string;
    };
    const eventData: {
      notificationType: "CANCEL" | "DID_CHANGE_RENEWAL_PREF" | "DID_CHANGE_RENEWAL_STATUS" | "DID_FAIL_TO_RENEW" | "DID_RECOVER" | "DID_RENEW" | "INITIAL_BUY" | "INTERACTIVE_RENEWAL" | "PRICE_INCREASE_CONSENT" | "REFUND" | "REVOKE";
      password: string;
      environment: "Sandbox" | "PROD",
      unifiedReceipt: {
        "environment": "Sandbox" | "Production",
        latestReceiptInfo: Array<ReceiptInfo>,
      };
    } = camelCaseKeys(req.body, {deep: true});
    // Decline events where the password does not match the shared secret
    if (eventData.password !== APP_STORE_SHARED_SECRET) {
      res.sendStatus(403);
      return;
    }
    // Only process events where expiration changes are likely to occur
    if (!["CANCEL", "DID_RENEW", "DID_FAIL_TO_RENEW", "DID_CHANGE_RENEWAL_STATUS",
      "INITIAL_BUY", "INTERACTIVE_RENEWAL", "REFUND",
      "REVOKE"].includes(eventData.notificationType)) {
      res.sendStatus(200);
      return;
    }
    // Find latest receipt for each original transaction
    const latestReceipts: ReceiptInfo[] = Object.values(
        groupBy(eventData.unifiedReceipt.latestReceiptInfo, "originalTransactionId")
    ).map((group) => group
        .reduce((acc: ReceiptInfo, e: ReceiptInfo) =>
                    (!acc || e.expiresDateMs >= acc.expiresDateMs) ? e : acc
        )
    );
    // Process receipt items
    for (const iap of latestReceipts) {
      const productData = productDataMap[iap.productId];
      // Skip products that are unknown
      if (!productData) continue;
      // Update products in firestore
      switch (productData.type) {
        case "SUBSCRIPTION":
          try {
            await this.iapRepository.updatePurchase({
              iapSource: "app_store",
              orderId: iap.originalTransactionId,
              expiryDate: Timestamp.fromMillis(parseInt(iap.expiresDateMs, 10)),
              status: Date.now() >= parseInt(iap.expiresDateMs, 10) ? "EXPIRED" : "ACTIVE",
            });
          } catch (e) {
            console.log("Could not patch purchase", {originalTransactionId: iap.originalTransactionId, productId: iap.productId});
          }
          break;
        case "NON_SUBSCRIPTION":
          // Nothing to update yet about non-subscription purchases
          break;
      }
    }
    res.status(200).send();
  });
}
