# Adding To Our UI

Now that we are lazily building our UI, let's add some complexity. Our
`DailyForecast` object comes with an image for each day, and we can
polish this up a bit more.

Currently, we are using a `ListTile` in our `Card`. This is a super
handy widget that handles a lot of layout and padding for you. Let's
change it up to reflect our own style. Feel free to diverge here, this
is a fun side mission to add to our UI now that it is more efficient.

If we look at our current UI, we can break this up into Columns and
Rows, and make a few adjustments.

Let's remove the `ListTile`, and instead, create a `Row`. The contents
of `leading` and `trailing` can become children of our Row. Since the
`title` and `subtitle` were stacked vertically, let's wrap those in a
`Column` and place it in bewteen.

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

This is pretty close to what our ListTile generated for us. Add some
`Padding` to neaten up as you like and put an `Expanded` widget around
the Column to handle any overflow of our forecast description.

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

Great! Let's see about adding our images now, maybe they'll add more
context to our forecasts. Using a `Stack`, we can use the image as a
background for the date.

// TODO(Piinks): Consider breaking this next part out into a separate step

Add a `SizedBox` around the `Stack`. The children of a Stack are stacked
with the first listed on the bottom, so place the Image first, followed
by the Text. We'll set a fit for our Stack and Image so that it will
fill the whole space of the SizedBox.

```dart
SizedBox(
  height: 200.0,
  width: 200.0,
  child: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Image.network(
        baseAssetURL + dailyForecast.imageId,
        fit: BoxFit.cover,
      ),
      Text(
        dailyForecast.getDate(currentDate.day).toString(),
        style: textTheme.headline2,
      ),
    ],
  ),
),
```

To add some contrast between the Text and the Image, let's place a
gradient in between for a nice visual effect. We can do this with a
DecoratedBox and a RadialGradient. Center the Text as well so it lines
up with the gradient.

```dart
SizedBox(
  height: 200.0,
  width: 200.0,
  child: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Image.network(
        baseAssetURL + dailyForecast.imageId,
        fit: BoxFit.cover,
      ),
      DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[ Colors.grey[800]!, Colors.transparent ],
          ),
        ),
      ),
      Center(
        child: Text(
          dailyForecast.getDate(currentDate.day).toString(),
          style: textTheme.headline2,
        ),
      ),
    ],
  ),
),
```