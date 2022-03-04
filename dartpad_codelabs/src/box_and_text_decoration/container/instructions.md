# Containers

So far, you've worked with `DecoratedBox` widgets to style backgrounds, borders,
rounded corners and shadows. Furthermore, you've worked with the `Padding` 
Widget to add a bit of space around the `DecoratedBox`. In this section, you'll 
learn about the `Container` widget which combines several Widgets into one,
reducing the amount of Widgets you have to nest!

## Without Container

What if we wanted to nest a child `DecoratedBox` inside a parent `DecoratedBox`?
What if we wanted the parent to have some space around it, and also give the
child some space around it as well?

We can achieve exactly that with our current tools.

```dart
Padding(
  padding: EdgeInsets.all(20),
  child: DecoratedBox(
    decoration: BoxDecoration(color: Colors.blue),
    child: Padding(
      padding: EdgeInsets.all(5),
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.green),
      ),
    ),
  ),
);
```

## With Container

However, the example above requires 4 Widgets and 3 levels of nesting. In other
words, it's difficult to read and understand. Instead, you can use the
`Container` widget to reduce the amount of required Widgets and deep nesting.

First, pass a `margin` argument to the `Container` widget's constructor to
configure how much space should surround the `Container` itself. Then, pass a
`padding` argument to configure much space should surround the child.

Finally, pass a `decoration` argument to define the background decorations that
sit below the child widget, and a `foregroundDecoration` if you want to get
fancy and display some decorations on top of the child widget!

Using `Container`, you can recreate the exact same Widget tree from above, but
now you only have to create 2 Widgets yourself with 1 level of nesting!

```dart
Container(
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(5),
  decoration: BoxDecoration(color: Colors.blue),
  child: DecoratedBox(
    decoration: BoxDecoration(color: Colors.green),
  ),
);
```

## Your turn

Use the `Container` widget to simplify the sample code on the right!
Container not only contains `Padding` and `DecoratedBox` shortcuts, it also
combines several other Widgets into one. Play around with different arguments
you can pass to the `Container` constructor!
