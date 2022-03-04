# Desktop Support: Keyboard Navigation

The `CustomButton` widget now supports mouse hover states, but it does not
support keyboard navigation. Users cannot use the `Tab` key to select, or
"focus," the button. Time to fix that up!

## Focus Widget

In order for a widget to process keyboard shortcuts, such as `Space` or `Enter`,
users must be able to navigate to the widget to "select" it. This is known as
focusing the widget. Therefore, you can use the `Focus` widget to make your
button selectable. 

Furthermore, the `Focus` widget runs the `onFocusChange` callback function when
a user navigates to your button or away from your button. Just as you used the
`MouseRegion` `onEnter` and `onExit` callback functions to manage a `bool
_hovering` instance variable, you could use the `onFocusChange` callback
function to manage a `bool _focusing` instance variable.

```dart
Focus(
   onFocusChange: (focusing) => setState(() => _focusing = focusing),
   child: MouseRegion() // ... Rest of Button code
)
```

## Your turn

  1. Introduce a new `bool _focusing` variable to the `_CustomButtonState` 
     class.
  2. Wrap everything in the `build` method inside a `Focus` widget.
  3. Use the `onFocusChanged` callback function to update the `_focusing` 
     instance variable.
  4. Use the `_focusing` instance variable to update the background color of the
     button.

Note: You can use your keyboard to focus a lot of things in DartPad! To see if
your `Focus` widget + background color is working, make sure to "Run" your code,
click inside the "UI Output" window, then hit the `Tab` key.