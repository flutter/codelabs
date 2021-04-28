export interface ProductData {
  productId: string;
  type: "SUBSCRIPTION" | "NON_SUBSCRIPTION";
}

export const productDataMap: { [productId: string]: ProductData } = {
  "dash_consumable_2k": {
    productId: "dash_consumable_2k",
    type: "NON_SUBSCRIPTION",
  },
  "dash_upgrade_3d": {
    productId: "dash_upgrade_3d",
    type: "NON_SUBSCRIPTION",
  },
  "dash_subscription_doubler": {
    productId: "dash_subscription_doubler",
    type: "SUBSCRIPTION",
  },
};
