import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/dash_purchases.dart';
import '../model/purchasable_product.dart';
import '../model/store_state.dart';
import '../repo/iap_repo.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    var upgrades = context.watch<DashPurchases>();

    Widget storeWidget;
    switch (upgrades.storeState) {
      case StoreState.loading:
        storeWidget = _PurchasesLoading();
        break;
      case StoreState.available:
        storeWidget = _PurchaseList();
        break;
      case StoreState.notAvailable:
        storeWidget = _PurchasesNotAvailable();
        break;
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      storeWidget,
      const Padding(
        padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0.0),
        child: Text(
          'Past purchases',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      const PastPurchasesWidget(),
    ]);
  }
}

class _PurchasesLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Store is loading'));
  }
}

class _PurchasesNotAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Store not available'));
  }
}

class _PurchaseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var purchases = context.watch<DashPurchases>();
    var products = purchases.products;
    return Column(
      children: products
          .map((product) => _PurchaseWidget(
              product: product,
              onPressed: () {
                purchases.buy(product);
              }))
          .toList(),
    );
  }
}

class _PurchaseWidget extends StatelessWidget {
  final PurchasableProduct product;
  final VoidCallback onPressed;

  const _PurchaseWidget({
    required this.product,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var title = product.title;
    if (product.status == ProductStatus.purchased) {
      title += ' (purchased)';
    }
    return InkWell(
        onTap: onPressed,
        child: ListTile(
          title: Text(
            title,
          ),
          subtitle: Text(product.description),
          trailing: Text(_trailing()),
        ));
  }

  String _trailing() {
    switch (product.status) {
      case ProductStatus.purchasable:
        return product.price;
      case ProductStatus.purchased:
        return 'purchased';
      case ProductStatus.pending:
        return 'buying...';
    }
  }
}

class PastPurchasesWidget extends StatelessWidget {
  const PastPurchasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var purchases = context.watch<IAPRepo>().purchases;
    return ListView.separated(
      shrinkWrap: true,
      itemCount: purchases.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(purchases[index].title),
        subtitle: Text(purchases[index].status.toString()),
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
