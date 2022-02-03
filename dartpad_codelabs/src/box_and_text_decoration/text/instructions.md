# Text

It's time to to move on from boxes to text! How can you display text in Flutter?
How do you work with a left-to-right language, such as English, or a
right-to-left language, such as Hebrew? How do you change the size, or italicize
the text?

## Display Text

To display text on screen, use the `Text` widget. By default, Flutter does not
know which direction to paint text: left-to-right (ltr) or right-to-left (rtl).
Therefore, you must also specify a `textDirection`.

```dart
Text(
  'This is a bit of text!',
  textDirection: TextDirection.ltr,
);
```

## Style Text

In order to style text, pass a `TextStyle` object into the `Text` widget
constructor via the `style` parameter. The `TextStyle` class configures the font
color, size, weight, style, and more. Use it to make your text bold, italicized,
and absolutely humungous!

```dart
Text(
  'This is a bit of text!',
  textDirection: TextDirection.ltr,
  style: TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.blue,
  ),
);
```

Your turn: Display some text and change the look and feel using the `TextStyle`
class! Place your cursor inside the `TextStyle` constructor and press 
`Ctrl+Space` to see additional settings you can configure. Play around with
some of these additional settings to get a feel for styling text in Flutter.

