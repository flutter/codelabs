# Create a InheritedWidget

We have our own data structure to store the states. The next thing we want
to do is to host the data above the widgets that need it, so the entire
widget subtree has the access to the data.

This is where the `InheritedWidget` comes in handy. This widget has the ability
to host the data for the subtree and notify them to rebuild when the data changes.

The next step is to create our own `InheritedWidget` that hosts the data.

```dart
class AppStateScope extends InheritedWidget {
  // TODO: implement this class.

  static StateData of(BuildContext context) {
    // TODO: implement this method.
  }
  
  @override
  bool updateShouldNotify(AppStateScope oldWidget) {
    // TODO: implement this method.
  }
}
```