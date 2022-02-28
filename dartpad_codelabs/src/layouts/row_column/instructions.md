# Rows & Columns

Learning to position a single widget is important, but layouts are built by
combining many widgets together. Often times, you'll need to display two or more
widgets side-by-side, either horizontally or vertically. For example, you may
lay out an icon next to some text.

## Rows

The `Row` widget displays a list of `children` widgets side-by-side
horizontally, depending on the text direction. By default, the widgets are
laid out left-to-right.

```dart
Row(
  children: [BlueBox(), BlueBox(), BlueBox()],
)
```

## Columns

The `Column` widget displays a list of `children` widgets side-by-side
vertically. By default, the widgets are laid out top-to-bottom.

```dart
Column(
  children: [
    BlueBox(),
    BlueBox(),
    BlueBox(),
  ],
)
```

## Your Turn

  1. Use a `Column` to display three boxes side-by-side vertically
  2. Replace the `Column` with a `Row` to display the widgets horizontally
  3. Replace the three blue boxes with two widgets: An `Icon` next to some
     `Text`. Make the text super long, see what happens! Don't worry if it
     breaks, you'll learn how to fix that up in the next steps.
