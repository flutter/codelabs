# Combining Rows & Columns

In the previous steps, you learned how to display widgets side-by-side
horizontally and vertically using the `Row` and `Column` widgets. This might
seem simple at first, but you can actually combine rows and columns to create
complex layouts.

For example, how would you display three icons from left to right, with each
icon displaying a bit of text underneath?

<img 
  alt="Layout with three icon buttons" 
  src="https://raw.githubusercontent.com/flutter/codelabs/master/dartpad_codelabs/src/layouts/combine_row_column/button_section.png" 
  style="width: 50%" 
/>

The trick is to create a `Row` widget that contains three `Column` widgets that
are evenly spaced along the main axis. Each `Column` widget contains two more
widgets: an `Icon` and `Text`. You could even add a `SizedBox` or `Spacer`
widget as well to add white space between the `Icon` and `Text`!

<img 
  alt="Diagram of a row with three columns, each containing an Icon and Text widget" 
  src="https://docs.flutter.dev/assets/images/docs/ui/layout/button-section-diagram.png" 
  style="width: 75%" 
/>

## Your Turn

  1. Combine `Row` and `Column` widgets with `Icon` and `Text` widgets to
     recreate the design above.
  2. Then, center the buttons in the window using a combination of the
      techniques you've learned in previous steps: `Center` widget,
     `mainAxisSize`, and `mainAxisAlignment`. Hint: Wrap the `Row` and `Column`
     widgets in a `DecoratedBox` with different background colors.
