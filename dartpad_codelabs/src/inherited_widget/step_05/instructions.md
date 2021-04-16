# Migrate the ShoppingCartIcon

Every widget should have access to the `AppStateWidget` and `AppStateScope`.
Let's migrate `ShoppingCartIcon` to use the `AppStateScope` instead of storing
the state locally.

(Note# The app will not work properly until we migrate all of the widgets.)

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
// TODO: remove the usage of shoppingCart globalkey.
final GlobalKey<ShoppingCartIconState> shoppingCart = GlobalKey<ShoppingCartIconState>();
```