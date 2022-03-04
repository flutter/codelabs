# Configure the button

In just two steps, you've created a new type of widget, decorated it to look
like a button, and used a `GestureDetector` to respond to taps or clicks. Nice
work!

However, everything is hard-coded: the background color, the `Text` widget, and
the callback function that runs when a user taps on the button. Wouldn't it be
nice if you could reuse your `CustomButton` with a different background color or
text? Or run a different callback function depending on the situation? 

In the next two steps, you'll make the button configurable using instance
variables and constructor parameters.

## Instance Variables

A class may define instance variables, often called *fields* or *properties*, to
store information unique to every instance of that class. For example, if you
wanted every button to have a unique background color, you could create an 
instance variable to store that information.

Instance variables may change over time, or they may not. Variables that cannot
change over time are known as `final` variables. 

```dart
class CustomButton extends StatelessWidget {
  // Declare an instance variable to store the background color of the button.
  final Color backgroundColor; 

  // Once set, instance variables can be read from any method inside the class, 
  // such as your widget's build method.
  @override
  Widget build() {
    return Container(
      color: backgroundColor,
    );
  }
}
```

## Constructor Parameters

Now that you've defined an instance variable, how do you actually set the value?
By defining a class constructor!

Class constructors can accept a list of parameters, named parameters, or a
combination of both. By convention, widget constructors accept named parameters.
Therefore, it's recommended to wrap all constructor parameters inside a set 
of curly braces `{}` to make them named.

You may require a user to set the value of a parameter using the `required`
keyword. Alternatively, you make the parameter optional by provide a default or 
flagging the parameter as nullable using a `?`.

Finally, constructors may pass data to the constructor of the class they extend.
All Widgets may be identified by a unique `Key`. To set the key, pass it to the
parent constructor!

```dart
class CustomButton extends StatelessWidget {
  // The class constructor. Notice the key and color parameters are placed 
  // inside the curly braces to make them both named parameter. The color
  // parameter has a default value that will be used if the user does not set 
  // their own color.
  CustomButton({
    Key? key, // Optional parameter, may be null
    this.backgroundColor = Colors.blue, // Optional parameter with default value
  }) : super(key: key);

  final Color color;

  @override
  Widget build() {
    return Container(
      color: backgroundColor,
    );
  }
}

// Create an instance of your button widget and set the color!
final myButton = CustomButton(backgroundColor: Colors.red);
```

## Child Widgets

In Flutter, widgets often needs to wrap another widget or many widgets. By
convention, these are known as "child" widget or "children" widgets. For
example, the `Container` wraps any `child` provided to it:

```dart
Container(
  child: Text('This Text widget is a child of the container'),
)
```

Similarly, your `CustomButton` should not have a hard-coded `Text` widget, it
should wrap any `Text` widget provided to it. To achieve that goal, you can
define a `final Widget child` instance variable and add it to your constructor.

## Your Turn

Apply these concepts to your `CustomButton` widget. 

  1. Create two new instance variables to define the background color and 
     child `Text` widget.
  2. Update your constructor to accept a `required` child and optional 
     background color. Provide a default background color.
  3. Modify the `build` method to use these new instance variables in place of 
     the hard-coded background color & text. 
  4. Finally, use the new constructor parameters to configure the button!