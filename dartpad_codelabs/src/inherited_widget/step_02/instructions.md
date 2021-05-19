# Create an InheritedWidget

Now, we have our own data structure to store the states. The next thing we want to do is to place
the data above the widgets that need it, so the entire widget subtree has access to the data.

This is where the `InheritedWidget` comes in handy. The widget has the ability
to host the data for the subtree and notify the subtree to rebuild when the data changes.

The next step is to create our own `InheritedWidget` to host the data.

```dart
class AppStateScope extends InheritedWidget {
  // TODO: implement this class.

  static AppState of(BuildContext context) {
    // TODO: implement this method.
  }
  
  @override
  bool updateShouldNotify(AppStateScope oldWidget) {
    // TODO: implement this method.
  }
}
```