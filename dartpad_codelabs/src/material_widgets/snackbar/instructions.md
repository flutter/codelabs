# Snackbars

Great job! At this point, you've created a `HomePage`, structured by a
`Scaffold` widget. It displays a page title, content, and allows the user to
perform the primary action on the page using a floating action button.

However, when someone presses on the `FloatingActionButton`, a message is
printed to the developer console, hidden from the user. Wouldn't it be nice to
display that message to the user instead?

That's the job of Snackbars.

  > Snackbars inform users of a process that an app has performed or will
  > perform. They appear temporarily, towards the bottom of the screen. They
  > shouldn’t interrupt the user experience, and they don’t require user input
  > to disappear.

In Flutter, Snackbars are pieces of `Material`, meaning you can customize the
background color and elevation. Furthermore, Snackbars are displayed by the
current page's `Scaffold` widget. This allows the `Scaffold` widget to ensure
the messages do not overlap other critical elements, such as the floating action
button or bottom navigation bar. 

Use the `ScaffoldMessenger` to display a `Snackbar` widget. The
`ScaffoldMessenger` is created by the `MaterialApp` widget to communicate with
the currently page's `Scaffold` widget. It can also be used to hide Snackbar
messages!

```dart
FloatingActionButton(
  // Use the ScaffoldMessenger to display a Snackbar when the user taps the FAB
  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      // Configure the material properties: background color and elevation
      backgroundColor: Colors.green,
      elevation: 5,

      // The Message to display to the user
      content: Text('FloatingActionButton Pressed'),

      // Additional action the user may take, such as "Undo". The following 
      // action hides all Snackbars when tapped.
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () => ScaffoldMessenger.of(context).clearSnackBars(),
      )
    ),
  ),
  child: Icon(Icons.send),
);
```

## Your Turn

  1. Use the `ScaffoldMessenger` to display a `Snackbar` widget
  2. Configure the `backgroundColor` and `elevation`.
  3. Display a custom message
  4. Bonus: Configure a `SnackBarAction` that hides all Snackbars when tapped.