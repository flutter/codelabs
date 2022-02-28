## Flexible fit & the Expanded widget

In the previous step, you learned that `Flexible` widgets are sized according to
their `flex` properties. After the `Flexible` widget is sized, the `fit`
property determines whether or not the `child` widget must fill that available
space.  

If the `fit` is `FlexFit.loose`, the `child` widget is allowed occupy as much of
the available space as it would like, and is only resized down if it is larger
than the available space. This is the default value.

In contrast, if the `fit` is set to `FlexFit.tight`, the `child` widget is
always resized to fill the available space. 

```dart
Row(
  children: [
    Flexible(
      fit: FlexFit.loose, // BlueBox resized if larger than the available space
      child: BlueBox(),
    ),
    Flexible(
      fit: FlexFit.tight, // BlueBox always resized to fill the available space
      child: BlueBox(),
    ),
    BlueBox(),
  ],
),
```

## Expanded widget

Using `FlexFit.tight` is such a common task, Flutter provides a shortcut for
for it: the `Expanded` widget. The code sample below works exactly the same as
the sample above!

```dart
Row(
  children: [
    Flexible(child: BlueBox()), // Remove FlexFit.loose since it is the default
    Expanded(child: BlueBox()), // Same as a Flexible widget with tight fit
    BlueBox(),
  ],
);
```

## Your Turn

  1. Wrap two of the `BlueBox` widgets in a `Flexible` widget. Does anything
     change?
  2. Change the `fit` of a `Flexible` widget to `FlexFit.tight`. How do the
     boxes change in size? Do the boxes occupy the entire `Row`?
  3. Use an `Expanded` widget in place of a `Flexible` widget. Use two!
