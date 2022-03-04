# Callback Functions

At this point, you should be able to create instances of your `CustomButton`
widget that can be configured with unique background colors and text. However,
the callback functions passed to the `GestureDetector` widget are still
hard-coded. Therefore, while every button may look different, they'll all
perform the exact same task when tapped.

How can you configure each button to perform a different task? Once again, using
instance variables and constructors! In fact, that's exactly how the
`GestureDetector` widget accepts various callback functions.

## Callback Functions as Instance Variables

Just as you can store a unique background color or child widget for every
instance of your `CustomButton` widget, you can store a unique callback function
as well. If you're learning Dart, defining callback functions may look a little
scary at first. No pressure! Take your time and familiarize yourself with the
syntax a bit while working on this step.

```dart
class CustomButton {
  // Defines an instance variable named "onButtonTap" that stores a function. 
  // The function returns "void" and accepts no arguments.
  final void Function() onButtonTap;

  // You can then pass the onButtonTap function to the GestureDetector in
  // your build method.
  @override
  Widget build() {
    return GestureDetector(
      onTap: onButtonTap,
    );
  }
}
```

## Type Aliases

After working on a few buttons, you'll start to realize that many widgets define
the same kinds of callback functions. Therefore, Flutter provides "type aliases"
-- shorthand, meaningful names -- for common kinds of callback functions. For
example, instead of writing `void Function()`, you can use the shorthand type
alias provided by Flutter: `VoidCallback`.

Not only is this shorthand name easier to type, it also helpfully describes what
your're storing: a callback function.

```dart
class CustomButton {
  // Works the same as the example above
  final VoidCallback onButtonTap;
}
```

## Updating the constructor

Now that you've defined an instance variable to store the callback function,
you'll need to provide a way for the user to set it. Once again, update the
constructor!

```dart
class CustomButton {
  CustomButton({
    required this.onButtonTap,
  });
}
```

## Your Turn

Update your `CustomButton` to accept a two callback functions for tapping and
long pressing. Store both as instance variables, and pass them to the 
`GestureDetector` in place of the hard-coded functions.