# Axis Size and Alignment

Thus far, the `BlueBox` widgets have been squished together along a horizontal
or vertical axis. You can change how the BlueBox widgets are spaced out using
the axis size and alignment properties.

## mainAxisSize property

`Row` and `Column` occupy different main axes. A `Row`'s main axis is
horizontal, and a `Column`'s main axis is vertical. The `mainAxisSize` property
determines how much space a `Row` and `Column` can occupy on their main axes.
The `mainAxisSize` property has two possible values:

  - `MainAxisSize.max`- `Row` and `Column` occupy all of the space on their main
    axes. This is the default value.
  - `MainAxisSize.min`- `Row` and `Column` only occupy enough space on their
    main axes for their children. Their children are laid out without extra
    space and at the middle of their main axes.

## Your Turn

Reading definitions of `MainAxisSize.min` and `MainAxisSize.max` is handy, but
it may be easier to understand how these properties affect your layouts with
some experimentation.

  1. Wrap the entire `Row` in a `DecoratedBox` with a background color. Run the
     code. How is the background applied?
  2. Next, wrap the `DecoratedBox` inside a `Center` widget. Run the code to see
     what happens. Is it positioned as you expected?
  3. Now, change the `mainAxisSize` property from the default `max` to `min`.
     Run the code to see the changes. How are the backgrounds and positions
     affected?
  4. Try the same thing with `Column` instead of `Row`
