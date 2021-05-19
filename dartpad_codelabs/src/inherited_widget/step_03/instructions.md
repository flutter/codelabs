# Create a StatefulWidget around the AppStateScope

The `AppStateScope` doesn't have state, it only hosts the data
that it receives. We still need to create a `StatefulWidget` to store
the data. The goal of this `StatefulWidget` is to create the `AppState`
, provide APIs to modify the data, and host the data using the
`AppStateScope`.

```dart
class AppStateWidget extends StatefulWidget {
  AppStateWidget({required this.child});

  final Widget child;

  static AppStateWidgetState of(BuildContext context) {
    // TODO: implement this method
  }
  @override
  AppStateWidgetState createState() => AppStateWidgetState();
}

class AppStateWidgetState extends State<AppStateWidget> {
  AppState _data = AppState(
    productList: Server.getProductList(),
  );

  void setProductList(List<String> newProductList) {
    // TODO: implement this method
  }

  void addToCart(String id) {
    // TODO: implement this method
  }

  void removeFromCart(String id) {
    // TODO: implement this method
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement this method
  }
}
```