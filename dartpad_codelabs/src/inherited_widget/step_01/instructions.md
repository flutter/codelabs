# Define the State Data Structure

The first thing to do is define a data structure to store your app state.
To do that, we need to determine what should be considered as the app state.

We know there are at least two components require state, the product list
and the cart icon.

In the source code, the product list corresponds to the `ProductListWidget` widget,
and the cart icon corresponds to the `ShoppingCartIcon`.

Let's first look at the `ProductListWidget` widget. This widget builds the
scrollable body and displays the google products. Since it needs to know what
product to display and which products are already in the cart, the
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
version of `itemsInCart`, and they need to be kept in sync. When the `itemsInCart` is updated
in `ProductListWidget` widget, it also needs to update the state in `ShoppingCartIcon` widget. It can
can get out of hand very quickly if we were to add more widgets that depends on the `itemsInCart`
in the future.

Now let's pull these states out of the widgets.

You can find the class by searching `TODO` in the IDE

```dart
class AppState {
  // TODO: fill in this data structure.

  AppState copyWith({
    //..
  }) {
    // TODO: implement copy method
  }
}
```