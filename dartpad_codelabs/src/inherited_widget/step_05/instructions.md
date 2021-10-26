# Migrate the ShoppingCartIcon

Every widget should have access to the `AppStateWidget` and `AppStateScope`.
Let's migrate the `ShoppingCartIcon` so that it uses `AppStateScope` instead of storing
the state locally.

**Note:** The app won’t work properly until we migrate all the widgets.

```dart
// TODO: convert ShoppingCartIcon into StatelessWidget.
class ShoppingCartIcon extends StatefulWidget {
  ShoppingCartIcon({Key? key}) : super(key: key);
  @override
  ShoppingCartIconState createState() => ShoppingCartIconState();
}
```

We should also remove the global key usage.

```dart
// TODO: remove the usage of shoppingCart Globalkey.
final GlobalKey<ShoppingCartIconState> shoppingCart = GlobalKey<ShoppingCartIconState>();
```