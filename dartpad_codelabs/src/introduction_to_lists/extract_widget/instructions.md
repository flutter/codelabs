# Extract a "ListItem" Widget

So far, you've created a `ListView` that can scroll through large lists of
content. Now, take a minute to examine the code you've written. Are there any 
parts you find difficult to read or understand? Are there any parts that could
be reusable?

One section might stand out: The `itemBuilder` function. It returns a `Column`
with multiple children. The `seperatorBuilder` is almost lost underneath it!
Furthermore, the design of the list items may change, adding even more to the 
`Column`.

This is a very common situation: as a build method grows in size, it can be
harder to read and understand. To reduce such complexity, move parts of your
build method into smaller widgets with meaningful names. This is known as
"extracting a widget."

For example, you can move all of the code inside the `itemBuilder` method to a
new `StatelessWidget` named `ListItem`. Hopefully, this makes code easier to
read and maintain in the future. It also means you can reuse the same widget in
other areas!

```dart
ListView.separated(
  itemCount: 500,

  // Moving the Column code to a new "ListItem" widget reduces the amount of 
  // code within the ListView.
  itemBuilder: (BuildContext context, int index) => ListItem(index: index),

  // No longer hidden!
  separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10),
);
```

## Your Turn

  1. Create a new `ListItem` widget that extends `StatelessWidget`.
  2. Use an instance variable inside the `ListItem` to store the `index`
  3. Move the `Column` code to the `build` method of the `ListItem` widget
  4. Use the `ListItem` widget in place of the `Column` code.

Note: If you have not created your own `StatelessWidget` before, please review
the [Create a
CustomButton](https://dartpad.dev/workshops.html?webserver=https://raw.githubusercontent.com/flutter/codelabs/master/dartpad_codelabs/src/custom_button)
workshop.