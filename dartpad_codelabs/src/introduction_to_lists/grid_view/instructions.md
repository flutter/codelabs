# GridView

In addition to normal lists of content, apps often need to display scrollable
grids of content as well. For example, photo gallery apps often display the
photos you've taken with a scrollable grid. Alternatively, a music app may
display your favorite albums as a scrollable grid of album covers. You'll find
scrollable grids of content in many different types apps!

To create a scrollable grid of content, use the `GridView` widget.

## GridView.count

If you need to display a small number of items in a scrollable grid, use the
`GridView.count` constructor. Provide a `crossAxisCount` to define how many
items should be shown in each row of content. If set to 1, the `GridView` acts
like a normal `ListView`, with one item per row of content.

Furthermore, you may provide `mainAxisSpacing` and `crossAxisSpacing` to define
space between the items.

```dart
GridView.count(
  crossAxisCount: 2, // Show 2 items in each *row*
  mainAxisSpacing: 10, // 10 pixels of vertical space between each row
  crossAxisSpacing: 5, // 5 pixels of horizontal space between each item
  children: [
    BlueBox(),
    GreenBox(),
    YellowBox(),
    BlueBox(),
    GreenBox(),
    YellowBox(),
  ]
)
```

## Scroll Direction

The `GridView` widget can be configured to scroll vertically or
horizontally by setting the `scrollDirection`.

```dart
GridView.count(
  scrollDirection: Axis.horizontal, // GridView now scrolls horizontally
  crossAxisCount: 2, // Show 2 items in each column
  mainAxisSpacing: 10, // 10 pixels of horizontal space between each column
  crossAxisSpacing: 5, // 5 pixels of vertical space between each item
  children: [
    BlueBox(),
    GreenBox(),
    YellowBox(),
    BlueBox(),
    GreenBox(),
    YellowBox(),
  ]
)
```

## Your Turn

  1. Use the `GridView.count` constructor to create a `GridView` with a limited
     number of items. 
  2. Change the `crossAxisCount` to see how it changes the design.
  3. Provide spacing between items with `mainAxisSpacing` and
     `crossAxisSpacing`.
  4. Change the `scrollDirection` to `Axis.horizontal`. How does this affect the
     layout and scrolling? How does this affect the `mainAxisSpacing` and
     `crossAxisSpacing`?