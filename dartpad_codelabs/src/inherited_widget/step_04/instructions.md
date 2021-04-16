# Insert the AppStateWidget to the widget tree

We are ready to insert the `AppStateWidgetState` into the widget tree

```dart
void main() {
  // TODO: insert AppStateWidget above MaterialApp.
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      home: MySorePage(),
    )
  );
}
```