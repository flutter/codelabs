import {firestore} from "firebase-admin/lib/firestore";
import Timestamp = firestore.Timestamp;

export type NonSubscriptionStatus = "PENDING" | "COMPLETED" | "CANCELLED";
export type SubscriptionStatus = "PENDING" | "ACTIVE" | "EXPIRED";

export type IAPSource = "google_play" | "app_store";
export type Purchase = NonSubscriptionPurchase | SubscriptionPurchase;

export interface BasePurchase {
  iapSource: IAPSource;
  orderId: string;
  productId: string;
  userId: string;
  purchaseDate: firestore.Timestamp;
}

export interface NonSubscriptionPurchase extends BasePurchase {
  type: "NON_SUBSCRIPTION";
  status: NonSubscriptionStatus;
}

export interface SubscriptionPurchase extends BasePurchase {
  type: "SUBSCRIPTION";
  expiryDate: firestore.Timestamp;
  status: SubscriptionStatus;
}


export class IapRepository {
  constructor(private firestore: FirebaseFirestore.Firestore) {
  }

  async updatePurchase(purchaseData: {
    iapSource: IAPSource;
    orderId: string;
  } & Partial<Purchase>): Promise<void> {
    const purchaseId = `${purchaseData.iapSource}_${purchaseData.orderId}`;
    const purchase = this.firestore
        .collection("purchases")
        .doc(purchaseId);
    await purchase.update(purchaseData);
  }

  async createOrUpdatePurchase(
      purchaseData: Purchase,
  ): Promise<void> {
    const purchases = this.firestore
        .collection("purchases");
    const purchaseId = `${purchaseData.iapSource}_${purchaseData.orderId}`;
    const purchase = purchases.doc(purchaseId);
    await purchase.set(purchaseData);
  }

  async expireSubscriptions(): Promise<void> {
    const documents = await this.firestore.collection("purchases")
        .where("expiryDate", "<=", Timestamp.now())
        .where("status", "==", "ACTIVE")
        .get();
    if (!documents.size) return;
    const writeBatch = this.firestore.batch();
    documents.docs.forEach((doc) => writeBatch.update(
        doc.ref,
        {status: "EXPIRED"},
    ));
    await writeBatch.commit();
    console.log(`Expired ${documents.size} subscriptions`);
  }
}
