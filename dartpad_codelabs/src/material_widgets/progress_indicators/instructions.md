# Progress Indicators

Finally, if you were making a sign in page, you not only want to display a form
with some text fields and buttons, you may also want to show some kind of 
loading or progress indicator when the user submits the form.

  > Progress indicators inform users about the status of ongoing processes, such
  > as loading an app, submitting a form, or saving updates. They communicate an
  > app’s state and indicate available actions, such as whether users can
  > navigate away from the current screen.

The Material Design specification defines two types of [progress
indicators](https://material.io/components/progress-indicators): Linear and
Circular. Therefore, Flutter provides two types of widgets out of the box:
`LinearProgressIndicator` and `CircularProgressIndicator`.

Each progress indicator may also be determinate or indeterminate. For example,
if you know that you've downloaded 25% of some content, you could display a
determinate indicator with that information. If you do not know how long a
download will take, you can display an indeterminate indicator.

## LinearProgressIndicator

The `LinearProgressIndicator` widget displays a solid horizontal line indicating
the progress over a background color.

To create a determinate `LinearProgressIndicator`, provide a `value` between
0 and 1. You may also customize the design of the progress indicator by
adjusting the `color` and `backgroundColor`.

```dart
LinearProgressIndicator(
  value: 0.25,
  color: Colors.green,
  backgroundColor: Colors.green.shade100,
)
```

To create an indeterminate `LinearProgressIndicator`, omit the `value`.

```dart
LinearProgressIndicator(
  color: Colors.green,
  backgroundColor: Colors.green.shade100,
)
```

## CircularProgressIndicator

The `CircularProgressIndicator` displays progress as a circular line. Once
again, you may provide a `value` to create a determinate indicator, or omit the
value to create an indeterminate indicator.

```dart
CircularProgressIndicator(
  color: Colors.purple,
  strokeWidth: 1,
);
```

## Your Turn

  1. Add a `LinearProgressIndicator` to the `Column`. Customize the `color` and
     `backgroundColor`.
  2. Then, give the `LinearProgressIndicator` a `value` between 0 and 1. How
     does this change the indicator?
  3. Now, add a `CircularProgressIndicator` to the `Column`. Once again, play
     around with the customizations!
  4. Finally, provide a value to see the difference between a determinate and
     indeterminate `CircularProgressIndicator`.