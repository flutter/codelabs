# List Separators

In the last step, you converted the `ListView` into a lazy `ListView.builder`,
which efficiently scrolls through long lists of content. However, you lost the
`SizedBox` separators between each item. Bummer.

Luckily, Flutter has a tool for long lists with separators:
`ListView.separated`. Not only does it create the list items on-demand, it also
creates separators on-demand! Once again, the trick is to provide a function to
build seperators as they're scrolled into view, rather than building all
seperators up-front.

```dart
ListView.separated(
  // Create a list of 500 items.
  itemCount: 500,

  // Provide a function to build the 500 items as they scroll into view.
  itemBuilder: (BuildContext context, int index) => Text('Item $index'),

  // Provide a function to build a SizedBox separator between each item. The
  // separators are also created when they are scrolled into view.
  separatorBuilder: (BuildContext context, int index) => SizedBox(height: 20),
)
```

## Your Turn

Convert the `ListView.builder` into a `ListView.separated`. Provide a 
`separatorBuilder` function to create space between each item. 