# Working Directly with Slivers

This is looking really nice now. Although, our `AppBar` does seem a
little less exciting. Let's make the jump over to work with
slivers directly, so we can experiment with the `SliverAppBar`.

First, we'll need to set ourselves up for working with slivers.
Slivers are contained within a `ScrollView`. Our `ListView` set some of this
up for us, so now we need a container for our slivers. Let's use a
`CustomScrollView`. Go ahead and place one in the body of our `Scaffold`.
A `CustomScrollView` takes a list of slivers, so let's place our
`WeeklyForecastList` there and we'll convert that next.

```dart
home: Scaffold(
  appBar: AppBar(
    title: Text('Horizons'),
    backgroundColor: Colors.teal[800],
  ),
  body: CustomScrollView(
    slivers: <Widget>[ WeeklyForecastList(), ],
  ),
),
```

Now for our `WeeklyForecastList`, let's change it to use a `SliverList`
instead of a `ListView`. A `SliverList` takes a `SliverChildDelegate`,
which provides the children. One kind of `SliverChildDelegate` is a
`SliverChildBuilderDelegate` - which is the same as the builder provided
to the `ListView`! We can keep our existing builder, and instead provide
it to the delegate. The delegate also takes a `childCount`, similar to
our ListView's `itemCount`.

```dart
return SliverList(
  delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      final DailyForecast dailyForecast = Server.getDailyForecastListByID(index);
      return Card(
        // Remains the same
      );
    },
    childCount: 7,
  )
);
```

You are now working directly with slivers - hooray! In the next step
we'll explore the `SliverAppBar`.  