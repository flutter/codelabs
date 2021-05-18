import {PurchaseHandler} from "./purchase-handler";
import {ProductData, productDataMap} from "./products";
import * as appleReceiptVerify from "node-apple-receipt-verify";
import {APP_STORE_SHARED_SECRET} from "./constants";
import {IapRepository} from "./iap.repository";
import {firestore} from "firebase-admin/lib/firestore";

// Add typings for missing property in library interface.
declare module "node-apple-receipt-verify" {
    interface PurchasedProducts {
        originalTransactionId: string;
    }
}

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
}
