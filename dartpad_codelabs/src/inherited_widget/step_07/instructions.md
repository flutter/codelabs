# Migrate search TextField

We also need to migrate the search query to update the `StateData`.

```dart
  void _toggleSearch() {
    setState(() {
      _inSearch = !_inSearch;
    });
    _controller = TextEditingController();
    // TODO: set productList to Server.getProductList().
  }

  void _handleSearch() {
    _focusNode.unfocus();
    final String filter = _controller.text;
    // TODO: set productList to Server.getProductList(filter: filter).
  }
```