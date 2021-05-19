# Insert the AppStateWidget into the widget tree

Now, we’ll insert the `AppStateWidgetState` into the widget tree.

```dart
void main() {
  // TODO: insert AppStateWidget above MaterialApp.
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      home: MyStorePage(),
    )
  );
}
```