# Long Lists of Content

In the previous step, you created a `ListView` that displayed 30-40 `children`
widgets. However, `ListView` widgets often need to scroll through hundreds or
even thousands of children widgets. For example, a social media app that allows
you to scroll continuously through list of posts.

How can you make `ListView` efficient enough to handle thousands of items? Build
widgets on-demand!

## ListView.builder

In the previous example, all of the `BlueBox` and `SizedBox` widgets are created
in the `build` method. In other words, all of the `children` are built up-front
at the same time. That's a lot of work if you have thousands of items.

Instead of building everything up-front, what if Flutter could create widgets
on-demand, when they're scrolled into view? That's exactly what
`ListView.builder` is for. 

Rather than creating all `children` widgets up-front, provide `ListView.builder`
an `itemCount` that defines how many widgets to build, and an `itemBuilder`
function which tells Flutter how to create widgets as they're scrolled into
view.

Just like the normal `ListView` constructor, `ListView.builder` may scroll
horizontally or vertically.

```dart
ListView.builder(
  // A list with 500 widgets
  itemCount: 500,

  // A function that creates a BlueBox when the widget is scrolled into view
  itemBuilder: (BuildContext context, int index) => BlueBox(), 
);
```

## Your Turn

  1. Convert the `ListView` into a `ListView.builder`
  2. Use the `itemBuilder` function to create a `Column` with two `Text`
     widgets: a "title" and "subtitle." The title widget should display the
     index. The subtitle may contain dummy text, and may be styled differently
     than the title Text.
  3. Set the `itemCount` really high to see it fly!
  4. Everything feels scrunched together. Try adding some `padding` to the list!
  5. It's better, but what happened to the separators? Find out in the next
     step!
