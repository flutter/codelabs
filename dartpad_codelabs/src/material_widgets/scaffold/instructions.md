# Scaffold

Now you're rolling. Using the `Material` widget, you've given your `HomePage`
widget a background color and default text styles. However, the `HomePage`
doesn't currently offer much visual structure. That's where the `Scaffold`
widget comes in.

The `Scaffold` widget provides a consistent layout for each "page" or "screen"
in your application. It is a piece of `Material`. Therefore, it also defines the
background color of the page and default text styles for all descendant widgets.

The `Scaffold` widget does not render content itself. Instead, it
provides various sections where content may be inserted: `appBar`, `body`,
`bottomNavigationBar`, and more.

```dart
// Give the page a light grey background. Displays no content by default.
Scaffold(
  backgroundColor: Colors.grey.shade300,
)
```

## AppBar

The `appBar` section is laid out at the top of the `Scaffold`. It is designed to
host an `AppBar` widget, used to display the title of the current page. For
example, if you are building an email app, it might display the title of the
current inbox, or the subject line of a specific message.

In addition to the title, the `AppBar` may also be configured to display
additional action buttons or tabs. 

The `AppBar` widget is yet another piece of `Material`. It is elevated to cast a
small shadow over the content of the page. The elevation may be configured along
with different background colors.

```dart
Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.indigo,
    title: Text('Home Page Title'),
  ),
);
```

## Body

While the `appBar` displays the title of the screen, the `body` section displays
the primary content of that screen. For example, if you are building an email
app, the body could display the list of messages related to the current inbox,
or the contents of a specific message.

The `body` widgets are laid out below the `AppBar` widget. Unlike the `appBar`
section, the `body` section is not designed to host a specific widget. You may
use any combination of widgets that makes sense for your app. Often, it will
be a combination of even more `Material` widgets!

```dart
Scaffold(
  body: Center(
    child: Text('Home Page Body'),
  ),
);
```

## Your Turn

  1. Wrap the `Container` inside a `Scaffold` widget as the `body` widget.
  2. Move the background color from the `Container` to the `Scaffold`
  3. Remove the container altogether. What is the visual difference?
  4. Add an `AppBar` to the `Scaffold`. Give the page a title.
  5. Change the `backgroundColor` and `elevation` of the `AppBar`
  