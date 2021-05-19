import {ProductData} from "./products";

export abstract class PurchaseHandler {
  async verifyPurchase(
      userId: string,
      productData: ProductData,
      token: string,
  ): Promise<boolean> {
    switch (productData.type) {
      case "SUBSCRIPTION":
        return this.handleSubscription(userId, productData, token);
      case "NON_SUBSCRIPTION":
        return this.handleNonSubscription(userId, productData, token);
      default:
        return false;
    }
  }

  abstract handleNonSubscription(
      userId: string,
      productData: ProductData,
      token: string,
  ): Promise<boolean>;

  abstract handleSubscription(
      userId: string,
      productData: ProductData,
      token: string,
  ): Promise<boolean>;
}
