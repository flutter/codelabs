# Efficient scrolling in Flutter

The first task is to convert the `SingleChildScrollView` to make our
scrolling UI more efficient, but first, let's discuss why and when
this widget might not be the most efficient choice.

Currently, the UI is pretty simple. The scrolling 7-day forecast is
likely to fit most screens. This is OK for now, but
as we add to the UI, we want to remain performant.

If we remove the `SingleChildScrollView`, then we could get an
error due to the `Column` overflowing.  If you want to, try
and see what this looks like by resizing the window so that
the contents of the `Column` don’t fit in the screen.

This is where we can see how the layout protocol of slivers differs
from their relative, the box layout protocol. A `Column` is laid out
using `BoxConstraints`. It has a height and width, and a position
within the window. A `Column` cannot lay out beyond the bounds of
the window.

When we wrap the `Column` in a `SingleChildScrollView`, we’re
essentially wrapping the `Column` in a sliver. Slivers lay out
using `SliverContraints` and have a `SliverGeometry`. When you work
with slivers, the window size that we were constricted to
previously becomes an infinite amount of space in the given axis.
So, we use language different from height, width, and position.
For a sliver, we need to know things like how much is visible,
how far to the next sliver, and how far we scrolled. The answers
enable us to lazily load slivers, meaning we only build slivers
that we can see and a little bit of the ones on either edge. This
makes scrolling more efficient because we won’t build slivers that
we don’t need because the slivers aren’t seen.

## Making the switch

Because a `SingleChildScrollView` is only one sliver, we aren’t
lazily loading the UI. Instead, as the `Column` gets bigger, all
of its contents are built. Before we add more to the UI, let’s
make it more efficient by using `ListView`.

We’ll use the `builder` constructor, which is called on demand,
for lazy loading.

Replace the `SingleChildScrollView` with the `ListView.builder`,
and remove the `Column`. This constructor requires an itemBuilder,
which provides a `BuildContext` and the current item index. We
must also specify the itemCount because we know that we’re
displaying a weekly forecast.

```dart
return ListView.builder(
  itemCount: 7,
  itemBuilder: (BuildContext context, int index) {
    return Card(
      // This remains unchanged.
    );
  }
);
```

Now each of the `Card`s is wrapped in a sliver and only built as it’s needed.

We’re also going to change the access to the mock `Server` class. Rather
than request all of the data at one time, we can access the forecasts by
index in our builder.

```dart
// Remove this:
final List<DailyForecast> forecasts =
    Server.getDailyForecastList();

// And add this in our ListView itemBuilder
final DailyForecast dailyForecast =
    Server.getDailyForecastByID(index);
```

Now that we’re building more efficiently, let’s add more to the `ListView`.