# Migrate search TextField

We also need to migrate the search query so that it updates the `AppState`.

```dart
  void _toggleSearch() {
    setState(() {
      _inSearch = !_inSearch;
    });
    _controller.clear();
    // TODO: set productList to Server.getProductList().
  }

  void _handleSearch() {
    _focusNode.unfocus();
    final String filter = _controller.text;
    // TODO: set productList to Server.getProductList(filter: filter).
  }
```