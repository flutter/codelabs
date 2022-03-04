# Icons

Another way to decorate an app is through the use of icons: graphical symbols
that represent an aspect of your UI. Icons need to look sharp at any resolution.
Therefore, instead of `png` or `jpeg` images, Flutter uses scalable icon fonts.

Use the `Icon` widget to display an icon contained within an icon font. Flutter
is preloaded with icon packages for Material and Cupertino applications. You can
also find additional icon packages on pub.dev, or create your own!

```dart
Icon(
  Icons.ac_unit,
  color: Colors.indigo,
  size: 48,
)
```

## Your turn

Display an icon using the `Icon` widget. Adjust the size and color!
