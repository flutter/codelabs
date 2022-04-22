# Navigate to a path

In the previous steps, you learned how to navigate to a new page and back.
However, if you need to navigate to the same page in many parts of your app,
this approach can result in code duplication. Furthermore, if you want to
associate a particular page with a path, such as `/home` or `/details`,
`Navigator.push` won't cut it.

Instead, you can define a series of "paths" that display specific widgets. In
Flutter, these are known as *named routes*. To navigate to a named route, use
`Navigator.pushNamed`. It takes three arguments: The `BuildContext`, the name of
the route, and optional `arguments` that should be passed to the named route.

```dart
Navigator.pushNamed(
  context,
  '/details', // Navigate to the /details named route
  arguments: 15, // Pass the index to the DetailsPage as a Route argument
);
```

Looking at this code, you might be asking: How does Flutter know that navigating
to the `/details` route should display the `DetailsPage` widget? That's the job
of the `routes` map!

## Routes Map

By default, Flutter does not know which widgets to display when you navigate to
a named route. You must provide `routes` to the `MaterialApp` widget that maps
route names to a specific widget. 

The name of the initial route is `/`. Therefore, you can map the `/` named route
to your `HomePage` widget.

```dart
MaterialApp(
  // Map the name of each page to a specific page widget
  routes: {
    '/': (context) => HomePage(),
    '/details': (context) => DetailsPage(),
  },
)
```

Notice how there are no `Route` objects here, such as `MaterialPageRoute` or
`CupertinoPageRoute`. Remember: `Route` objects control how pages are animated
on screen. The `MaterialApp` widget configures your app to use Material Design.
Therefore, it configures your app to use `MaterialPageRoute` for page
animations.

## Extract arguments

However, one piece is still missing: How can you extract the `index` sent to the
`DetailsPage` via the `arguments` parameter? With `Navigator.push`, you can pass
the `index` directly to the `DetailsPage` constructor. With `pushNamed`, you
must extract the route arguments from the current route's settings.

Use `ModalRoute.of(context)` to extract the arguments of the current route.

```dart
class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;

    return Text('Extracted $index');
  }
}
```

## Your Turn

The Goal: Replace `Navigator.push` with `Navigator.pushNamed`. When the
conversion is complete, the app should work exactly the same as the previous
step!

  1. Define the `MaterialApp` `routes`. It should map a series of paths to
     specific widgets.
  2. Use `Navigator.pushNamed` to navigate to the `DetailsPage`. Pass the item
     `index` to the `DetailsPage` as an `argument`.
  3. Extract the `index` from the `ModalRoute` `arguments`.