# Workshop: Building Layouts



## SizedBox

Use the `SizedBox` widget to create a box with a specific width and height. When
`SizedBox` wraps a child widget, it resizes the child using the height and width
properties. When it doesn’t wrap a widget, it uses the height and width
properties to create empty space.

For example, the `SizedBox` widget may be used to resize a child `Image` or
`DecoratedBox` widget.

```dart
SizedBox(
  width: 100,
  height: 100,
  child: Image.network('https://dartpad-workshops-io2021.web.app/example_flutter/images/dash.png'),
)
```

## Your Turn

Fill in the code for the `BlueBox` widget.

  1. Create a `DecoratedBox` widget with a blue background and black border.
  2. Wrap the `DecoratedBox` with a `SizedBox` widget 50x50 in size.
