# Navigate to Another Page

In the previous steps, you learned how to navigate to different destinations
within the same page using tabs or navigation bars. In the next steps, you'll
learn how to navigate to new pages, navigate away from pages, animate between
pages, and more!

In Flutter, the `Navigator` handles all of these tasks. Under the hood, the
`Navigator` manages a stack of pages. You can add (`push`), remove (`pop`), or
replace pages in the stack using a variety of static methods. The `Navigator` is
created automatically by the `WidgetsApp`, `MaterialApp`, or `CupertinoApp`
widgets.

## Navigator.push

To display a new "page" and add it to the navigation stack, use the
`Navigator.push` static method. In reality, the new "page" is actually a `Route`
that displays a widget! To provide continuity from one page to the next, page
widgets may use a common layout, such as a `Scaffold`.

The `push` method requires two arguments: the `BuildContext` and a `Route`.

```dart
Navigator.push(
  context,
  // A Route with a Material Design animation from one page widget to the next
  MaterialPageRoute(
    // Navigate to the DetailsPage widget. Pass a custom message to it via the 
    // constructor.
    builder: (context) => DetailsPage(message: 'Hello!'),
  ),
);
```

### BuildContext

Flutter uses the provided `BuildContext` to find the correct `Navigator`
instance from the widget tree. Use the `BuildContext` variable passed into your
`build` method to satisfy the first required argument.

### Route

Next, you must provide a `Route`. The `Route` determines what page widget is
displayed and how it is animated on screen. You may create your own page
transitions or use the transitions provided by Flutter.

  - `PageRouteBuilder`: a `Route` that transitions from one page widget to the
    next with a custom animation.
  - `MaterialPageRoute`: a `Route` that transitions with a Material Design
    animation
  - `CupertinoPageRoute`: a `Route` that transitions with a Human Interface
    Guideline animation

### Arguments

You may pass arguments from one page to the next via widget constructors. This
makes it easy to pass an object of any kind!

## Your Turn

The Goal: When a user taps on an item in a list, navigate to a "Details Page"
that displays the index of the item the user tapped on.

  1. Run the app and get a feel for the current functionality. Notice that
     clicking on an item does not navigate.
  2. Create a `DetailsPage` widget that accepts an `index` via the constructor.
     Use a `Scaffold` widget to give the page a consistent visual structure.
     Build an `AppBar` with a title that reads "Details Page." Then, display the
     `index` of the item the user tapped on in the `body`.
  3. Use the Navigator to push a `MaterialPageRoute` that displays the
     `DetailsPage`. Make sure to pass the index to the `DetailsPage`.