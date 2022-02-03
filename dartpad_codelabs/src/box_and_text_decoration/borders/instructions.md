# Borders

By this point, you've worked with background colors, gradients and images: nice 
job! Now, it's time to try out borders.

Designers often use borders to visually separate different sections of
content. Some sections may have a thick, black border on the right side,
while another section may be surrounded by a thin, grey border on all sides.

You can provide a `Border` class to the `BoxDecoration` constructor to configure
the size and color of the borders.

## BorderSide

Use the default `Border` constructor to configure the look of the top, left,
bottom and right sides individually. The `BorderSide` class contains information
about what each side or edge should look like.

```dart
BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.orange, width: 20),
    left: BorderSide(color: Colors.green, width: 30),
    bottom: BorderSide(color: Colors.yellow, width: 5),
    right: BorderSide(color: Colors.red, width: 10),
  ),
);
```

## Border.all

In many cases, you'll want the top, left, bottom and right borders to all look
the same. Rather than using the default `Border` constructor, use the
`Border.all` constructor as a shortcut:

```dart
BoxDecoration(
  border: Border.all(
    color: Colors.orange,
    width: 20,
  ),
);
```

Your turn: Apply a border to the `BoxDecoration`! Play with different borders
and sides to get a feel for the various options you can configure, then try 
the `Border.all` constructor!
