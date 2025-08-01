# Flutter Codelabs repository

This repository contains the code for Flutter codelabs. Each project has a copy
of a project at multiple different steps of the codelab.

## Coding standards

### Formatting & Style

* **`dart format`**: The official Dart formatter is the standard. Most IDEs can be configured to run this automatically on save.
* **Line Length**: While the default is 80 characters, many projects use up to 120. Consistency is key.
* **Trailing Commas**: Use trailing commas on the last item in a parameter or argument list. This improves readability and makes for cleaner version control diffs.
* **Linter**: The `flutter_lints` package is the official linter. It helps enforce style, identify potential errors, and improve code quality. It should be included in your `pubspec.yaml`.

### Naming Conventions

* **`UpperCamelCase`**: For classes, enums, typedefs, and extensions.
* **`lowerCamelCase`**: For variables, constants, methods, and parameters.
* **`snake_case`**: For files, directories, and packages.
* **Private Members**: Use a leading underscore (`_`) for private members of a library (e.g., `_myPrivateVariable`).

### Code Organization

* **DRY (Don't Repeat Yourself)**: Abstract reusable code into widgets, functions, or classes.
* **Split Large Widgets**: Break down large `build` methods into smaller, more manageable widgets. This improves readability and performance.
* **Directory Structure**: A common and effective structure is to separate code by feature or layer:
  * `lib/src`: For internal library code.
  * `lib/src/models`: Data classes.
  * `lib/src/widgets` or `lib/src/views`: UI components.
  * `lib/src/controllers` or `lib/src/blocs`: Business logic.
  * `lib/src/services`: API clients, database access, etc.

### Widget Best Practices

* **`const` is King**: Use `const` for widgets and constructors whenever possible. This is a significant performance optimization, as it prevents unnecessary widget rebuilds.
* **`StatelessWidget` vs. `StatefulWidget`**: Prefer `StatelessWidget` unless you have mutable state that changes over the lifetime of the widget.
* **`ListView.builder`**: For long or dynamic lists, always use `ListView.builder` to ensure that only the visible items are built and rendered.
* **Conditional Rendering**: Use collection `if` for conditionally including a widget in a list of children.

### State Management

* While Flutter offers `setState` for local state, for app-level state it's recommended to use a dedicated state management solution like Provider, BLoC, or Riverpod.
* The key principle is to separate UI from business logic.

### General Dart Best Practices

* **Type Safety**: Avoid `dynamic` when possible. Use strong typing. Use `is` for type checking and avoid `as` to prevent runtime exceptions.
* **Tear-offs**: If you're calling a function with the same arguments, you can "tear-off" the method instead of creating a new lambda. For example, use `myList.forEach(print)` instead of `myList.forEach((item) => print(item))`.

These standards are widely adopted in the Flutter community and are a great starting point for any project. For more in-depth information, the official [Effective Dart](https://dart.dev/effective-dart) guide is an excellent resource.
