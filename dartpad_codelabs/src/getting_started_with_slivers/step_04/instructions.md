# Working directly with slivers

This is looking really nice now. Although, the `AppBar`
seems a little less exciting. Let’s work with slivers directly,
so we can experiment with the `SliverAppBar`. 

First, we need to do some setup to work with slivers.
Slivers are contained in a `ScrollView`. The `ListView`
set up some of this for us, so now we need a container
for the slivers. Let’s use a `CustomScrollView`. Go ahead,
and place one in the body of the `Scaffold`. A custom
`ScrollView` takes a list of slivers, so place the
`WeeklyForecastList` there, and we’ll convert that next.

```dart
home: Scaffold(
  appBar: AppBar(
    title: Text('Horizons'),
    backgroundColor: Colors.teal[800],
  ),
  body: CustomScrollView(
    slivers: <Widget>[
      WeeklyForecastList(),
    ],
  ),
),
```

Now, for the `WeeklyForecastList`, let’s change it to use a
`SliverList` instead of a `ListView`. A `SliverList` takes a
`SliverChildDelegate`, which provides the children. One kind
of `SliverChildDelegate` is a `SliverChildBuilderDelegate`, which
is the same as the builder provided in the `ListView`. We can
keep the existing builder, and provide it to the delegate instead.
The delegate also takes a childCount, which is similar to the
`ListView`’s itemCount.

```dart
return SliverList(
  delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      final DailyForecast dailyForecast =
          Server.getDailyForecastListByID(index);
      return Card(
        // Remains the same
      );
    },
    childCount: 7,
  )
);
```

You are now working directly with slivers - hooray! 🎉 

In the next step we'll explore the `SliverAppBar`.  