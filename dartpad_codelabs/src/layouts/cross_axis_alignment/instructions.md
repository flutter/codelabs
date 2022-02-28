# crossAxisAlignment property

The `crossAxisAlignment` property determines how `Row` and `Column` can position
their children on their cross axes. A `Row`'s cross axis is vertical, and a
`Column`'s cross axis is horizontal. The `crossAxisAlignment` property has five
possible values:

  - `CrossAxisAlignment.start`- Positions children near the start of the cross
    axis. (Top for `Row`, Left for `Column`)
  - `CrossAxisAlignment.end`- Positions children near the end of the cross axis.
    (Bottom for `Row`, Right for `Column`)
  - `CrossAxisAlignment.center`- Positions children at the middle of the cross
    axis. (Middle for `Row`, Center for `Column`). This is the default value.
  - `CrossAxisAlignment.stretch`- Stretches children across the cross axis.
    (Top-to-bottom for `Row`, left-to-right for `Column`)
  - `CrossAxisAlignment.baseline`- Aligns children by their character baselines.
    (`Text` class only, and requires that the `textBaseline` property is set to
    `TextBaseline.alphabetic`)

## Your Turn

To demonstrate cross axis alignment, `mainAxisAlignment` is set to
`MainAxisAlignment.spaceAround`, and the `Row` now contains a `BiggerBlueBox`
widget that is taller than the `BlueBox` widgets.

Apply different `crossAxisAlignment` properties to the `Row` to see how changing
the alignment affects the layout. Change the `Row` to a `Column` and try out
various values.
