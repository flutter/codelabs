# Efficient Scrolling in Flutter

Our first task is to convert our `SingleChildScrollView` to make our
scrolling UI more efficient, but first, let's talk about why and when
this widget may not be the most efficient choice.

Currently, our UI is pretty simple. The scrolling seven day forecast is
likely to fit on most screens. This is ok for now, but as we add to our
UI, we'll want to remain performant.

If we were to remove the `SingleChildScrollView`, we could end up with
an error from the `Column` overflowing. Try if you like to see what
this looks like, and resize the window so that the contents of the
Column don't fit in the screen.

This is where we can see how the layout protocol of slivers differs
from their relative, the box layout protocol. A `Column` is laid out
using `BoxConstraints`. It has a height and width, and a position
within the window. A `Column` cannot lay out beyond the bounds of
the window.

When we wrap our `Column` in a `SingleChildScrollView`, we are
essentially wrapping our `Column` in a sliver. Slivers lay out using
`SliverConstraints` and have a `SliverGeometry`. When working with
slivers, the window pane we were constricted to previously becomes
an infinite amount of space in the given axis, and so we use language
different from height, width and position. As a sliver, we need to
know things like how much is visible, and how far to the next sliver,
and, how far have we scrolled? The answers to these questions allow us
to lazily load slivers, meaning we only build the slivers we can see,
and a little bit of the ones on either edge. This makes our scrolling
more efficient as we won't build any slivers we don't need to, since
we cannot see them.

## Making the Switch

Since a `SingleChildScrollView` is only one sliver, we aren't lazily
loading our UI. Instead, as our `Column` gets bigger, all of its
contents are being built. Before we add more to our UI, let's make
this more efficient by using a `ListView` instead.

We'll be using the `builder` constructor, which is called on demand
like we explained above for lazy loading.

Replace `SingleChildScrollView` with `ListView.builder`, and remove
the `Column`. This constructor requires an `itemBuilder`, which
provides a `BuildContext` as well as the current item index. We
can also specify the `itemCount` since we know we are displaying a
weekly forecast.

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

Now each of our `Card`s are individually wrapped in a sliver, and
only being built as needed.

We are also going to change our access to our mock `Server` class here.
Rather than request all of the data at once, we have the ability to
access our forecasts by index in our builder.

```dart
// Remove this:
final List<DailyForecast> forecasts = Server.getDailyForecastList();

// And add this in our ListView itemBuilder
final DailyForecast dailyForecast = Server.getDailyForecastByID(index);
```

Now that we are building more efficiently, let's add more to our
`ListView`.