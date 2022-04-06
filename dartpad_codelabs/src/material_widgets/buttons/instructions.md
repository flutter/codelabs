# Material Design Buttons

If you've taken the workshop on [Creating a custom
button](https://dartpad.dev/workshops.html?webserver=https://raw.githubusercontent.com/flutter/codelabs/master/dartpad_codelabs/src/custom_button),
you'll know that Flutter provides all the tools you need to create a unique
button that fits into your own design system. However, if your team has made the
decision to follow Material Design, you'll be happy to discover that Flutter
provides several `Material` buttons out of the box.

So far, you've worked with the `FloatingActionButton`, but that's not all
Flutter has to offer!

## TextButton

If you need a simple button that displays text without much additional visual
styling, the `TextButton` widget is what you're looking for. It displays the
provided `Text` and runs the `onPressed` callback function when tapped. It also
provides the Material ripple animation while being hovered and pressed!

```dart
TextButton(
  // A callback function that is executed when a user taps on the button
  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('TextButton Pressed')),
  ),

  // The Text that will be displayed
  child: Text('TextButton'),
);
```

## OutlinedButton

If you'd like to create a `TextButton` with a border, use the `OutlinedButton`
widget. Once again, it runs an `onPressed` callback function when tapped.
Furthermore, the border can be configured by changing the `ButtonStyle`.

In fact, all of these `Material` buttons can be customized using the
`ButtonStyle` class, which sets the background color, border color, button
shape, and more. In the following example, the border color is set to orange.

```dart
// A button with a rounded border
OutlinedButton(
  style: ButtonStyle(
    // The border is orange in all states: hovered, pressed, focused, etc.
    side: MaterialStateProperty.all(
      BorderSide(color: Colors.orange),
    ),
  ),
  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('OutlinedButton Pressed')),
  ),
  child: Text('OutlinedButton'),
);
```

## ElevatedButton

If your design requires a button with a background color and a drop shadow, use
the `ElevatedButton` widget. This example also demonstrates how to change the
background color of a button if a user hovers over it. 

The `ButtonStyle` may change depending on the "state" of the button: whether a
user is hovering over or pressing the button, for example. Therefore, all styles
of the `ButtonStyle` class are `MaterialStateProperty` classes, which determine
the correct style based on the current `MaterialState` of the button. 

In the following example, the background color turns `yellow` when the button
is hovered. Otherwise, the background color is blue.

```dart
ElevatedButton(
  style: ButtonStyle(
    // The background color changes to yellow if the user hovers over the button
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.hovered)) {
        return Colors.yellow;
      } else {
        return Colors.blue;
      }
    }),
  ),
  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('ElevatedButton Pressed')),
  ),
  child: Text('ElevatedButton'),
)
```

## Your Turn

  1. Replace the `body` of the `Scaffold` with a centered `TextButton` that
     displays a `Snackbar`.
  2. Wrap the `TextButton` with a `Column` widget. 
  3. Add an `OutlinedButton` to the `Column` and provide an `onPressed` callback
     that displays a `Snackbar`.
  4. Use a `ButtonStyle` to change the border color of the `OutlinedButton`
  5. Add an `ElevatedButton` to the `Column`. At first, omit the `onPressed`
     callback. Then, provide a callback that displays a `Snackbar`. What's the
     difference?
  6. Use a `ButtonStyle` to change the background color when the button is
     `hovered`.
  7. Then, change the background color to `green` when the button is `pressed`.