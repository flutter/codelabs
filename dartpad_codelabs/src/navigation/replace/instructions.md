# Replacing Pages

In some cases, you may want to show a new screen while also removing the current
page from the navigation stack. For example, if a user successfully logs into
your application, you may want to redirect the user to their home page without
the ability to navigate back to the login screen.

In Flutter, this is known as "replacing" the page. The `Navigator` offers
several methods for replacing pages.

## Navigator.pushReplacement

Use the static method `Navigator.pushReplacement` to animate a new page on
screen and remove the current page from the navigation stack once the animation
is complete. Like `Navigator.push`, it navigates to a specific `Route` which
displays a widget. Once again, you can pass variables directly to the widget
constructor.

```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => DetailsPage(message: 'Hello!'),
  ),
);
```

## Navigator.pushReplacementNamed

You may also wish to replace the current route with a named route. In that case,
use `Navigator.pushReplacementNamed`. Like `Navigator.pushNamed`, you must
provide the `BuildContext`, the path to navigate to, and an optional arguments
object.

```dart
Navigator.pushReplacementNamed(
  context,
  '/details',
  arguments: index,
)
```

## Your Turn

  1. Run the app and navigate to the `DetailsPage` by clicking on one of the
     items in the list. Notice the back button available in the `AppBar`!
  2. Navigate to the `DetailsPage` using `pushReplacementNamed`.
  3. Navigate back to the `HomePage` using `pushReplacementNamed`.
  4. Run the app once more. What happened to the back button in the `AppBar`?