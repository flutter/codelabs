# Introduction

Welcome to the introductory sliver workshop for Flutter! 👋

In this workshop, you will learn how to efficiently build
scrolling widgets and use slivers directly, to create a rich
scrolling experience for users.

This workshop is best for folks already familiar with building simple
Flutter applications. If this is your first time using Flutter, then
check out **[Writing Your First Flutter App](https://flutter.dev/docs/get-started/codelab)**
to get started using Flutter.


## What is a sliver? 

A sliver is a portion of a scrollable area, which means anything
that scrolls in Flutter is a sliver. If you've used `ListView`
or `GridView`, congratulations! You've already used a sliver
in your Flutter app. Most often, slivers are wrapped in
convenience classes such as these. This is because slivers use
a different layout protocol from most other widgets in the
Flutter framework. We'll discuss layout protocol later in
the workshop. For now, let's take a tour of our starter code.

## Simple scrolling UI

Here, we have a forecasting app, called **Horizons**.

This `MaterialApp` consists of a `Scaffold` with a  `WeeklyForecastList`
as the body. This widget consists of a `SingleChildScrollView` that
contains a `Column` featuring the next 7-day forecast.

```dart
SingleChildScrollView(
  child: Column(
    children: <Widget>[
      /* Our 7 day forecast */
    ],
  ),
);
```

We also have our own `ScrollBehavior` set for our app. 

```dart
MaterialApp(
  scrollBehavior: ConstantScrollBehavior(),
  // ...
)
```

`ScrollBehavior`s are inherited by descendent `Scrollable`s. They inform
a `Scrollable`'s `ScrollPhysics` and apply decorations like `Scrollbar`s
and `GlowingOverscrollIndicator`s. 

By default, `ScrollBehavior`s are dynamic and change depending on the
current platform that you're running this workshop on, like
`ScrollPhysics`. On Mac and iOS platforms, you'll see
`BouncingScrollPhysics` by default, while on others you'll see
`ClampingScrollPhysics`. To provide a consistent experience for
everyone taking this workshop, we added a custom `ScrollBehavior`.

## Where to next?

Throughout this workshop, we'll build on this code.
We’ll convert the SingleChildScrollView to be a more
efficient, lazy loading ListView.This allows us to add
more to our app and remain performant.

We’ll then dive a little deeper and transform the code
to use slivers directly, and we’ll experiment with
dynamic scrolling effects like floating app bars. Move
on to the next step to begin!