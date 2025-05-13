---
id: codelabs/flutter-codelab-first
summary: In this codelab, you'll learn how to build a Flutter app that generates random, cool-sounding names.
authors: Filip Hracek
tags: web
feedback_link: https://github.com/flutter/flutter/issues
source: 1mmGKqMbcQNGdZqsUn1NKiPIsVnc7wTP2DRp2Y_Ms-wk
duration: 85
keywords: docType:Codelab, skill:Beginner, product:Flutter, language:DartLang
layout: paginated

---

# Your first Flutter app

[Codelab Feedback](https://github.com/flutter/flutter/issues)


## Introduction



Flutter is Google's UI toolkit for building applications for mobile, web, and desktop from a single codebase. In this codelab, you will build the following Flutter application:

<video id="jj5yBVwnEQw"></video>

The application generates cool-sounding names, such as "newstay", "lightstream", "mainbrake", or "graypine". The user can ask for the next name, favorite the current one, and review the list of favorited names on a separate page. The app is responsive to different screen sizes.

### What you'll learn

* The basics of how Flutter works
* Creating layouts in Flutter
* Connecting user interactions (like button presses) to app behavior
* Keeping your Flutter code organized
* Making your app responsive (for different screens)
* Achieving a consistent look & feel of your app

You'll start with a basic scaffold so that you can jump straight to the interesting parts.

<img src="img/e9c6b402cd8003fd.png" alt="e9c6b402cd8003fd.png"  width="624.00" />

And here is Filip taking you through the whole codelab!

<video id="8sAyPDLorek"></video>

Click next to start the lab.


## Set up your Flutter environment
Duration: 10:00


### Editor

To make this codelab as straightforward as possible, we assume you'll use **Visual Studio Code** (VS Code) as your development environment. It's free and works on all major platforms.

<button>[Download Visual Studio Code](https://code.visualstudio.com/download)</button>

Of course it's fine to use any editor you like: Android Studio, other IntelliJ IDEs, Emacs, Vim, or Notepad++. They all work with Flutter.

We recommend using VS Code for this codelab because the instructions default to VS Code-specific shortcuts. It's easier to say things like "click here" or "press this key" instead of something like "do the appropriate action in your editor to do X".

<img src="img/228c71510a8e868.png" alt="228c71510a8e868.png"  width="624.00" />

### Choose a development target

Flutter is a multi-platform toolkit. Your app can run on any of the following operating systems:

* iOS
* Android
* Windows
* macOS
* Linux
* web

However, it's common practice to choose a single operating system for which you will *primarily* develop. This is your "development target"—the operating system that your app runs on during development.

<img src="img/16695777c07f18e5.png" alt="16695777c07f18e5.png"  width="624.00" />

For example, say you're using a Windows laptop to develop a Flutter app. If you choose Android as your development target, you typically attach an Android device to your Windows laptop with a USB cable, and your app-in-development runs on that attached Android device. But you could also choose Windows as the development target, which means your app-in-development runs as a Windows app alongside your editor.

> aside positive
>
> **Tip**: We strongly recommend choosing your development device's Operating System as your development target. So, for example, if your computer runs Windows, choose Windows as the development target.
>
> <img src="img/d5d32cbb81d8de60.png" alt="d5d32cbb81d8de60.png"  width="610.00" />

It might be tempting to select the web as your development target. The downside of this choice is that you lose one of Flutter's most useful development features: Stateful Hot Reload. Flutter can't hot-reload web applications.

Make your choice now. Remember: You can always run your app on other operating systems later. It's just that having a clear development target in mind makes the next step smoother.

### Install Flutter

The most up-to-date instructions on how to install the Flutter SDK are always at  [docs.flutter.dev](https://docs.flutter.dev/).

<button>[Install Flutter SDK](https://docs.flutter.dev/get-started/install)</button>

The instructions on the Flutter website cover not only the installation of the SDK itself, but also the development target-related tools and the editor plugins. Remember that, for this codelab, you only need to install the following:

1. Flutter SDK
2. Visual Studio Code with the Flutter plugin
3. The software required by your chosen development target (for example: *Visual Studio* to target Windows, or *Xcode* to target macOS)

In the next section, you'll create your first Flutter project.

If you've had problems so far, you might find some of these questions and answers (from StackOverflow) helpful for troubleshooting.

#### **Frequently Asked Questions**

*  [How do I find the path of the Flutter SDK?](https://stackoverflow.com/questions/50236128/how-to-find-the-path-of-flutter-sdk)
*  [What do I do when the Flutter command is not found?](https://stackoverflow.com/questions/50652071/flutter-command-not-found)
*  [How do I fix the "Waiting for another flutter command to release the startup lock" issue?](https://stackoverflow.com/questions/51679269/waiting-for-another-flutter-command-to-release-the-startup-lock)
*  [How do I tell Flutter where my Android SDK installation is?](https://stackoverflow.com/questions/59647791/android-studio-not-installed-when-run-flutter-doctor-while-android-studio-in)
*  [How do I deal with the Java error when running `flutter doctor --android-licenses`?](https://stackoverflow.com/questions/61993738/flutter-doctor-android-licenses-gives-a-java-error)
*  [How do I deal with Android `sdkmanager` tool not found?](https://stackoverflow.com/questions/60475481/flutter-doctor-error-android-sdkmanager-tool-not-found-windows/)
*  [How do I deal with the "`cmdline-tools` component is missing" error?](https://stackoverflow.com/questions/68236007/i-am-getting-error-cmdline-tools-component-is-missing-after-installing-flutter)
*  [How do I run CocoaPods on Apple Silicon (M1)?](https://stackoverflow.com/questions/64901180/how-to-run-cocoapods-on-apple-silicon-m1)
*  [How do I disable autoformatting on save in VS Code?](https://stackoverflow.com/questions/62889725/disable-autoformat-in-vs-code-for-dart)


## Create a project
Duration: 05:00


### Create your first Flutter project

Launch Visual Studio Code and open the command palette (with `F1` or `Ctrl+Shift+P` or `Shift+Cmd+P`). Start typing "flutter new". Select the **Flutter: New Project** command.

<video id="rifRX4G1LyY"></video>

Next, select **Application** and then a folder in which to create your project. This could be your home directory, or something like `C:\src\`.

Finally, name your project. Something like `namer_app` or `my_awesome_namer`.

<img src="img/260a7d97f9678005.png" alt="260a7d97f9678005.png"  width="624.00" />

Flutter now creates your project folder and VS Code opens it.

> aside negative
>
> **Note:** VS Code shows a modal window asking whether to trust the contents of the folder.
>
> <img src="img/756a9586aacb2bda.png" alt="756a9586aacb2bda.png"  width="456.50" />
>
> Select **Yes**. The other option disables substantial Flutter functionality.

You'll now overwrite the contents of 3 files with a basic scaffold of the app.

### Copy & Paste the initial app

In the left pane of VS Code, make sure that **Explorer** is selected, and open the `pubspec.yaml` file.

<img src="img/e2a5bab0be07f4f7.png" alt="e2a5bab0be07f4f7.png"  width="624.00" />

Replace the contents of this file with the following:

####  [pubspec.yaml](https://github.com/flutter/codelabs/blob/main/namer/step_03/pubspec.yaml)

```
name: namer_app
description: A new Flutter project.

publish_to: 'none' # Remove this line if you wish to publish to pub.dev

version: 0.0.1+1

environment:
  sdk: ^3.6.0

dependencies:
  flutter:
    sdk: flutter

  english_words: ^4.0.0
  provider: ^6.1.2

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^5.0.0

flutter:
  uses-material-design: true
```

The `pubspec.yaml` file specifies basic information about your app, such as its current version, its dependencies, and the assets with which it will ship.

> aside positive
>
> **Note**: If you gave your app a name other than `namer_app`, you need to change the first line correspondingly.

Next, open another configuration file in the project, `analysis_options.yaml`.

<img src="img/a781f218093be8e0.png" alt="a781f218093be8e0.png"  width="624.00" />

Replace its contents with the following:

####  [analysis_options.yaml](https://github.com/flutter/codelabs/blob/main/namer/step_03/analysis_options.yaml)

```
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    avoid_print: false
    prefer_const_constructors_in_immutables: false
    prefer_const_constructors: false
    prefer_const_literals_to_create_immutables: false
    prefer_final_fields: false
    unnecessary_breaks: true
    use_key_in_widget_constructors: false
```

This file determines how strict Flutter should be when analyzing your code. Since this is your first foray into Flutter, you're telling the analyzer to take it easy. You can always tune this later. In fact, as you get closer to publishing an actual production app, you will almost certainly want to make the analyzer stricter than this.

Finally, open the `main.dart` file under the `lib/` directory.

<img src="img/e54c671c9bb4d23d.png" alt="e54c671c9bb4d23d.png"  width="624.00" />

Replace the contents of this file with the following:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_03/lib/main.dart)

```
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
```

These 50 lines of code are the entirety of the app so far.

> aside positive
>
> **Note**: This codelab is racing ahead to a point where you can start interactively changing the app—because that's the best way to learn Flutter. If you're missing an explanation of the code above, please be patient: it's coming.

In the next section, run the application in debug mode and start developing.


## Add a button
Duration: 15:00


This step adds a **Next** button to generate a new word pairing.

### Launch the app

First, open `lib/main.dart` and make sure that you have your target device selected. At the bottom right corner of VS Code, you'll find a button that shows the current target device. Click to change it.

<video id="sp1qiM2Lg1o"></video>

While `lib/main.dart` is open, find the "play"  <img src="img/b0a5d0200af5985d.png" alt="b0a5d0200af5985d.png"  width="20.00" /> button in the upper right-hand corner of VS Code's window, and click it.

<video id="7-kfneb4X7s"></video>

After about a minute, your app launches in debug mode. It doesn't look like much yet:

<img src="img/f96e7dfb0937d7f4.png" alt="f96e7dfb0937d7f4.png"  width="624.00" />

> aside positive
>
> **Note**: If your development target is a mobile device, it's possible that the text is partly obscured by a notch or a status bar. You will learn how to fix this soon.

### First Hot Reload

At the bottom of `lib/main.dart`, add something to the string in the first `Text` object, and save the file (with `Ctrl+S` or `Cmd+S`). For example:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_a_widget/lib/main.dart)

```
// ...

    return Scaffold(
      body: Column(
        children: [
          Text('A random AWESOME idea:'),  // ← Example change.
          Text(appState.current.asLowerCase),
        ],
      ),
    );

// ...
```

Notice how the app changes immediately but the random word stays the same. This is Flutter's famous *stateful Hot Reload* at work. Hot reload is triggered when you save changes to a source file.

<video id="p8w7M_w_AQY"></video>

#### Frequently Asked Questions

*  [What if Hot Reload doesn't work in VSCode?](https://stackoverflow.com/questions/54284047/vscode-hot-reload-for-flutter-does-not-work)
*  [Do I have to press 'r' for hot reload in VSCode?](https://stackoverflow.com/questions/49210769/vscode-hot-reload-for-flutter)
*  [Does Hot Reload work on the web?](https://stackoverflow.com/questions/58580517/flutter-web-does-hot-restart-instead-of-hot-reload-is-hot-reload-supporte)
*  [How do I remove the "Debug" banner?](https://stackoverflow.com/a/65166424/1416886)

### Adding a button

Next, add a button at the bottom of the `Column`, right below the second `Text` instance.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_a_widget/lib/main.dart)

```
// ...

    return Scaffold(
      body: Column(
        children: [
          Text('A random AWESOME idea:'),
          Text(appState.current.asLowerCase),

          // ↓ Add this.
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('Next'),
          ),

        ],
      ),
    );

// ...
```

When you save the change, the app updates again: A button appears and, when you click it, the *Debug Console* in VS Code shows a **button pressed!** message.

<video id="E2QSTLnvulc"></video>

### A Flutter crash course in 5 minutes

As much fun as it is to watch the *Debug Console*, you want the button to do something more meaningful. Before getting to that, though, take a closer look at the code in `lib/main.dart`, to understand how it works.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_a_widget/lib/main.dart)

```
// ...

void main() {
  runApp(MyApp());
}

// ...
```

At the very top of the file, you'll find the `main()` function. In its current form, it only tells Flutter to run the app defined in `MyApp`.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_a_widget/lib/main.dart)

```
// ...

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

// ...
```

The `MyApp` class extends `StatelessWidget`. Widgets are the elements from which you build every Flutter app. As you can see, even the *app itself* is a widget.

> aside positive
>
> **Note**: We'll get to the explanation of `StatelessWidget` (versus `StatefulWidget`) later.

The code in `MyApp` sets up the whole app. It creates the app-wide state (more on this later), names the app, defines the visual theme, and sets the "home" widget—the starting point of your app.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_a_widget/lib/main.dart)

```
// ...

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

// ...
```

Next, the `MyAppState` class defines the app's...well...state. This is your first foray into Flutter, so this codelab will keep it simple and focused. There are many powerful ways to manage app state in Flutter. One of the easiest to explain is `ChangeNotifier`, the approach taken by this app.

* `MyAppState` defines the data the app needs to function. Right now, it only contains a single variable with the current random word pair. You will add to this later.
* The state class extends `ChangeNotifier`, which means that it can *notify* others about its own *changes*. For example, if the current word pair changes, some widgets in the app need to know.
* The state is created and provided to the whole app using a `ChangeNotifierProvider` (see code above in `MyApp`). This allows any widget in the app to get hold of the state.
<img src="img/d9b6ecac5494a6ff.png" alt="d9b6ecac5494a6ff.png"  width="564.55" />

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_a_widget/lib/main.dart)

```
// ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {           // ← 1
    var appState = context.watch<MyAppState>();  // ← 2

    return Scaffold(                             // ← 3
      body: Column(                              // ← 4
        children: [
          Text('A random AWESOME idea:'),        // ← 5
          Text(appState.current.asLowerCase),    // ← 6
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('Next'),
          ),
        ],                                       // ← 7
      ),
    );
  }
}

// ...
```

Lastly, there's `MyHomePage`, the widget you've already modified. Each numbered line below maps to a line-number comment in the code above:

1. Every widget defines a `build()` method that's automatically called every time the widget's circumstances change so that the widget is always up to date.
2. `MyHomePage` tracks changes to the app's current state using the `watch` method.
3. Every `build` method must return a widget or (more typically) a nested *tree* of widgets. In this case, the top-level widget is `Scaffold`. You aren't going to work with `Scaffold` in this codelab, but it's a helpful widget and is found in the vast majority of real-world Flutter apps.
4. `Column` is one of the most basic layout widgets in Flutter. It takes any number of children and puts them in a column from top to bottom. By default, the column visually places its children at the top. You'll soon change this so that the column is centered.
5. You changed this `Text` widget in the first step.
6. This second `Text` widget takes `appState`, and accesses the only member of that class, `current` (which is a `WordPair`). `WordPair` provides several helpful getters, such as `asPascalCase` or `asSnakeCase`. Here, we use `asLowerCase` but you can change this now if you prefer one of the alternatives.
7. Notice how Flutter code makes heavy use of trailing commas. This particular comma doesn't need to be here, because `children` is the last (and also *only*) member of this particular `Column` parameter list. Yet it is generally a good idea to use trailing commas: they make adding more members trivial, and they also serve as a hint for Dart's auto-formatter to put a newline there. For more information, see  [Code formatting](https://docs.flutter.dev/development/tools/formatting).

Next, you'll connect the button to the state.

### Your first behavior

Scroll to `MyAppState` and add a `getNext` method.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_b_behavior/lib/main.dart)

```
// ...

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  // ↓ Add this.
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}

// ...
```

The new `getNext()` method reassigns `current` with a new random `WordPair`. It also calls `notifyListeners()`(a method of `ChangeNotifier)`that ensures that anyone watching `MyAppState` is notified.

All that remains is to call the `getNext` method from the button's callback.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_04_b_behavior/lib/main.dart)

```
// ...

    ElevatedButton(
      onPressed: () {
        appState.getNext();  // ← This instead of print().
      },
      child: Text('Next'),
    ),

// ...
```

Save and try the app now. It should generate a new random word pair every time you press the **Next** button.

In the next section, you'll make the user interface prettier.


## Make the app prettier
Duration: 15:00


This is how the app looks at the moment.

<img src="img/3dd8a9d8653bdc56.png" alt="3dd8a9d8653bdc56.png"  width="415.79" />

Not great. The centerpiece of the app—the randomly generated pair of words—should be more visible. It is, after all, the main reason our users are using this app! Also, the app contents are weirdly off-center, and the whole app is boringly black & white.

This section addresses these issues by working on the app's design. The end goal for this section is something like the following:

<img src="img/2bbee054d81a3127.png" alt="2bbee054d81a3127.png"  width="624.00" />

### Extract a widget

The line responsible for showing the current word pair looks like this now: `Text(appState.current.asLowerCase)`. To change it into something more complex, it's a good idea to extract this line into a separate widget. Having separate widgets for separate logical parts of your UI is an important way of managing complexity in Flutter.

Flutter provides a refactoring helper for extracting widgets but before you use it, make sure that the line being extracted only accesses what it needs. Right now, the line accesses `appState`, but really only needs to know what the current word pair is.

For that reason, rewrite the `MyHomePage` widget as follows:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_05_a_pair/lib/main.dart)

```
// ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;                 // ← Add this.

    return Scaffold(
      body: Column(
        children: [
          Text('A random AWESOME idea:'),
          Text(pair.asLowerCase),                // ← Change to this.
          ElevatedButton(
            onPressed: () {
              appState.getNext();
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

// ...
```

Nice. The `Text` widget no longer refers to the whole `appState`.

Now, call up the **Refactor** menu. In VS Code, you do this in one of two ways:

1. Right click the piece of code you want to refactor (`Text` in this case) and select **Refactor...** from the drop-down menu,

OR

2. Move your cursor to the piece code you want to refactor (`Text`, in this case), and press  `Ctrl+.` (Win/Linux) or `Cmd+.` (Mac).

<video id="9BhqIPMOEIM"></video>

In the **Refactor** menu, select **Extract Widget**. Assign a name, such as **BigCard**, and click `Enter`.

This automatically creates a new class, `BigCard`, at the end of the current file. The class looks something like the following:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_05_b_extract/lib/main.dart)

```
// ...

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    return Text(pair.asLowerCase);
  }
}

// ...
```

Notice how the app keeps working even through this refactoring.

### Add a Card

Now it's time to make this new widget into the bold piece of UI we envisioned at the beginning of this section.

Find the `BigCard` class and the `build()` method within it. As before, call up the **Refactor** menu on the `Text` widget. However, this time you aren't going to extract the widget.

Instead, select **Wrap with Padding**. This creates a new parent widget around the `Text` widget called `Padding`. After saving, you'll see that the random word already has more breathing room.

<video id="zPklkjwUsFc"></video>

Increase the padding from the default value of `8.0`. For example, use something like `20` for roomier padding.

> aside positive
>
> **Note**: Flutter uses Composition over Inheritance whenever it can. Here, instead of padding being an *attribute* of `Text`, it's a widget!
>
> This way, widgets can focus on their single responsibility, and you, the developer, have total freedom in how to compose your UI. For example, you can use the `Padding` widget to pad text, images, buttons, your own custom widgets, or the whole app. The widget doesn't care what it's wrapping.

Next, go one level higher. Place your cursor on the `Padding` widget, pull up the **Refactor** menu, and select **Wrap with widget...**.

This allows you to specify the parent widget. Type "Card" and press **Enter**.

<video id="vUWDPPeCCiE"></video>

This wraps the `Padding` widget, and therefore also the `Text`, with a `Card` widget.

<img src="img/6031adbc0a11e16b.png" alt="6031adbc0a11e16b.png"  width="624.00" />

### Theme and style

To make the card stand out more, paint it with a richer color. And because it's always a good idea to keep a consistent color scheme, use the app's `Theme` to choose the color.

Make the following changes to `BigCard`'s `build()` method.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_05_d_theme/lib/main.dart)

```
// ...

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);       // ← Add this.

    return Card(
      color: theme.colorScheme.primary,    // ← And also this.
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(pair.asLowerCase),
      ),
    );
  }

// ...
```

These two new lines do a lot of work:

* First, the code requests the app's current theme with `Theme.of(context)`.
* Then, the code defines the card's color to be the same as the theme's `colorScheme` property. The color scheme contains many colors, and `primary` is the most prominent, defining color of the app.

The card is now painted with the app's primary color:

<img src="img/a136f7682c204ea1.png" alt="a136f7682c204ea1.png"  width="624.00" />

You can change this color, and the color scheme of the whole app, by scrolling up to `MyApp` and changing the seed color for the `ColorScheme` there.

> aside positive
>
> **Tip**: Flutter's `Colors` class gives you convenient access to a palette of hand-picked colors, such as `Colors.deepOrange` or `Colors.red`. But you can, of course, choose any color. To define pure green with full opacity, for example, use `Color.fromRGBO(0, 255, 0, 1.0)`. If you're a fan of hexadecimal numbers, there's always `Color(0xFF00FF00)`.

<video id="RC8mLce-CKU"></video>

Notice how the color animates smoothly. This is called an **implicit animation**. Many Flutter widgets will smoothly interpolate between values so that the UI doesn't just "jump" between states.

The elevated button below the card also changes color. That's the power of using an app-wide `Theme` as opposed to hard-coding values.

### TextTheme

The card still has a problem: the text is too small and its color is hard to read. To fix this, make the following changes to `BigCard`'s `build()` method.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_05_e_text_style/lib/main.dart)

```
// ...

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // ↓ Add this.
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        // ↓ Change this line.
        child: Text(pair.asLowerCase, style: style),
      ),
    );
  }

// ...
```

What's behind this change:

* By using `theme.textTheme,` you access the app's font theme. This class includes members such as `bodyMedium` (for standard text of medium size), `caption` (for captions of images), or `headlineLarge` (for large headlines).
* The `displayMedium` property is a large style meant for display text. The word *display* is used in the typographic sense here, such as in  [display typeface](https://en.wikipedia.org/wiki/Display_typeface). The documentation for `displayMedium` says that "display styles are reserved for short, important text"—exactly our use case.
* The theme's `displayMedium` property could theoretically be `null`. Dart, the programming language in which you're writing this app, is null-safe, so it won't let you call methods of objects that are potentially `null`. In this case, though, you can use the `!` operator ("bang operator") to assure Dart you know what you're doing. (`displayMedium` is definitely *not* null in this case. The reason we know this is beyond the scope of this codelab, though.)
* Calling `copyWith()` on `displayMedium` returns a *copy* of the text style *with* the changes you define. In this case, you're only changing the text's color.
* To get the new color, you once again access the app's theme. The color scheme's `onPrimary` property defines a color that is a good fit for use *on* the app's *primary* color.

The app should now look something like the following:

<img src="img/2405e9342d28c193.png" alt="2405e9342d28c193.png"  width="624.00" />

If you feel like it, change the card further. Here are some ideas:

* `copyWith()` lets you change a lot more about the text style than just the color. To get the full list of properties you can change, put your cursor anywhere inside `copyWith()`'s parentheses, and hit `Ctrl+Shift+Space` (Win/Linux) or `Cmd+Shift+Space` (Mac).
* Similarly, you can change more about the `Card` widget. For example, you can enlarge the card's shadow by increasing the `elevation` parameter's value.
* Try experimenting with colors. Apart from `theme.colorScheme.primary`, there's also `.secondary`, `.surface`, and a myriad of others. All of these colors have their `onPrimary` equivalents.

### Improve accessibility

Flutter makes apps accessible by default. For example, every Flutter app correctly surfaces all text and interactive elements in the app to screen readers such as TalkBack and VoiceOver.

<img src="img/d1fad7944fb890ea.png" alt="d1fad7944fb890ea.png"  width="624.00" />

Sometimes, though, some work is required. In the case of this app, the screen reader might have problems pronouncing some generated word pairs. While humans don't have problems identifying the two words in **cheaphead**, a screen reader might pronounce the **ph** in the middle of the word as **f**.

A simple solution is to replace `pair.asLowerCase` with `"${pair.first} ${pair.second}"`. The latter uses string interpolation to create a string (such as `"cheap head"`) from the two words contained in `pair`. Using two separate words instead of a compound word makes sure that screen readers identify them appropriately, and provides a better experience to visually impaired users.

However, you might want to keep the visual simplicity of `pair.asLowerCase`. Use `Text`'s `semanticsLabel` property to override the visual content of the text widget with a semantic content that is more appropriate for screen readers:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_05_f_accessibility/lib/main.dart)

```
// ...

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),

        // ↓ Make the following change.
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }

// ...
```

Now, screen readers correctly pronounce each generated word pair, yet the UI stays the same. Try this in action by  [using a screen reader on your device](https://docs.flutter.dev/development/accessibility-and-localization/accessibility?tab=voiceover#screen-readers).

> aside positive
>
> **Tip**: Flutter has a variety of tools for accessibility, including automated tests and the `Semantics` widget. Learn more on Flutter documentation's  [Accessibility page](https://docs.flutter.dev/development/accessibility-and-localization/accessibility).

### Center the UI

Now that the random word pair is presented with enough visual flair, it's time to place it in the center of the app's window/screen.

First, remember that `BigCard` is part of a `Column`. By default, columns lump their children to the top, but we can easily override this. Go to `MyHomePage`'s `build()` method, and make the following change:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_05_g_center_vertical/lib/main.dart)

```
// ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,  // ← Add this.
        children: [
          Text('A random AWESOME idea:'),
          BigCard(pair: pair),
          ElevatedButton(
            onPressed: () {
              appState.getNext();
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

// ...
```

This centers the children inside the `Column` along its main (vertical) axis.

<img src="img/b555d4c7f5000edf.png" alt="b555d4c7f5000edf.png"  width="624.00" />

The children are already centered along the column's *cross* axis (in other words, they are already centered horizontally). But the `Column` *itself* isn't centered inside the `Scaffold`. We can verify this by using the **Widget Inspector**.

<video id="v0KWdBaoark"></video>

The Widget Inspector itself is beyond the scope of this codelab, but you can see that when the `Column` is highlighted, it doesn't take up the whole width of the app. It only takes up as much horizontal space as its children need.

You can just center the column itself. Put your cursor onto `Column`, call up the **Refactor** menu (with `Ctrl+.` or `Cmd+.`), and select **Wrap with Center**.

<video id="9HwsC1EJpHE"></video>

The app should now look something like the following:

<img src="img/455688d93c30d154.png" alt="455688d93c30d154.png"  width="624.00" />

If you want, you can tweak this some more.

* You can remove the `Text` widget above `BigCard`. It could be argued that the descriptive text ("A random AWESOME idea:") isn't needed anymore since the UI makes sense even without it. And it's cleaner that way.
* You can also add a `SizedBox(height: 10)` widget between `BigCard` and `ElevatedButton`. This way, there's a bit more separation between the two widgets. The `SizedBox` widget just takes space and doesn't render anything by itself. It's commonly used to create visual "gaps".

With the optional changes, `MyHomePage` contains this code:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_05_i_optional_changes/lib/main.dart)

```
// ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(pair: pair),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                appState.getNext();
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

// ...
```

And the app looks like the following:

<img src="img/3d53d2b071e2f372.png" alt="3d53d2b071e2f372.png"  width="624.00" />

In the next section, you'll add the ability to favorite (or 'like') generated words.


## Add functionality
Duration: 10:00


The app works, and occasionally even provides interesting word pairs. But whenever the user clicks **Next**, each word pair disappears forever. It would be better to have a way of "remembering" the best suggestions: such as a 'Like' button.

<img src="img/e6b01a8c90df8ffa.png" alt="e6b01a8c90df8ffa.png"  width="624.00" />

### Add the business logic

Scroll to `MyAppState` and add the following code:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_06_a_business_logic/lib/main.dart)

```
// ...

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  // ↓ Add the code below.
  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

// ...
```

Examine the changes:

* You added a new property to `MyAppState` called `favorites`. This property is initialized with an empty list: `[]`.
* You also specified that the list can only ever contain word pairs: `&lt;WordPair&gt;[]`, using  [generics](https://dart.dev/guides/language/language-tour#generics).  This helps make your app more robust—Dart refuses to even *run* your app if you try to add anything other than `WordPair` to it. In turn, you can use the `favorites` list knowing that there can never be any unwanted objects (like `null`) hiding in there.

> aside negative
>
> **Note**: Dart has collection types other than `List` (expressed with `[]`). You could argue that a `Set` (expressed with `{}`) would make more sense for a collection of favorites. To make this codelab as straightforward as possible, we're sticking with a list. But if you want, you can use a `Set` instead. The code wouldn't change much.

* You also added a new method, `toggleFavorite()`, which either removes the current word pair from the list of favorites (if it's already there), or adds it (if it isn't there yet). In either case, the code calls `notifyListeners();` afterwards.

### Add the button

With the "business logic" out of the way, it's time to work on the user interface again. Placing the 'Like' button to the left of the 'Next' button requires a `Row`. The `Row` widget is the horizontal equivalent of `Column`, which you saw earlier.

First, wrap the existing button in a `Row`. Go to `MyHomePage`'s `build()` method, put your cursor on the `ElevatedButton`, call up the **Refactor** menu with `Ctrl+.` or `Cmd+.`, and select **Wrap with Row**.

<video id="_G0mTrAAnrI"></video>

When you save, you'll notice that `Row` acts similarly to `Column`—by default, it lumps its children to the left. (`Column` lumped its children to the top.) To fix this, you could use the same approach as before, but with `mainAxisAlignment`. However, for didactic (learning) purposes, use `mainAxisSize`. This tells `Row` not to take all available horizontal space.

Make the following change:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_06_b_add_row/lib/main.dart)

```
// ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(pair: pair),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,   // ← Add this.
              children: [
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ...
```

The UI is back to where it was before.

<img src="img/3d53d2b071e2f372.png" alt="3d53d2b071e2f372.png"  width="624.00" />

Next, add the **Like** button and connect it to `toggleFavorite()`. For a challenge, first try to do this by yourself, without looking at the code block below.

<img src="img/e6b01a8c90df8ffa.png" alt="e6b01a8c90df8ffa.png"  width="624.00" />

It's okay if you don't do it exactly the same way as it's done below. In fact, don't worry about the heart icon unless you really want a major challenge.

It's also completely okay to fail—this is your first hour with Flutter, after all.

<img src="img/252f7c4a212c94d2.png" alt="252f7c4a212c94d2.png"  width="624.00" />

Here's one way to add the second button to `MyHomePage`. This time, use the `ElevatedButton.icon()` constructor to create a button with an icon. And at the top of the `build` method, choose the appropriate icon depending on whether the current word pair is already in favorites. Also, note the use of `SizedBox` again, to keep the two buttons a bit apart.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_06_c_add_like_button/lib/main.dart)

```
// ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    // ↓ Add this.
    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(pair: pair),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                // ↓ And this.
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite();
                  },
                  icon: Icon(icon),
                  label: Text('Like'),
                ),
                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ...
```

The app should look as follows:

<video id="6c58yWuCrAk"></video>

Unfortunately, the user can't *see* the favorites. It's time to add a whole separate screen to our app. See you in the next section!


## Add navigation rail
Duration: 20:00


Most apps can't fit everything into a single screen. This particular app probably could, but for didactic purposes, you are going to create a separate screen for the user's favorites. To switch between the two screens, you are going to implement your first `StatefulWidget`.

<img src="img/f62c54f5401a187.png" alt="f62c54f5401a187.png"  width="624.00" />

To get to the meat of this step as soon as possible, split `MyHomePage` into 2 separate widgets.

Select all of `MyHomePage`, delete it, and replace with the following code:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_07_a_split_my_home_page/lib/main.dart)

```
// ...

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: false,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
              ],
              selectedIndex: 0,
              onDestinationSelected: (value) {
                print('selected: $value');
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: GeneratorPage(),
            ),
          ),
        ],
      ),
    );
  }
}


class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ...
```

When saved, you'll see that the visual side of the UI is ready—but it doesn't work. Clicking ♥︎ (the heart) in the navigation rail does nothing.

<img src="img/388bc25fe198c54a.png" alt="388bc25fe198c54a.png"  width="624.00" />

Examine the changes.

* First, notice that the entire contents of `MyHomePage` is extracted into a new widget, `GeneratorPage`. The only part of the old `MyHomePage` widget that didn't get extracted is `Scaffold`.
* The new `MyHomePage` contains a `Row` with two children. The first widget is `SafeArea`, and the second  is an `Expanded` widget.
* The `SafeArea` ensures that its child is not obscured by a hardware notch or a status bar. In this app, the widget wraps around `NavigationRail` to prevent the navigation buttons from being obscured by a mobile status bar, for example.
* You can change the `extended: false` line in NavigationRail to `true`. This shows the labels next to the icons. In a future step, you will learn how to do this automatically when the app has enough horizontal space.
* The navigation rail has two destinations (*Home* and *Favorites*), with their respective icons and labels. It also defines the current `selectedIndex`. A selected index of zero selects the first destination, a selected index of one selects the second destination, and so on. For now, it's hard coded to zero.
* The navigation rail also defines what happens when the user selects one of the destinations with `onDestinationSelected`. Right now, the app merely outputs the requested index value with `print()`.
* The second child of the `Row` is the `Expanded` widget. Expanded widgets are extremely useful in rows and columns—they let you express layouts where some children take only as much space as they need (`SafeArea`, in this case) and other widgets should take as much of the remaining room as possible (`Expanded`, in this case). One way to think about `Expanded` widgets is that they are "greedy". If you want to get a better feel of the role of this widget, try wrapping the `SafeArea` widget with another `Expanded`. The resulting layout looks something like this:

<img src="img/6bbda6c1835a1ae.png" alt="6bbda6c1835a1ae.png"  width="624.00" />


* Two `Expanded` widgets split all the available horizontal space between themselves, even though the navigation rail only really needed a little slice on the left.
* Inside the `Expanded` widget, there's a colored `Container`, and inside the container, the `GeneratorPage`.

### Stateless versus stateful widgets

Until now, `MyAppState` covered all your state needs. That's why all the widgets you have written so far are state**less**. They don't contain any mutable state of their own. None of the widgets can change *itself*—they must go through `MyAppState`.

This is about to change.

You need some way to hold the value of the navigation rail's `selectedIndex`. You also want to be able to change this value from within the `onDestinationSelected` callback.

You *could* add `selectedIndex` as yet another property of `MyAppState`. And it would work. But you can imagine that the app state would quickly grow beyond reason if every widget stored its values in it.

<img src="img/e52d9c0937cc0823.jpeg" alt="e52d9c0937cc0823.jpeg"  width="624.00" />

Some state is only relevant to a single widget, so it should stay with that widget.

Enter the `StatefulWidget`, a type of widget that has `State`. First, convert `MyHomePage` to a stateful widget.

Place your cursor on the first line of `MyHomePage` (the one that starts with `class MyHomePage...`), and call up the **Refactor** menu using `Ctrl+.` or `Cmd+.`. Then, select **Convert to StatefulWidget**.

<video id="Cl0RQJXxNPY"></video>

The IDE creates a new class for you, `_MyHomePageState`. This class extends `State`, and can therefore manage its own values. (It can change *itself*.) Also notice that the `build` method from the old, stateless widget has moved to the `_MyHomePageState` (instead of staying in the widget). It was moved verbatim—nothing inside the `build` method changed. It now merely lives somewhere else.

> aside negative
>
> The underscore (`_`) at the start of `_MyHomePageState` makes that class private and is enforced by the compiler. If you want to know more about privacy in Dart, and other topics, read the  [Language Tour](https://dart.dev/language/libraries).

### setState

The new stateful widget only needs to track one variable: `selectedIndex`. Make the following 3 changes to `_MyHomePageState`:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_07_c_add_selectedindex/lib/main.dart)

```
// ...

class _MyHomePageState extends State<MyHomePage> {

  var selectedIndex = 0;     // ← Add this property.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: false,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
              ],
              selectedIndex: selectedIndex,    // ← Change to this.
              onDestinationSelected: (value) {

                // ↓ Replace print with this.
                setState(() {
                  selectedIndex = value;
                });

              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: GeneratorPage(),
            ),
          ),
        ],
      ),
    );
  }
}

// ...
```

Examine the changes:

1. You introduce a new variable, `selectedIndex`, and initialize it to `0`.
2. You use this new variable in the `NavigationRail` definition instead of the hard-coded `0` that was there until now.
3. When the `onDestinationSelected` callback is called, instead of merely printing the new value to console, you assign it to `selectedIndex` inside a `setState()` call. This call is similar to the `notifyListeners()` method used previously—it makes sure that the UI updates.

<video id="H3lyeYb-XEI"></video>

The navigation rail now responds to user interaction. But the expanded area on the right stays the same. That's because the code isn't using `selectedIndex` to determine what screen displays.

### Use selectedIndex

Place the following code at the top of `_MyHomePageState`'s `build` method, just before `return Scaffold`:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_07_d_use_selectedindex/lib/main.dart)

```
// ...

Widget page;
switch (selectedIndex) {
  case 0:
    page = GeneratorPage();
    break;
  case 1:
    page = Placeholder();
    break;
  default:
    throw UnimplementedError('no widget for $selectedIndex');
}

// ...
```

Examine this piece of code:

1. The code declares a new variable, `page`, of the type `Widget`.
2. Then, a switch statement assigns a screen to `page`, according to the current value in `selectedIndex`.
3. Since there's no `FavoritesPage` yet, use `Placeholder`; a handy widget that draws a crossed rectangle wherever you place it, marking that part of the UI as unfinished.

<img src="img/5685cf886047f6ec.png" alt="5685cf886047f6ec.png"  width="287.50" />

4. Applying the  [fail-fast principle](https://en.wikipedia.org/wiki/Fail-fast), the switch statement also makes sure to throw an error if `selectedIndex` is neither 0 or 1. This helps prevent bugs down the line. If you ever add a new destination to the navigation rail and forget to update this code, the program crashes in development (as opposed to letting you guess why things don't work, or letting you publish a buggy code into production).

Now that `page` contains the widget you want to show on the right, you can probably guess what other change is needed.

Here's `_MyHomePageState` after that single remaining change:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_07_d_use_selectedindex/lib/main.dart)

```
// ...

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = Placeholder();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: false,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: page,  // ← Here.
            ),
          ),
        ],
      ),
    );
  }
}


// ...
```

The app now switches between our `GeneratorPage` and the placeholder that will soon become the **Favorites** page.

<video id="QM20fLcSYjs"></video>

### Responsiveness

Next, make the navigation rail responsive. That is to say, make it automatically show the labels (using `extended: true`) when there's enough room for them.

<img src="img/a8873894c32e0d0b.png" alt="a8873894c32e0d0b.png"  width="624.00" />

Flutter provides several widgets that help you make your apps *automatically* responsive. For example, `Wrap` is a widget similar to `Row` or `Column` that automatically wraps children to the next "line" (called "run") when there isn't enough vertical or horizontal space. There's `FittedBox`, a widget that automatically fits its child into available space according to your specifications.

But `NavigationRail` doesn't *automatically* show labels when there's enough space because it can't know what *is* enough space in every context. It's up to you, the developer, to make that call.

Say you decide to show labels only if `MyHomePage` is at least 600 pixels wide.

> aside negative
>
> **Note:** Flutter works with logical pixels as a unit of length. They are also sometimes called **device-independent pixels**. A padding of 8 pixels is visually the same regardless of whether the app is running on an old low-res phone or a newer ‘retina' device. There are roughly 38 logical pixels per centimeter, or about 96 logical pixels per inch, of the physical display.

The widget to use, in this case, is `LayoutBuilder`. It lets you change your widget tree depending on how much available space you have.

Once again, use Flutter's **Refactor** menu in VS Code to make the required changes. This time, though, it's a little more complicated:

1. Inside `_MyHomePageState`'s `build` method, put your cursor on `Scaffold`.
2. Call up the **Refactor** menu with `Ctrl+.` (Windows/Linux) or `Cmd+.` (Mac).
3. Select **Wrap with Builder** and press **Enter**.
4. Modify the name of the newly added `Builder` to `LayoutBuilder`.
5. Modify the callback parameter list from `(context)` to `(context, constraints)`.

<video id="GAST9cQDYsw"></video>

`LayoutBuilder`'s `builder` callback is called every time the constraints change. This happens when, for example:

* The user resizes the app's window
* The user rotates their phone from portrait mode to landscape mode, or back
* Some widget next to `MyHomePage` grows in size, making `MyHomePage`'s constraints smaller
* And so on

Now your code can decide whether to show the label by querying the current `constraints`. Make the following single-line change to `_MyHomePageState`'s `build` method:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_07_e_add_layout_builder/lib/main.dart)

```
// ...

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = Placeholder();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,  // ← Here.
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Favorites'),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}


// ...
```

Now, your app responds to its environment, such as screen size, orientation, and platform! In other words, it's responsive!.

<video id="PjgELjvS6u8"></video>

The only work that remains is to replace that `Placeholder` with an actual **Favorites** screen. That's covered in the next section.


## Add a new page
Duration: 10:00


Remember the `Placeholder` widget we used instead of the **Favorites** page?

<video id="QM20fLcSYjs"></video>

It's time to fix this.

If you feel adventurous, try to do this step by yourself. Your goal is to show the list of `favorites` in a new stateless widget, `FavoritesPage`, and then show that widget instead of the `Placeholder`.

Here are a few pointers:

* When you want a `Column` that scrolls, use the `ListView` widget.
* Remember, access the `MyAppState` instance from any widget using `context.watch&lt;MyAppState&gt;()`.
* If you also want to try a new widget, `ListTile` has properties like `title` (generally for text), `leading` (for icons or avatars) and `onTap` (for interactions). However, you can achieve similar effects with the widgets you already know.
* Dart allows using `for` loops inside collection literals. For example, if `messages` contains a list of strings, you can have code like the following:

<img src="img/f0444bba08f205aa.png" alt="f0444bba08f205aa.png"  width="624.00" />

On the other hand, if you're more familiar with functional programming, Dart also lets you write code like `messages.map((m) =&gt; Text(m)).toList()`. And, of course, you can always create a list of widgets and imperatively add to it inside the `build` method.

The advantage of adding the **Favorites** page yourself is that you learn more by making your own decisions. The disadvantage is that you might run into trouble that you aren't yet able to solve by yourself. Remember: failing is okay, and is one of the most important elements of learning. Nobody expects you to nail Flutter development in your first hour, and neither should you.

<img src="img/252f7c4a212c94d2.png" alt="252f7c4a212c94d2.png"  width="624.00" />

What follows is just *one* way to implement the favorites page. How it's implemented will (hopefully) inspire you to play with the code—improve the UI and make it your own.

Here's the new `FavoritesPage` class:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/namer/step_08/lib/main.dart)

```
// ...

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          ),
      ],
    );
  }
}
```

Here's what the widget does:

* It gets the current state of the app.
* If the list of favorites is empty, it shows a centered message: **No favorites yet***.*
* Otherwise, it shows a (scrollable) list.
* The list starts with a summary (for example, ***You have 5 favorites***﻿*.*).
* The code then iterates through all the favorites, and constructs a `ListTile` widget for each one.

All that remains now is to replace  the `Placeholder` widget with a `FavoritesPage`. And voilá!

<video id="jj5yBVwnEQw"></video>

You can get the final code of this app in the  [codelab repo](https://github.com/flutter/codelabs/tree/main/namer/step_08) on GitHub.


## Next steps



**Congratulations!**

Look at you! You took a non-functional scaffold with a `Column` and two `Text` widgets, and made it into a responsive, delightful little app.

<img src="img/d6e3d5f736411f13.png" alt="d6e3d5f736411f13.png"  width="624.00" />

### What we've covered

* The basics of how Flutter works
* Creating layouts in Flutter
* Connecting user interactions (like button presses) to app behavior
* Keeping your Flutter code organized
* Making your app responsive
* Achieving a consistent look & feel of your app

### What next?

* Experiment more with the app you wrote during this lab.
* Look at the code of  [this advanced version](https://dartpad.dev/?id=e7076b40fb17a0fa899f9f7a154a02e8) of the same app, to see how you can add animated lists, gradients, cross-fades, and more.

<video id="g7EbCoor-gg"></video>
* Follow your learning journey by going to  [flutter.dev/learn](https://flutter.dev/learn).
