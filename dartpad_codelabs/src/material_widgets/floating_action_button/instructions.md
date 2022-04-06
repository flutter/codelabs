# FloatingActionButton

Ok, now you're displaying some content, but the user cannot take any actions on
the page. How can we add some interactivity to the page? With a floating action
button. 

  > A floating action button (FAB) is a piece of Material that sits at the
  > bottom of the screen, allowing a user to quickly reach and perform the
  > primary action on the page.

For example, if you are building an email client, the page that displays the
inbox may have a FAB that allows you to compose a new email message. The page
that displays the contents of a specific message may have FAB that allows you to
reply to the email.

The `floatingActionButton` section of a `Scaffold` hosts a
`FloatingActionButton` widget. It is a piece of `Material` that is most often
configured to display an `Icon` widget. When a user taps on the button, the
`onPressed` callback function is executed. Like many pieces of material, you may
also configure the elevation and background color.

```dart
Scaffold(
  floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.orange,
    tooltip: 'Send Message',
    onPressed: () => print('FloatingActionButton pressed'),
    child: Icon(Icons.send),
  ),
);
```

## Your Turn

  1. Add a `FloatingActionButton` to the Scaffold
  2. Customize the `Icon`
  3. Customize the `backgroundColor` and `elevation`
  4. Configure the `tooltip`. When is the tooltip message displayed?
  5. `print` a message to the Console when a user presses the button. Note:
     printed messages appear in the "Console" tab, next to the "UI Output" tab.
     In the next step, you'll learn how to display Material Design messages to
     the user!