# Rounded Corners

Now, it would be a pretty boring world if all the boxes in your app had to have
sharp edges. Some designs just look better with smooth, rounded corners! 
Luckily, you can define the roundness of each corner by passing `borderRadius` 
information to the `BoxDecoration` constructor.

You can either define a uniform size and shape for all corners, or define a
unique size and shape for each individual corner: top-left, top-right,
bottom-left, and bottom-right.

## Uniform Corners

Use the `BorderRadius.all` constructor to give every corner the same size and
shape, known as a `Radius`. A `Radius` can be either circular or elliptical in
shape.

```dart
BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: Colors.blue,
)
```

If you find yourself using circular border radii most of the time, you can even
use a shorthand constructor: `BorderRadius.circular`.

```dart
BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.blue,
)
```

## Individual Corners

To define a unique size and shape (aka `Radius`) for each corner, use the 
`BorderRadius.only` constructor. This example even demonstrates elliptical 
corners for fun!

```dart
BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.elliptical(20, 40),
    topRight: Radius.elliptical(40, 20),
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(40),
  ),
  color: Colors.blue,
)
```

## Your turn

Give the `DecoratedBox` some rounded corners! First, try using
`BorderRadius.all`, then `BorderRadius.circular`, finally `BorderRadius.only`.
Play around with different types and sizes of `Radius`.
