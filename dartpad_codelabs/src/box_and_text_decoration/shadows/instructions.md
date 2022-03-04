# Shadows

In some cases, you may want one section of content to sit "above" or "on top of"
another section of content. To establish this type of visual hierarchy, your
designer may decide the content sitting on top should cast a shadow over the
content sitting below. These are often called "drop shadows" or "box shadows."

When it comes to Flutter, `BoxDecoration` once again saves the day. You may 
provide a list of `BoxShadow` objects to the `BoxDecoration` constructor to
configure one or more shadows!

```dart
BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.orange,
      offset: Offset(10, 20),
      blurRadius: 10,
      spreadRadius: 0,
    )
  ],
  color: Colors.blue,
)
```

## Your turn

Add a `BoxShadow` to the `BoxDecoration`! Play around with the 
various options you can define with a `BoxShadow`. Then, add a second shadow
to see the effect.
