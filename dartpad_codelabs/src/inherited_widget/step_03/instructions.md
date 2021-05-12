# Create a StatefulWidget around the AppStateScope

The <span style="font-family: 'Courier New';">AppStateScope</span> doesn't have state, it only hosts the data
that it receives. We still need to create a <span style="font-family: 'Courier New';">StatefulWidget</span> to store
the data. The goal of this <span style="font-family: 'Courier New';">StatefulWidget</span> is to create the <span style="font-family: 'Courier New';">AppState</span>
, provide APIs to modify the data, and host the data using the
<span style="font-family: 'Courier New';">AppStateScope</span>.

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