# Workshop: Box Decoration and Text Styling

Flutter is a toolkit for building User Interfaces, known as UIs. UIs are a
composition of boxes and text laid out on screen. One box may display an image
with a drop shadow, while another box may have rounded corners with some text
sitting on top of a background gradient.

Therefore, the first stop on your Flutter journey is to learn how to style
boxes and text! In the land of Flutter, this is known as Box Decoration and Text
Styling.

Throughout this workshop, you'll work with several "widgets." A widget is a
description of part of a UI, and you can combine many widgets together to create
complex designs. Flutter ships widgets to decorate boxes, display images, render
text, and much more!

# Decorating Boxes

In order style or decorate a portion of the screen with a background color or 
gradient, create a `DecoratedBox` widget and provide `BoxDecoration` 
information via the `decoration` parameter.

```dart
DecoratedBox(
  decoration: BoxDecoration(
    // Define box "styles" or decorations here
  ),
);
```

## Background Colors

To define a background color, pass a `color` parameter to the `BoxDecoration`
constructor. 

```dart
DecoratedBox(
  decoration: BoxDecoration(
    color: Colors.red,
  ),
);
```

### Your turn

First, apply a background to the `DecoratedBox` using a few
`Colors` provided by Flutter. Then, create your own `Color`!

## Background Gradients

To define a background gradient, pass a `gradient` parameter to the
`BoxDecoration` constructor. Flutter includes two types of gradients:
`LinearGradient` and `RadialGradient`. Each type of gradient can be configured
in different ways: you can change the colors, stops, and direction.

```dart
DecoratedBox(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.red, Colors.blue],
    ),
  ),
);
```

### Your turn

Apply a gradient background to the `BoxDecoration`. Place your cursor
inside the `BoxDecoration` or `LinearGradient` constructor and type `Ctrl` +
`Space` to view a list of the parameters you can configure. Play with a few
combinations to get a feel for how gradients work! 
