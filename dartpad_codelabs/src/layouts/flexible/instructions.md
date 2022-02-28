# Flexible widgets

In step two, you created a `Row` that contained an `Icon` sitting next to a
`Text` widget. If the text was long enough, you might have seen a layout error.
Why? The `Text` widget was never told how much space it could occupy, so it 
it rendered a single line of text wider than the `Row`.

How could you resize the `Text` widget to fit within the available space of the
`Row`?

`Row` and `Column` first lay out widgets of a fixed size. Fixed size widgets are
considered *inflexible* because they can't resize themselves after they've been
laid out. After inflexible widgets are laid out, `Flexible` widgets are resized
to occupy the remaining space. The amount of space each `Flexible` widget
occupies is defined by the `flex` and `fit` properties.

Therefore, to resize the `Text` widget to fill the available space next to the
`Icon`, wrap it in a `Flexible` widget!

```dart
Row(
  children: [
    Icon(Icons.person),
    Flexible(
      child: Text('This long string of text may cause a layout issue outside a Flexible Widget')
    ),
  ]
)
```

## flex property

The `flex` property determines the amount of space a `Flexible` widget should
occupy in relation to the other `Flexible` widgets in the same `Row` or
`Column`.

When `flex` properties are compared against one another, the ratio between their
`flex` values determines what fraction of the total remaining space each
`Flexible` widget receives.

In this example, the sum of the `flex` values (3), determines that the first
`Flexible` widget receives 1/3 of the total remaining space, while the second
`Flexible` widget receives 2/3. The `BlueBox` widget (or fixed-size widget)
remains the same size.

```dart
Row(
  children: [
    BlueBox(),
    Flexible(
      flex: 1,
      child: BlueBox(),
    ),
    Flexible(
      flex: 2,
      child: BlueBox(),
    ),
  ],
),
```

## Your Turn

  1. Run the initial code an observe the layout error
  2. Fix the error using a `Flexible` widget.
  3. Replace the `Row` with a `Column` that contains three `BlueBox` children
  4. Wrap two of the `BlueBox` widgets inside `Flexible` widgets. Play around
     with the `flex` properties to get an intuition for how the ratios work.

Note: You may need to resize the UI Output window a bit smaller to see the
`Flexible` widgets & `flex` ratios in action.
