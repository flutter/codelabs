# Adding a SliverAppBar

Now that we have our `CustomScrollView` and `SliverList` in place, we
can add a `SliverAppBar` for a more dynamic header.

In our `HorizonsApp`, add a `SliverAppBar` at the top of our
`CustomScrollView` and remove the `AppBar` in the `Scaffold`. This
widget shares similar properties to our existing AppBar, so let's
migrate those too.

```dart
body: CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
      title: Text('Horizons'),
      backgroundColor: Colors.teal[800],
    ),
    WeeklyForecastList(),
  ],
),
```

We now have a scrolling app bar, this will scroll as if it were part of
our list. `SliverAppBar` has a lot more dynamic features though. Let's
explore `floating`, `pinned`, `snap` and collapsing behaviors for
our new `SliverAppBar`.

Pinning the app bar will keep it at the top of the screen, like
the `AppBar` we had before.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  pinned: true,
),
```

A floating app bar will scroll out of view, but then scroll back into
view when the users scrolls back in that direction, reagrdless of
the current position in the scroll view.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  floating: true,
),
```

Floating app bars also support a snap animation. This will snap the
app bar in and out of view as the users scrolls, eather than floating
in with the user input.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  floating: true,
  snap: true,
),
```

Lastly, let's see how the `SliverAppBar` behaves when we use an
`expandedHeight`. This adds to the size of the app bar. This
expanded area will collapse as the user scrolls. This can be
combined with the floating, pinned and snap features we
discussed above.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  pinned: true,
  expandedHeight: 200.0,
),
```

We can fill this extra space using a `FlexibleSpaceBar`, let's explore
that in our last step.