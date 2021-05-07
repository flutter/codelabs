# Flexible Space in a SliverAppBar

We can fill the `expandedHeight` of our app bar for even more visual interest.

We can do this by using the `FlexibleSpaceBar`. This widget is designed
to adapt the layout of its contents as the space changes size. 
Let's try it out.

Add a `FlexibleSpaceBar` to your `SliverAppBar`. You can move your title
here, and we can add an image as the background.

```dart
SliverAppBar(
  pinned: true,
  backgroundColor: Colors.teal[800],
  expandedHeight: 200.0,
  flexibleSpace: FlexibleSpaceBar(
    title: Text('Horizons'),
    background: Image.network(
      headerImage,
      fit: BoxFit.cover,
    ),
  ),
),
```

As the user scrolls now, the app bar will collapse with a parallax
effect on our image, and it will fade into the pinned app bar once
fully collapsed. The `FlexibleSpaceBar` supports multiple
`CollapseMode`s, with this `parallax` behavior being the default.
You can also try out `pin` and `none` to see how the effect can vary.

```dart
FlexibleSpaceBar(
  title: Text('Horizons'),
  collapseMode: CollapseMode.pin,
  // ... 
),
```

For better contrast, let's add another gradient effect behind our
title. We can do this like we did before, but let's use a
`LinearGradient` instead.

Wrap your `Image` in a`DecoratedBox`, with the `LinearGradient` in the
`DecorationPosition.foregound`.

```dart
FlexibleSpaceBar(
  title: Text('Horizons'),
  background: DecoratedBox(
    position: DecorationPosition.foreground,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: <Color>[
          Colors.teal[800]!,
          Colors.transparent,
        ],
      ),
    ),
    child: Image.network(
      headerImage,
      fit: BoxFit.cover,
    ),
  ),
),
```


Just as the `FlexibleSpaceBar` supports collapsing our expanded `SliverAppBar`, 
it also works hand-in-hand with another `SliverAppBar` feature - stretch.
Let's see how stretching can add a nice finishing touch to our app, as
well as some extra functionality.