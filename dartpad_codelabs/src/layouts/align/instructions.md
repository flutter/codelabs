# Alignment

Now that you have a `BlueBox` to work with, it's time to move it around the
screen! 

In the previous step, the `BlueBox` widget was positioned at the top-left of the
window. What if you wanted to move it to the center or bottom-right instead?

## Align widget

The `Align` widget positions a child depending on the given alignment:
`topLeft`, `topCenter`, `topRight`, `centerLeft`, `center`, `centerRight`,
`bottomLeft`, `bottomCenter`, `bottomRight`.

```dart
Align(
  alignment: Alignment.bottomRight,
  child: BlueBox(),
)
```

## Center widget

While you can always use the `Align` widget to center a child, it's such a 
common task that Flutter provides a shortcut for it: the `Center` widget.

```dart
Center(
  child: BlueBox(),
)
```

## Your Turn

  1. Use the `Align` widget to position the `BlueBox` in various places.
  2. Then, try the `Center` widget.
