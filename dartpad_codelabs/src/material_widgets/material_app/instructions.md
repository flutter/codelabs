# Workshop: Material Design Widgets

A design system is a collection of reusable widgets, guided by clear standards,
that can be assembled together to build applications with a cohesive look and
feel. Material Design is the design system created by Google used to create web,
mobile, and desktop applications. 

For example, compare the Google Sheets app on a smart phone with the Google Maps
app on the web. While each app may be built with different technologies and
serve different purposes, they each use Material Design, creating a cohesive
look and feel. That is the power of a design system in action.

You can always create your own standards and custom widgets to form a design
system, but it is often faster and easier to customize an existing system.
Whether you create your own design system or customize an existing system
depends on the needs of your organization.

In this workshop, you'll learn about the Material Design widgets Flutter
provides out of the box and how to use them to build rich applications.

## MaterialApp

The `WidgetsApp` widget configures a Flutter application. It's a low-level
widget that defines the title and home page. It sets app-wide keyboard
shortcuts, defines the supported locales, manages navigation, handles state
restoration, and more. However, it does not configure an app to follow any
particular design system.

The `MaterialApp` widget extends the functionality of `WidgetsApp`, configuring
your app to follow the Material Design standards. It defines the theme of your
application, sets the correct scrolling physics, sends messages to `Scaffold`
widgets, and manages animations from one page to the next.

```dart
MaterialApp(
  title: 'App Title',
  home: Center(child: Text('Home Page')),
  supportedLocales: [Locale('en', 'US')]
)
```

## Your Turn

  1. Use the `MaterialApp` Widget to define the app title & locale. Does the app
     title appear anywhere?
  2. Set the `home` page to a centered `Text` widget. What do you see? Does the
     text look as you'd expect? If not, don't worry -- you'll see how to fix it
     up in step 2.
  3. Move or "extract" the `home` widget code into to a new `HomePage` widget.
     This helps keep things tidy moving forward. If you haven't created your own
     widgets before, consider reviewing the [Create a Custom Button
     workshop](https://dartpad.dev/workshops.html?webserver=https://raw.githubusercontent.com/flutter/codelabs/master/dartpad_codelabs/src/custom_button)
     and [Introduction to Lists of Content
     workshop](https://dartpad.dev/workshops.html?webserver=https://raw.githubusercontent.com/flutter/codelabs/master/dartpad_codelabs/src/introduction_to_lists).