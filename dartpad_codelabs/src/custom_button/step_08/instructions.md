# Tidy Up

Things are looking good: you've got some great desktop support! You're handling
mouse and keyboard navigation like a pro. However, the Widget code itself is
starting to look a little hairy. Wouldn't it be nice if you could tidy it up a
bit? Specifically, it might be nice to reduce the number of lines of code and
reduce the amount of "nesting" or "wrapping" going on.

## Combine Shortcuts, Actions, Focus & MouseRegion

If you wanted to combine the `Shortcuts`, `Actions`, `Focus`, and `MouseRegion`
widgets into one mega-widget, what would you call it? `FocusableActionDetector`,
of course! Naming is hard, but the `FocusableActionDetector` is the perfect tool
for cleaning up the code that supports desktop devices.

```dart
// Replaces the Shortcuts, Actions, Focus, and MouseRegions widget
FocusableActionDetector(
   // Shortcuts widget replacement
   shortcuts: {
      SingleActivator(LogicalKeyboardKey.space): RunTheOnTapCallback(),
      SingleActivator(LogicalKeyboardKey.enter): RunTheOnTapCallback(),
   },

   // Actions widget replacement
   actions: {
      RunTheOnTapCallback: CallbackAction(onInvoke: (_) => widget.onTap()),
   },

   // Focus widget replacement
   onShowFocusHighlight: (focusing) => setState(() => _focusing = focusing),

   // MouseRegion widget replacement 
   mouseCursor: SystemMouseCursors.click,
   onShowHoverHighlight: (hovering) => setState(() => _hovering = hovering),

   child: GestureDetector(), // GestureDetector + visual design
);
```

## Common Intents and Shortcuts

In the last step, you defined your own Intent and Shortcuts Widget. However,
Flutter actually binds common keyboard shortcuts to intents by default! For
example, Flutter binds the `Space` and `Enter` keys to the `ActivateIntent` and
`ButtonActivateIntent` classes.

Therefore, you can actually remove your custom intent and `Shortcuts` widget
entirely. All you need to do is handle the `ActiveIntent` and 
`ButtonActivateIntent` in your `Actions` or `FocusableActionDetector` widget.

```dart
FocusableActionDetector(
   actions: {
      ActivateIntent: CallbackAction(onInvoke: (_) => widget.onTap())),
      ButtonActivateIntent: CallbackAction(onInvoke: (_) => widget.onTap()),
   },
)
```

## Your Turn

  1. Replace the `Shortcuts`, `Actions`, `Focus`, and `MouseRegion` widgets with
     a single `FocusableActionDetector` widget
  2. Remove your custom Intent
  3. Remove your custom `shortcuts`
  4. Bind the `ActivateIntent` and `ButtonActivateIntent` to the onTap callback