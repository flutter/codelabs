# Migrate the ProductListWidget

```dart
// TODO: convert ProductListWidget into StatelessWidget.
class ProductListWidget extends StatefulWidget {
  ProductListWidget({Key? key}) : super(key: key);
  @override
  ProductListWidgetState createState() => ProductListWidgetState();
}
```

Remove the global key usage.

```dart
// TODO: remove the usage of productList globalkey.
final GlobalKey<ProductListWidgetState> productList = GlobalKey<ProductListWidgetState>();
```