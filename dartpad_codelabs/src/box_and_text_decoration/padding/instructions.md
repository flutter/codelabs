# Padding

In the previous step, the borders of the `DecoratedBox` run up against the edges
of the window. What if you wanted to give your `DecoratedBox` some room to 
breathe by surrounding it with some space? That's where the `Padding` widget 
comes in!

You can nest any widget inside a `Padding` widget to configure how much
space should surround it. You can give each side of the box the same amount of
padding or define each side individually.

## Uniform padding

The `Padding` widget constructor accepts a `child` argument that determines
which widget should be padded. It also accepts `EdgeInsets` information via the
`padding` argument to configure exactly how much padding should appear on each
side. To give every side the same padding, use the `EdgeInsets.all` constructor.

```dart
Padding(
  padding: EdgeInsets.all(20),
  child: DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue,
    ),
  ),
);
```

## Symmetric padding

Often times, you'll want to apply the same padding to the top and bottom edges,
or left and right edges. These are known as the `vertical` and `horizontal` 
edges. The `EdgeInsets` class provides a shortcut constructor for exactly this 
case: `EdgeInsets.symmetric`.

```dart
Padding(
  padding: EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 10,
  ),
  child: DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.purple,
    ),
  ),
);
```

## Individual padding

Finally, you may need to apply unique padding to each side. Use the
`EdgeInsets.only` constructor to define the padding of the top, left, bottom and
right sides.

```dart
Padding(
  padding: EdgeInsets.only(
    top: 20,
    left: 5,
    bottom: 15,
    right: 30,
  ),
  child: DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.green,
    ),
  ),
);
```

## Your Turn

Wrap the `DecoratedBox` on with a `Padding` widget. Play around with
the various `EdgeInsets` constructors to create different padding effects.
