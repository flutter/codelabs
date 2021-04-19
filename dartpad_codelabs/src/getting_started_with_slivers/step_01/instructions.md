# Introduction

Welcome to the introductory sliver codelab for Flutter!
In this workshop, you will learn how to efficiently build
scrolling widgets and use slivers directly to create a rich
scrolling experience for users.

This codelab is best for folks already familiar with building simple
Flutter applications. If this is your first time using Flutter,
check out [Writing Your First Flutter App](https://flutter.dev/docs/get-started/codelab)
to get started using Flutter.


## What is a Sliver? 

What is a sliver? A sliver is a portion of scrollable area,
which means anything that scrolls in Flutter is a sliver.
If you've used a ListView or GridView before, congratulations!
You have already used a sliver somewhere in your Flutter application.
Most often, slivers are wrapped in convenience classes such as these.
This is because slivers use a different layout protocol from most
other widgets in the Flutter framework. We'll dicsuss this later in
the workshop. For now, let's take a tour of our starter code.

## A Simple Scrolling UI

Here we have a weather forecasting application, called **Horizons**.

This `MaterialApp` consists of a `Scaffold` with a  `WeeklyForecastList` as the body. This widget consistes of a `SignleChildScrollView` that contains a `Column` featuring the next 7-day forecast.

```dart
SingleChildScrollView(
  child: Column(
      children: <Widget>[ /* Our 7 day forecast */],
  ),
);
```

We also have our own `ScrollBehavior` set for our application. 

```dart
MaterialApp(
  scrollBehavior: ConstantScrollBehavior(),
  // ...
)
```

ScrollBehaviors are inherited by descendent `Scrollable`s. They inform a Scrollable's `ScrollPhysics` and apply decorations like `Scrollbar`s and `GlowingOverscrollIndicator`s. 

By default, ScrollBehaviors are dynamic and change depending on the current platform you may be running this codelab on, so we've added a custom ScrollBehavior to provide a consistent experience for everyone taking this codelab.




