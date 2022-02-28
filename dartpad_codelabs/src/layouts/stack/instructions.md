# Stack

`Row` & `Column` widgets are great for creating layouts where widget sit
side-by-side. However, what about layouts where one widget should sit "above" or
"on top of" another widget? For example, you may want to show some `Text` 
above a gradient, which sits above an `Image` widget.

To place widgets on top of each other, use the `Stack` widget.

```dart
Stack(
  children: [
    BlueBox(),
    Text('This text sits above the BlueBox'),
  ],
)
```

## Positioned widgets

Stack widgets contain two types of children: `Positioned` and non-positioned.
The `Positioned` widget wraps any other widget to define where it should be laid
out inside the stack.

The following example positions the `BlueBox` 10 logical pixels from the
top-left of the "UI Output" window.

```dart
Stack(
  children: [
    Positioned(top: 10, left: 10, child: BlueBox()),
    Text('This text sits above the BlueBox'),
  ],
)
```

## Non-positioned widgets

However, you might notice one issue with the previous example: the `BlueBox` is
cut off. Why? The `Text` widget is a "non-positioned" widget. Therefore, the
`Text` widget is sized and positioned according to the `Stack` `fit` and
`alignment` properties.

The `fit` determines whether non-positioned children should expand to fill the
available space. `StackFit.expand` requires non-positioned children to fill the
available space. `StackFit.loose` allows the non-positioned children to size
themselves as large as the available space. This is the default.

The `alignment` property determines where non-positioned children are located.
For example, if the alignment is `Alignment.topLeft`, then the top left
corner of each non-positioned child will be located at the same global
coordinate.

```dart
Stack(
  fit: StackFit.expand, // non-positioned children resized to fill the Stack
  children: [
    Positioned(top: 10, left: 10, child: BlueBox()),
    Text('This text sits above the BlueBox'),
  ],
)
```

## Your Turn

Place a `Text` widget on top of a `BlueBox` widget. Wrap the `Text` or `BlueBox`
inside a `Positioned` widget. Play with the `fit` and `alignment` to get a 
feel for how they work.

Hint: Feel free to wrap the `Text` widget inside a `DecoratedBox` or `Container`
with a background color!
