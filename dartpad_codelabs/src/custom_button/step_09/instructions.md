# Accessibility

Finally, it's important to make sure your apps work for folks with disabilities.
For example, how would a person who uses a screen reader know this is a button
instead of some other kind of widget with a bit of text? They actually need a
bit of extra information!

That's exactly what the `Semantics` widget is for. It allows you to annotate
your widget tree with a specific meaning. In this case, you want to indicate
the widget is a button and that it contains a child widget.

```dart
Semantics(
   button: true, // Indicates to the user this widget is a button
   container: true, // If your widget wraps a child widget, it's a container
   child: FocusableActionDetector(),
)
```

## Your Turn

  1. Add a semantics Widget to your button.
  2. Indicate the widget is a button
  3. Indicate the widget is a container
  4. Use `alt + enter` (windows/linux) or `option + return` (mac) inside the
     `Semantics` constructor to see all of the available options!