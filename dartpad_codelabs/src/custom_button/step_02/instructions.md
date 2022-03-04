# Handling Taps and Clicks

By now, you should have a `CustomButton` widget that looks something like a 
button you could tap or click. However, you can't actually tap or click it! 
Not good.

So how do you handle taps/clicks, drags, pinches and more? The `GestureDetector`
Widget.

## GestureDetector

The `GestureDetector` Widget wraps any `child` Widget. When a user interacts
with the `child` Widget, the `GestureDetector` determines what kind of action
took place. Then, it runs a function, often referred to as a "callback function"
or "event handler," in response. 

In other words, a `GestureDetector` allows you to tell Flutter "Hey, when a user
clicks on my button, please run this callback function (aka event handler) for
me."

Your callback function can do anything your application needs. It might
increment a counter, print some debug information, or load some information for
the user.

```dart
GestureDetector(
  onTap: () {
    print("Button Tapped");
  },
  child: Container() // Any widget you want!
);
```

## Your Turn

Wrap everything inside the `build` method of your `CustomButton` with a 
`GestureDetector`. When a user taps on the button, `print` a message. Next,
`print` a message when a user long presses on the button!

Note: Printed messages are displayed in the "Console" tab.

Reminder: Press `ctrl + space` inside the `GestureDetector` constructor to see
all of the gestures you can handle!