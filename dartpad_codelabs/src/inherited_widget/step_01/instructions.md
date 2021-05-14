# Define the state data structure

The first thing you need to do is to define a structure to store your app’s state.
To do that, we must determine what’s considered to be the app’s state.

We know there are at least two components that require state: the product list and the cart icon.

In the source code, the product list corresponds to the `ProductListWidget`,
and the cart icon corresponds to the `ShoppingCartIcon`.

Let's look at the `ProductListWidget` widget first. This widget builds the
scrollable body and displays Google products.  Because the widget needs to know which products to display and which products are already in the cart, the
`ProductListState` stores the `productList` and the `itemsInCart`.

```dart
class ProductListWidgetState extends State<ProductListWidget> {
  List<String> get productList => _productList;
  List<String> _productList = Server.getProductList();
  set productList (List<String> value) {
    setState(() {
      _productList = value;
    });
  }

  Set<String> get itemsInCart => _itemsInCart;
  Set<String> _itemsInCart = <String>{};
  set itemsInCart(Set<String> value) {
    setState(() {
      _itemsInCart = value;
    });
  }

  // ...
}
```

On the other hand, the `ShoppingCartIcon` also stores `itemsInCart` because
it needs to know number of products that are in the cart.

```dart
class ShoppingCartIconState extends State<ShoppingCartIcon> {
  Set<String> get itemsInCart => _itemsInCart;
  Set<String> _itemsInCart = <String>{};
  set itemsInCart(Set<String> value) {
    setState(() {
      _itemsInCart = value;
    });
  }

  //...
}
```

This is where things get interesting. Both `ShoppingCartIcon` and `ProductListWidget` store their own
versions of `itemsInCart`, and the `itemsInCart` must be kept in sync. When the `itemsInCart` is updated
in the `ProductListWidget`, the `ProductListWidget` also needs to update the `itemsInCart` in the `ShoppingCartIcon`. Things can
can get out of hand very quickly if we added more widgets that depends on the `itemsInCart`.

Now, let's pull these states out of the widgets.

You can find the class by searching for `TODO` in the IDE

```dart
class AppState {
  // TODO: fill in this data structure.

  AppState copyWith({
    //..
  }) {
    // TODO: implement copy method.
  }
}
```