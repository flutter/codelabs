# Adding a SliverAppBar

Now that we have our `CustomScrollView` and `SliverList` in place, we
can add a `SliverAppBar` for a more dynamic header.

In the `HorizonsApp`, add a `SliverAppBar` at the top of the
`CustomScrollView`, and remove the `AppBar` in the `Scaffold`.
The `SliverAppBar` shares similar properties with the existing
`AppBar`, so let’s migrate those too.

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

We now have a scrolling app bar. This app bar scrolls as if it were
part of our list. The `SliverAppBar` has a lot more dynamic features
though, so let’s explore pinned, floating, snap, and collapsing behaviors
for the new `SliverAppBar`.

Pinning the app bar keeps it at the top of the screen, like
the `AppBar` we had before.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  pinned: true,
),
```

A floating `SliverAppBar` will scroll out of view, but it scrolls back
into view when the user scrolls back in that direction, regardless
of the current position in the scroll view.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  floating: true,
),
```

Floating app bars also support snap animation. This animation snaps
the `SliverAppBar` in and out of view as the user scrolls, rather than floating
in with the user input.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  floating: true,
  snap: true,
),
```

Last, let’s see how the `SliverAppBar` behaves when we use an
expandedHeight. This adds to the size of the app bar and collapses
as the user scrolls. The expandedHeight can be combined with the
floating, pinned, and snap features that were discussed earlier.

```dart
SliverAppBar(
  title: Text('Horizons'),
  backgroundColor: Colors.teal[800],
  pinned: true,
  expandedHeight: 200.0,
),
```

We can fill this extra space using a `FlexibleSpaceBar`. Let’s
explore that in the next step.