# Create a StatefulWidget around the AppStateScope

The `AppStateScope` itself does not have state, it only hosts the data
that it receives. We still need to create a `StatefulWidget` to store
the data. The goal of this `StatefulWidget` is to create the `StateData`
, provide APIs to mutate the data and host the data using the
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
  StateData _data = StateData(
    productList: Server.getProductList(),
  );

  void setProductList(List<String> newProductList) {
    // TODO: implement this method
  }

  void setPurchaseList(Set<String> newPurchaseList) {
    // TODO: implement this method
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement this method
  }
}
```