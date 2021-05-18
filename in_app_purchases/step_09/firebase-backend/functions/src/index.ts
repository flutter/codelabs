import * as admin from "firebase-admin";
import * as Functions from "firebase-functions";
import {CLOUD_REGION} from "./constants";
import {IapRepository, IAPSource} from "./iap.repository";
import {PurchaseHandler} from "./purchase-handler";
import {GooglePlayPurchaseHandler} from "./google-play.purchase-handler";
import {AppStorePurchaseHandler} from "./app-store.purchase-handler";
import {HttpsError} from "firebase-functions/lib/providers/https";
import {productDataMap} from "./products";


admin.initializeApp();
// Get a cloud functions instance that is specific to your region.
const functions = Functions.region(CLOUD_REGION);
// Initialize the IAP repository that the purchase handlers depend on
const iapRepository = new IapRepository(admin.firestore());
// Initialize an instance of each purchase handler,
// and store them in a map for easy access.
const purchaseHandlers: { [source in IAPSource]: PurchaseHandler } = {
  "google_play": new GooglePlayPurchaseHandler(iapRepository),
  "app_store": new AppStorePurchaseHandler(iapRepository),
};
// Verify Purchase Function
interface VerifyPurchaseParams {
    source: IAPSource;
    verificationData: string;
    productId: string;
}

// Handling of purchase verifications
export const verifyPurchase = functions.https.onCall(
    async (
        data: VerifyPurchaseParams,
        context,
    ): Promise<boolean> => {
      // Check authentication
      if (!context.auth) {
        console.warn("verifyPurchase called when not authenticated");
        throw new HttpsError(
            "unauthenticated",
            "Request was not authenticated.",
        );
      }
      // Get the product data from the map
      const productData = productDataMap[data.productId];
      // If it was for an unknown product, do not process it.
      if (!productData) {
        console.warn(`verifyPurchase called for an unknown product ("${data.productId}")`);
        return false;
      }
      // If it was for an unknown source, do not process it.
      if (!purchaseHandlers[data.source]) {
        console.warn(`verifyPurchase called for an unknown source ("${data.source}")`);
        return false;
      }
      // Process the purchase for the product
      return purchaseHandlers[data.source].verifyPurchase(
          context.auth.uid,
          productData,
          data.verificationData,
      );
    });
