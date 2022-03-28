# Long GridViews

In some cases, you may need to display a large number of items in a scrollable
grid. Just like the `ListView` widget, `GridView` has two versions: A simple
version for a small list of items, and a more complex `GridView.builder` for
long lists of content. 

Once again, the principle is the same. Instead of building all widgets up front,
provide an `itemCount` which tells Flutter how many widgets you need to display.
Then, provide  an  `itemBuilder` function that Flutter uses to create items
on-demand as they're scrolled into view.

The `GridView.builder` constructor also needs to know how many items to lay out
in each row or column, depending on the scroll direction. To define that, use a
`SliverGridDelegate`. Most commonly, you'll use the
`SliverGridDelegateWithFixedCrossAxisCount`. 

As scary as that name is, the class simply defines the number of items on each
row, as well as the amount of spacing between the items. In fact, you can see
it's the same information provided directly to `GridView.count`!

```dart
GridView.builder(
  // Display a list with 600 items
  itemCount: 600,

  // A function that tells Flutter how to create widgets as they're scrolled into
  // view
  itemBuilder: (context, index) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text('Item $index'),
    )
  },

  // The class that controls how the items should be displayed. Notice that many
  // of the options passed to the GridView.count constructor are passed here 
  // instead
  delegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Show 2 items in each row
    mainAxisSpacing: 10, // 10 pixels of horizontal space between each row
    crossAxisSpacing: 5, // 5 pixels of vertical space between each item
  ),
)
```

## Your Turn

  1. Convert the `GridView.count` into a `GridView.builder`
  2. Define an `itemCount`
  3. Provide an `itemBuilder` function
  4. Use an `SliverGridDelegateWithFixedCrossAxisCount` to define the
     `crossAxisCount` and spacing between items.