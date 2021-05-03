# Flexible Space in a SliverAppBar

We can fill the `expandedHeight` of our app bar for an even more dynamic
UI.

We can do this by using the `FlexibleSpaceBar`, this widget is designed
to stretch and collapse its contents. Let's try it out.

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
      baseAssetURL + 'assets/header.jpeg',
      fit: BoxFit.cover,
    ),
  ),
),
```

As the user scrolls now, the app bar will collapse with a parallax
effect on our image, and it will fade into the pinned app bar once
fully collapsed.

For better contrast, let's add another gradient effect behind our
title. We can do this like we did before, but let's use a
`LinearGradient` instead.

Place your image in a `Stack` and add a `DecoratedBox` with the
`LinearGradient` over the `Image`.

```dart
FlexibleSpaceBar(
  title: Text('Horizons'),
  background: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Image.network(
        baseAssetURL + 'assets/header.jpeg',
        fit: BoxFit.cover,
      ),
      DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: <Color>[ Colors.teal[800]!, Colors.transparent ],
          ),
        ),
      ),
    ],
  )
),
```

The `FlexibleSpaceBar` also works hand-in-hand with another
`SliverAppBar` feature - stretch. Let's see how stretching can add
a nice finishing touch to our app, as well as some extra functionality.