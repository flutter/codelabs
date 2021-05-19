# Stretching the FlexibleSpace

In order to stretch our `SliverAppBar`, we must be using
`BouncingScrollPhysics`. This is part of the `ConstantScrollBehavior`
we had set up in the very beginning of this workshop.
`BouncingScrollPhysics` allows us to overscroll, revealing empty
space at the end of a scrollable area.

With `SliverAppBar`, we can stretch to fill this empty space, creating
a cool visual, while also providing a callback. This feature is often
used to reload data - the weather is constantly changing after all - so
let's see how we can use this to refresh our forecast.

First we'll want to set `SliverAppBar.stretch` to true. We can provide
a callback to `onStretchTrigger`, this will be called when the user
overscrolls far enough - with far enough being 100 pixels by default.
You can customize this further with `stretchTriggerOffset`. This
callback is where we can refresh our data or complete another
operation.

```dart
SliverAppBar(
  pinned: true,
  stretch: true,
  onStretchTrigger: () async {
    print('Load new data!');
    // await Server.requestNewData();
  }
  //...
```

Now we can pull down from the top edge of our scroll view and see
the `FlexibleSpaceBar` stretch into the overscroll space, and if we
check the console, we can see our print statement from our callback.

The `FlexibleSpaceBar` can add a few finishing touches here too.
By default, the `FlexibleSpaceBar` has a `StretchMode` that will
transform the background to fill the overscrolled space. There are
other `StretchMode`s though, and you can combine them for neat
effects - you can have the title's `Opacity` fade as the
`SliverAppBar` stretches, and apply a blur to the background as well.

Feel free to try these out and see what you like best as you stretch.

```dart
FlexibleSpaceBar(
  stretchModes: <StretchMode>[
    StretchMode.zoomBackground,
    StretchMode.fadeTitle,
    StretchMode.blurBackground,
  ],
  // ...
```

Let's review everything that we have done in this workshop.