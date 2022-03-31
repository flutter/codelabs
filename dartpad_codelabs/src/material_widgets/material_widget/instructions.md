# Material Widget

Ok, now you have a `MaterialApp` which configures some low level navigation
animations and scroll physics, but the `Text` looks pretty bad. How can you set
a proper background color and text style in a Material Design app? Using
`Material` widgets!

"Material" is the central metaphor in Material Design. Each piece of material
exists at a given elevation, which influences how that piece of material
visually relates to other pieces of material and how it casts shadows. Most
widgets in the design system are pieces of material: buttons, app bars, tabs,
and more.

In Flutter, the `Material` widget is used to create a piece of material. Use it
to define an elevation, background color, and shadow color. Furthermore, the
`Material` may also paint special ripple effects over the background color when
a user interacts with a child widget. Finally, `Material` widgets define the
default text styles for descendant widgets, fixing up that nasty looking text!

```dart
Material(
  elevation: 5, // Raises the elevation of the piece of material
  shadowColor: Colors.green, // Make the shadow green
  textStyle: TextStyle(color: Colors.blue), // Default style for Text widgets
  child: Center(child: Text('Home Page')), // Blue "Home Page" text
)
```

As you progress through this workshop, you'll see just how many many widgets are
pieces of `Material`. Whenever you see such a widget, remember they all define
an elevation, background color, shadow color and text style.

## Your Turn

  1. Wrap the `Text` widget inside a piece of Material. What is the result?
  2. Raise the elevation. Is there any change?
  3. Wrap the `Material` in a `Container` widget with padding and a grey
     background color. Do you see any difference?
  4. Define a custom `TextStyle`. How does it affect the text?