# Advanced Control of Named Routes

Providing the `MaterialApp` with a `routes` table is a simple way to map path
names to widgets. In complex scenarios, however, it may fall short. 

The `routes` map does not allow you to control how pages are animated on screen,
nor does it allow you to extract information from the path. For example, you may
wish to extract the index `1` from the path `/details/1`.

Instead of a `routes` map, you can provide an `onGenerateRoute` function to the
`MaterialApp` that is called every time you push a named route. The
`onGenerateRoute` function is passed a `RouteSettings` object, which contains
the name of the path along with the optional `arguments`. The function uses the
`RouteSettings` information to create the correct `Route`.

```dart
MaterialApp(
  // Routes map removed and replaced with the onGenerateRoute function.
  onGenerateRoute: (RouteSettings settings) {
    // The RouteSettings includes the name of the path that was pushed. Use the
    // name to create the correct Route.
    switch (settings.name) {
      case '/details':
        // Use a CupertinoPageRoute to animate to the DetailsPage with a Human
        // Interface Guidelines animation
        return CupertinoPageRoute(
          // Extract the index argument provided to Navigator.pushNamed from 
          // the RouteSettings.
          builder: (context) => DetailsPage(index: settings.arguments as int),
        );
      case '/':
      default:
        // Use a MaterialPageRoute to animate to the HomePage with a Material 
        // Design animation
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  },
);
```

## Your Turn

The goal: Navigate to a specific `DetailsPage` via named paths that include the
index, such as `/details/5`. The `onGenerateRoute` function should extract the
index from the path name and pass it to the `DetailsPage` for display.

  1. Reintroduce the `index` instance variable to the `DetailsPage`. 
  2. Accept the `index` variable via the `DetailsPage` constructor.
  3. Replace the `routes` map with an `onGenerateRoute` function. Start by
     copying and pasting the example above. Then, rewrite the function to 
     extract the `index` from the path name.
  4. Finally, add the `index` to the path name with `Navigator.pushNamed`.