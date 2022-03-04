# mainAxisAlignment property

When `mainAxisSize` is set to `MainAxisSize.max`, `Row` and `Column` might lay
out their children with extra space. The `mainAxisAlignment` property determines
how `Row` and `Column` can position their children in that extra space.
`mainAxisAlignment` has six possible values:

  - `MainAxisAlignment.start`- Positions children near the beginning of the
    main axis. (Left for `Row`, top for `Column`). This is the default value.
  - `MainAxisAlignment.end`- Positions children near the end of the main axis.
    (Right for `Row`, bottom for `Column`)
  - `MainAxisAlignment.center`- Positions children at the middle of the main
    axis.
  - `MainAxisAlignment.spaceBetween`- Divides the extra space evenly between
    children.
  - `MainAxisAlignment.spaceEvenly`- Divides the extra space evenly between
    children and before and after the children.
  - `MainAxisAlignment.spaceAround`- Similar to `spaceEvenly`, but reduces half
    of the space before the first child and after the last child to half of the
    width between the children.

## Your Turn

Once again, it might be easier to understand `mainAxisAlignment` via 
experimentation! 

Apply different `mainAxisAlignment` properties to a `Row` or `Column` with three
blue boxes to see how changing the alignment affects the layout.
