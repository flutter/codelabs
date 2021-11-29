# Images

Background colors and gradients are great, but what about displaying images? In
some cases, you'll want to display a background image. In other cases, you'll
want to display the standalone image. Flutter provides tools to handle
both of these cases!

## Background Images

Just like background colors and gradients, the `BoxDecoration` class is used to
display a background image. Pass a `DecorationImage` to the `BoxDecoration`
constructor via the `image` parameter.

The `DecorationImage` class defines which image should be displayed and what it
should look like: the alignment, fit, scale, etc. `ImageProvider` classes are
used to load images from various locations: the internet, a local file,
in-memory, and more. The following example uses a `NetworkImage` to load an
image from the internet.

```dart
BoxDecoration(
  image: DecorationImage(
    image: NetworkImage(
      'https://dartpad-workshops-io2021.web.app/example_flutter/images/dash.png',
    ),
    fit: BoxFit.cover,
  ),
);
```

Your turn: Apply a background image to the `DecoratedBox` and play around with
various options you can provide to `DecorationImage`.

## Standalone Images

In some cases, you may not want to use an image as a background, but rather as
a standalone that flows as part of the content of your application.

To display standalone images, use the `Image` widget. Like the
`DecorationImage`, the `Image` widget uses an `ImageProvider` to determine which
image should load and from where.

The `Image` widget also provides various constructor parameters you can use to
alter the display of the image: width, height, alignment, and more.

```dart
Image(
  image: NetworkImage(
    'https://dartpad-workshops-io2021.web.app/example_flutter/images/dash.png',
  ),
  fit: BoxFit.cover,
);
```

As a shortcut, the `Image` widget also offers constructors for common
`ImageProvider` classes. For example, the previous code snippet can be 
shortened using the `Image.network` constructor:

```dart
Image.network(
  'https://dartpad-workshops-io2021.web.app/example_flutter/images/dash.png',
  fit: BoxFit.cover,
);
```

Your turn: Replace the `DecoratedBox` with a `Center` widget that contains an
`Image` widget! Try out various options: fit, alignment, and so on. Did you try
width and height? Did you notice they don't work yet! We'll discuss that in the
Layouts workshop :)
