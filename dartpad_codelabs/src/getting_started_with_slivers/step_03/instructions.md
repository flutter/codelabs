# Adding To Our UI

Now that we’re lazily building the UI, let’s add some complexity.
The `DailyForecast` object comes with an image for each day, but
we can polish this a bit more. 

Currently, we’re using a `ListTile` in the `Card`. This is a
handy widget that handles a lot of layout and padding for you.
Let’s change the widget to reflect our own style. Feel free to
diverge here. This is a fun side mission to add to the UI now
that it’s more efficient. 

If we look at the current UI, then we can break it into
`Column`s and `Row`s, and make a few adjustments. 

Let’s remove the `ListTile` and create a `Row` instead.
The contents of leading and trailing can become children
of the `Row`. Because title and subtitle are stacked
vertically, let’s wrap them in a `Column` and place the
`Column` in between.

```dart
Row( 
  children: <Widget>[
    // The former contents of our ListTile:
    // leading
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          // title
          // subtitle
      ],
    )
    // trailing
  ],
)
```

This is pretty close to what the `ListTile` generated. Add some
`Padding` to neaten the UI, and put an `Expanded` widget around
the `Column` to handle any overflow from the forecast description.

```dart
Expanded(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // title
      // subtitle
    ],
  )
)
```

Great! Let’s add our images now. They’ll add more context to the
forecasts. Using a `Stack`, we can use the image as a background
for the date. 

Add a `SizedBox` around the `Stack`. The children of a `Stack` are
stacked with the first child listed on the bottom, so place the
`Image` first, followed by the `Text`. We’ll set a size for the
`Stack` and `Image` so that they fill the space of the `SizedBox`.

```dart
SizedBox(
  height: 200.0,
  width: 200.0,
  child: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Image.network(
        dailyForecast.imageId,
        fit: BoxFit.cover,
      ),
      Text(
        dailyForecast
          .getDate(currentDate.day)
          .toString(),
        style: textTheme.headline2,
      ),
    ],
  ),
),
```

To add some contrast between the `Text` and the `Image`, place a gradient
in between, for a nice visual effect. We can do this with a `DecoratedBox`
and a `RadialGradient`. `Center` the `Text` so it lines up with the gradient.

```dart
SizedBox(
  height: 200.0,
  width: 200.0,
  child: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[
              Colors.grey[800]!,
              Colors.transparent,
            ],
          ),
        ),
        child: Image.network(
          dailyForecast.imageId,
          fit: BoxFit.cover,
        ),
      ),
      Center(
        child: Text(
          dailyForecast
            .getDate(currentDate.day)
            .toString(),
          style: textTheme.headline2,
        ),
      ),
    ],
  ),
),
```