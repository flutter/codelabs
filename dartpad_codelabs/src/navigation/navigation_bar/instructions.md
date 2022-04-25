# Navigation Bars

Tabs are a great way to navigate between sections of content related to the same
topic. However, they aren't designed for navigating between the main sections or
"primary destinations" of your app. Instead of tabs, consider a [navigation
bar](https://m3.material.io/components/navigation-bar) instead.

  > Navigation bars (nav bars) provide access to three to five destinations.
  >
  > The nav bar is positioned at the bottom of screens for convenient access.
  > Each destination is represented by an icon and optional text label.
  >
  > When a navigation bar icon is tapped or focused, the user is taken to the
  > navigation destination associated with that icon.

You may design your own navigation bar or use one of the navigation bars
provided by Flutter: 

  - `BottomNavigationBar` follows the Material Design 2 spec
  - `NavigationBar` follows the latest Material Design 3 spec
  - `CupertinoNavigationBar` follows the Human Interface Guidelines

In this step, you'll learn how to use the latest Material Design 3
`NavigationBar`, which integrates nicely with the `Scaffold` widget used in the
previous step!

## Destinations

First, define the primary sections or "destinations" of your app. This
depends entirely on the needs of your app. For example, if you're building a 
music app, you might have three destinations: Explore, Search, and Library.

The `NavigationDestination` class stores information about each destination: 
the label, icon, and selected icon.

```dart
final _destinations = [
  NavigationDestination(
    label: 'Explore',
    icon: Icon(Icons.explore_outlined),
    selectedIcon: Icon(Icons.explore),
  ),
  // ... Additional entries for Search and Library
];
```

## Display the NavigationBar

Next, display the `NavigationBar` by adding it to the `Scaffold`. Once again, 
the `Scaffold` defines a consistent visual structure for the pages in your app.
It has a special slot for navigation bars: `bottomNavigationBar`.

```dart
Scaffold(
  bottomNavigationBar: NavigationBar(
    // Provide the list of destinations to the NavigationBar so it can
    // display them!
    destinations: _destinations,
  ),
)
```

## Track the selected destination

Next, you'll need to track which destination the user tapped on. This allows you
to highlight the selected destination in the nav bar and display the appropriate
content.

When a user taps on a destination in the `NavigationBar`, it runs a callback
function with the index of the destination the user tapped on. Therefore, to
track which destination a user tapped on, store and update the index inside a
`State` class whenever the callback function runs.

Furthermore, to highlight the selected destination in the nav bar, pass the
stored index to the `NavigationBar` widget.

```dart
class _HomePageState extends State<HomePage> {
  // A variable that tracks the destination the user taps on. Starts at 0, which
  // refers to the first entry in the list of destinations.
  var _selectedDestinationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // A callback function that runs when the user navigates to a new
        // destination. This function is provided with the index of the
        // destination the user tapped on.
        //
        // The setState method rebuild the widget tree with the latest index.
        onDestinationSelected: (int index) {
          setState(() => _selectedDestinationIndex = index);
        },

        // Tell the NavigationBar which destination is currently selected.
        selectedIndex: _selectedDestinationIndex,
      ),
    );
  }
}
```

## Display the appropriate content

Finally, use the selected destination to display the correct content. The
primary content of a Material Design application occupies the `body` section of
a `Scaffold` widget. 

For example purposes, the following code displays the nav bar icon of the
selected destination. In reality, it would show the appropriate content for that
destination.

```dart
Scaffold(
  // Display the icon from the selected destination
  body: Center(
    child: _destinations[_selectedDestinationIndex].icon,
  ),
)
```

## Your Turn

  1. Define variable called `_destinations`, which stores a list of
     `NavigationDestination`. If you'd like to follow the music app example, use
     the following icons: `Icons.explore_outlined`, `Icons.explore`,
     `Icons.search`, `Icons.library_music_outlined`, `Icons.library_music`
  2. Define a variable called `_selectedDestinationIndex` to store the index of
     the destination the user taps on.
  3. Use the list of `_destinations` combined with the
     `_selectedDestinationIndex` to display the icon of the currently selected
     destination.
  4. Finally, add the `NavigationBar` to the `bottomNavigationBar` section of
     the `Scaffold`. Wire it up to the list of `_destinations` and the
     `_selectedDestinationIndex`. Provide an `onDestinationSelected` callback
     function that updates the index of selected destination whenever a user
     taps on a new destination.