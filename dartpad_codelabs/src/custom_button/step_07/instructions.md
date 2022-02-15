# Desktop Support: Keyboard Shortcuts

Now that users can select or "focus" the button, they should be able to tap a
keyboard shortcut, such as `Space` or `Enter`, to activate the button. This is
the job of Shortcuts, Intents, and Actions. At a high level, keyboard
"shortcuts" are given meaningful names known as "intents." Intents are then
bound to specific callback functions, known as "actions."

## Intents

Intents are classes that provide meaningful names to keyboard shortcuts.

```dart
// Define an intent by extending the Intent class.
class RunTheOnTapCallback extends Intent {}
```

Flutter provides a number of common intents out of the box, such as the 
`ActivateIntent` or `ButtonActivateIntent`.

## Shortcuts Widget

Use the `Shortcuts` widget to bind specific keyboard keys aka "shortcuts" to
user intents.

```dart
// Bind the Space and Enter keys to the RunTheOnTapCallback intent
Shortcuts(
   shortcuts: {
      SingleActivator(LogicalKeyboardKey.enter): RunTheOnTapCallback(),
      SingleActivator(LogicalKeyboardKey.space): RunTheOnTapCallback(),
   },
   child: Focus(), // Rest of Button here
)
```

Under the hood, the `WidgetsApp`, `MaterialApp`, and `CupertinoApp` widgets
define a `Shortcuts` widget that binds many common shortcuts to common intents.
For example, `Space` and `Enter` are bound to the `ActivateIntent` and
`ButtonActivateIntent`. You can actually use these common shortcuts and intents
in place of custom shortcuts + intents if they meet your requirements!

## Actions Widget

Use the `Actions` widget to bind intents to specific callback functions.

```dart
Shortcuts(
   shortcuts: { /* shortcuts here */ },
   child: Actions(
      actions: {
         // Bind the RunTheOnTapCallback to an Action that invokes the onTap
         // callback function!
         RunTheOnTapCallback: CallbackAction(
            onInvoke: (intent) => print("Space or Enter pressed"),
         ),
      },
      child: Focus() ... // Rest of button here
   ),
)
```

## Your turn

  1. Define an intent
  2. Use the `Shortcuts` widget to bind the `Space` and `Enter` keys to your 
     intent
  3. Use the `Actions` widget to bind your intent to the `onTap` callback.