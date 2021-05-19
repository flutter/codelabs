# Flexible space in a SliverAppBar

We can fill the expandedHeight of our app bar, for an even more dynamic UI.

We can do this with the `FlexibleSpaceBar`. This widget is designed to
stretch and collapse its content. Let’s try it out!

Add a `FlexibleSpaceBar` to your `SliverAppBar`. You can move the title
here and add an image as the background.

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

Now, as the user scrolls, the app bar collapses with a parallax effect
on the image and fades into the pinned `SliverAppBar` after it’s fully collapsed.
The `FlexibleSpaceBar` supports multiple
`CollapseMode`s, with this `parallax` behavior being the default.
You can also try out `pin` and `none` to see how the effect can vary.

```dart
FlexibleSpaceBar(
  title: Text('Horizons'),
  collapseMode: CollapseMode.pin,
  // ... 
),
```

For better contrast, let’s add another gradient effect behind the title.
We can do this as we did before, but let’s use a `LinearGradient` instead.

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