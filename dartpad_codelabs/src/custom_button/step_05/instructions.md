# Desktop Support: Mouse Hover States

Thus far, you've built a configurable button that responds to taps or clicks.
The button works well on mobile devices, but it's missing a couple of important
features when it comes to desktop devices: full support for mouse & keyboard
navigation.

In this step, you'll learn how to support mouse navigation by adjusting the
mouse cursor & background color of the button when a user hovers over the
button. These changes provide a visual cue to desktop users that they can click
on and interact with your button!

## MouseRegion

To determine whether or not a user is hovering over your button, use the
`MouseRegion` widget. The `MouseRegion` widget can be configured to display a
specific mouse cursor when a user hovers over your button. It can also be
configured to run callback functions when a user starts hovering (`onEnter`),
continues hovering (`onHover`), and stops hovering (`onExit`).

```dart
MouseRegion(
  cursor: SystemMouseCursors.click,
)
```

## StatefulWidget

So far, the `CustomButton` widget has not needed to manage any data, also known
as "state." Now, the button needs to keep track of whether someone is hovering
over it or not. Then, you can use that information to set the correct background
color.

In programming terms, the button needs to manage a private `bool _hovering`
instance variable. `StatelessWidget` classes cannot manage data over time.
That's where `StatefulWidget` and `State` classes come into play.

`StatefulWidget` classes configure your widget, and the corresponding `State`
class manages the data (instance variables) that can change over time. You can
update the data in response to user actions, such as when they hover over the
button, using the `setState` method. `setState` also triggers a rebuild,
allowing you to change the background color using the latest data. 

```dart
MouseRegion(
  cursor: SystemMouseCursors.click,
  onEnter: (event) => setState(() => _hovering = true),
  onExit: (event) => setState(() => _hovering = false),
)
```

## Your Turn

  1. Use DartPad to convert your `CustomButton` into a `StatefulWidget` with a
     companion `_CustomButtonState` class.
  2. Add a `bool _hovering = false` instance variable to the 
     `_CustomButtonState` class.
  3. Wrap everything in your `build` method inside a `MouseRegion` widget. Set 
     an appropriate `cursor`.
  4. Use `setState` combined with `MouseRegion` to update the `_hovering`
     variable when a user hovers over the button or exits.
  5. Use the `_hovering` variable to change the background color of the button.
  