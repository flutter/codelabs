# Material Widgets

In the previous step, you created a `ListItem` widget that could be reused in
different parts of your application. Creating your own `ListItem` widget is
perfect when you need to implement a custom, reusable widget for your app. It
gives you full control over the content, background colors, padding, etc.

However, if your app follows the [Material Design
specification](https://material.io/), or if you want to quickly prototype
without creating your own designs, you may not need to create your own
`ListItem` widget. Instead, consider the Material Design widgets provided by
Flutter.

## ListTile

The `ListTile` widget fulfills the same role as the `ListItem` widget created in
the previous step. The only difference is that it defines content sections,
padding, spacing, and text styles according to the Material Design
specification, rather than your own custom design.

```dart
ListTile(
    title: Text('Item 1'),
    subtitle: Text('Subtitle'),
    leading: Icon(Icons.person),
)
```

## Card

The `Card` widget wraps another widget, providing rounded corners and drop
shadows defined by the Material Design specification. For example, you could
wrap the `ListTile` inside a `Card` to give it a background color and drop
shadow!

```dart
Card(
  child: ListTile(
    title: Text('Item 1'),
    subtitle: Text('Subtitle'),
    leading: Icon(Icons.person),
  ),
)
```

## Summary

The important lesson: If you need to implement a custom design, you can always
create your own widgets. If you're following the Material Design spec, use the
material design widgets!

## Your Turn

Replace your custom `ListItem` widget with the `ListTile` widget provided by
Flutter. Then, wrap it in a `Card` widget to see the effect!
