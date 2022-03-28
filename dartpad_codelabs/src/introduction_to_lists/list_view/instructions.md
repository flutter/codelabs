# Workshop: Introduction to Lists of Content

Scrollable lists of content are fundamental to many applications. For example,
music apps display playlists: scrollable lists of tracks. Email apps display
inboxes: scrollable lists of messages. Social apps display feeds: scrollable
lists of posts. They're everywhere!

In the previous workshop on [Building Layouts with
Flutter](https://dartpad.dev/workshops.html?webserver=https://raw.githubusercontent.com/flutter/codelabs/master/dartpad_codelabs/src/layouts),
you used `Row` and `Column` to lay out widgets horizontally and vertically.
However, if the contents of a `Row` and `Column` extend beyond the screen, the
content does not automatically become scrollable.

Instead, use Flutter's `Scrollable` widgets! 

## ListView

The `ListView` widget allows users to scroll through a list of content, either
horizontally or vertically. Provide a list of `children` widgets to the 
`ListView`, and Flutter will make them scrollable. 

The following example lays out 5 blue boxes from top-to-bottom, scrolling in a
vertical direction. Each box is separated from the next by a small `SizedBox`.

```dart
ListView(
  children: [
      BlueBox(),
      SizedBox(height: 5),
      BlueBox(),
      SizedBox(height: 5),
      BlueBox(),
      SizedBox(height: 5),
      BlueBox(),
      SizedBox(height: 5),
      BlueBox(),
  ]
);
```

## Scroll Direction

By default, the `ListView` lays out widgets from top-to-bottom, scrolling
vertically. `ListView` can also lay out widgets scrolling horizontally by
changing the `scrollDirection`. This allows users to scroll depending on the
text direction: left-to-right or right-to-left.

The following example lays out 5 blue boxes from left-to-right, scrolling in a
horizontal direction. Notice the `SizedBoxes` now define a `width` instead of
`height`.

```dart
ListView(
  scrollDirection: Axis.horizontal, // ListView scrolls horizontally
  children: [
      BlueBox(),
      SizedBox(width: 5),
      BlueBox(),
      SizedBox(width: 5),
      BlueBox(),
      SizedBox(width: 5),
      BlueBox(),
      SizedBox(width: 5),
      BlueBox(),
  ]
);
```

## Your Turn

Create a `ListView` and populate it with 30-40 `BlueBox` widgets. Add separator 
widgets as well. Then, change the scroll direction to horizontal.

Note: Unfortunately shift + mouse wheel does not scroll horizontally in Dartpad
at this time! Please use a trackpad if available.