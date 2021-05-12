# Define the state data structure

The first thing you need to do is to define a structure to store your app’s state.
To do that, we must determine what’s considered to be the app’s state.

We know there are at least two components that require state: the product list and the cart icon.

In the source code, the product list corresponds to the <span style="font-family: 'Courier New';">ProductListWidget</span>,
and the cart icon corresponds to the <span style="font-family: 'Courier New';">ShoppingCartIcon</span>.

Let's look at the <span style="font-family: 'Courier New';">ProductListWidget</span> widget first. This widget builds the
scrollable body and displays Google products.  Because the widget needs to know which products to display and which products are already in the cart, the
<span style="font-family: 'Courier New';">ProductListState</span> stores the <span style="font-family: 'Courier New';">productList</span> and the <span style="font-family: 'Courier New';">itemsInCart</span>.

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

On the other hand, the <span style="font-family: 'Courier New';">ShoppingCartIcon</span> also stores <span style="font-family: 'Courier New';">itemsInCart</span> because
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

This is where things get interesting. Both <span style="font-family: 'Courier New';">ShoppingCartIcon</span> and <span style="font-family: 'Courier New';">ProductListWidget</span> store their own
versions of <span style="font-family: 'Courier New';">itemsInCart</span>, and the <span style="font-family: 'Courier New';">itemsInCart</span> must be kept in sync. When the <span style="font-family: 'Courier New';">itemsInCart</span> is updated
in the <span style="font-family: 'Courier New';">ProductListWidget</span>, the <span style="font-family: 'Courier New';">ProductListWidget</span> also needs to update the <span style="font-family: 'Courier New';">itemsInCart</span> in the <span style="font-family: 'Courier New';">ShoppingCartIcon</span>. Things can
can get out of hand very quickly if we added more widgets that depends on the <span style="font-family: 'Courier New';">itemsInCart</span>.

Now, let's pull these states out of the widgets.

You can find the class by searching for <span style="font-family: 'Courier New';">TODO</span> in the IDE

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