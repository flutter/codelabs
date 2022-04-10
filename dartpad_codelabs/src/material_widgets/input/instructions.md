# Text Input

Now that you've got a whole bunch of buttons to work with, it's time to focus on
text input. For example, if you wanted to build a sign in page, users may need
to enter their email address and password. To create a text input box with no 
styling, you can use the `EditableText` widget. It can be fully customized to 
fit into your own unique design system.

However, this workshop is all about Material Design! Therefore, Flutter also
provides the `TextField` widget: A [text input box that follows the material
design standards](https://material.io/components/text-fields), offering rich
functionality out of the box. 

A `TextField` may be configured to display a label, hint text, and an icon.
Furthermore, you may configure how it looks when disabled, or if an error has
occurred. All of these can be adjusted with the `decoration` property.

```dart
TextField(
  decoration: InputDecoration(
    label: Text('Email'),
    hintText: 'test@example.com',
    icon: Icon(Icons.person),
  ),
);
```

## Outlined TextField

`TextField` widgets are either "filled" with a background or "outlined" with a
border. By default, `TextField` widgets are filled. To display a border around
the `TextField`, change the border property of the `InputDecoration`.

```dart
TextField(
  decoration: InputDecoration(
    // Use an OutlineInputBorder to create a TextField with a border. You
    // may control the border radius as well
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
```

## Your Turn

  1. Add a `TextField` to the `Column` that accepts an email address. Decorate
     it with an icon and label.
  2. Then, add some `hintText`. What is the difference between the hint text and
     label?
  3. Next, add another `TextField` that accepts a password. Decorate it with a
     border.
  4. Use the `obscureText` property on the password `TextField`. What affect
     does this have?

In the next workshops, you'll learn how to use `TextField` widgets to create
proper forms!