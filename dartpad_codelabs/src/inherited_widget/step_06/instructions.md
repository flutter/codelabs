# Migrate the ProductListWidget

Let's do the same thing for the `ProductListWidget` so that it also uses `AppStateScope`.

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
// TODO: remove the usage of productList Globalkey.
final GlobalKey<ProductListWidgetState> productList = GlobalKey<ProductListWidgetState>();
```