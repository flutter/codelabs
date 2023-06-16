---
id: codelabs/dart-patterns-records
summary: Use patterns, records, and other new features of Dart 3 to rearchitect your UI design style in Flutter.
authors: John Ryan, Marya Belanger
categories: flutter
tags: kiosk,tag-flutter,web
feedback_link: https://github.com/flutter/flutter/issues
analytics_account: UA-52746336-1
source: 17L9jk2dhTFrdEqyLb6Wxhq0NeRrtzpQLLJv09qROsA8
duration: 39

---

# Dive into Dart's patterns and records

[Codelab Feedback](https://github.com/flutter/flutter/issues)


## Introduction
Duration: 02:00


Dart 3 introduces *patterns* to the language, a major new category of grammar. Beyond this new way to write Dart code, there are several other language enhancements, including

* *records* for bundling data of different types,
* *class modifiers* for controlling access, and
* new *switch expressions* and *if-case statements*.

These features expand the choices you have when writing Dart code. In this codelab, you learn how to use them to make your code more compact, streamlined, and flexible.

This codelab assumes you have some familiarity with Flutter and Dart. If you feel a little rusty, consider brushing up on the basics with the following resources:

*  [Introduction to Dart](https://dart.dev/language)
*  [Your first Flutter app](https://codelabs.developers.google.com/codelabs/flutter-codelab-first)

### What you'll build

This codelab creates an application that displays a JSON document in Flutter. The application simulates JSON coming from an external source. The JSON contains document data such as the modification date, title, headers, and paragraphs. You write code to neatly pack data into records so that it can be transferred and unpacked wherever your Flutter widgets need it.

You then use patterns to build the appropriate widget when the value matches that pattern. You also see how to use patterns to destructure data into local variables.

<img src="img/c0dd80db66b6df56.png" alt="The final application you build in this codelab, a document with a title, the last modification date, headers and paragraphs."  width="624.00" />

### **What you'll learn**

* How to create a record that stores multiple values with different types.
* How to return multiple values from a function using a record. 
* How to use patterns to match, validate, and destructure data from records and other objects.
* How to bind pattern-matched values to new or existing variables.
* How to use new switch statement capabilities, switch expressions, and if-case statements.
* How to take advantage of *exhaustiveness checking* to ensure that every case is handled in a switch statement or switch expression.


## Set up your environment
Duration: 03:00


1. Install the  [Flutter SDK](https://docs.flutter.dev/get-started/install).
2.  [Set up an editor](https://docs.flutter.dev/get-started/editor) such as Visual Studio Code (VS Code).
3. Go through the  [Platform setup](https://docs.flutter.dev/get-started/install/macos#platform-setup) steps for at least one target platform (iOS, Android, Desktop, or a web browser).


## Create the project
Duration: 03:00


Before diving into patterns, records, and other new features, take a moment to set up your environment and the simple Flutter project for which you write all your code.

### Get Dart 

* To ensure you're using Dart 3, run the following commands:

```console
flutter channel stable
flutter upgrade
dart --version # This should print "Dart SDK version: 3.0.0" or higher
```

> aside positive
> 
> **Note:** The Flutter SDK includes Dart, but Dart is also available as a  [standalone SDK](https://dart.dev/get-dart). 

> aside negative
> 
> **Warning:** Dart 3 only supports null safe code. If you have existing Dart projects that have not opted-in to null safety, this upgrade causes that code to break. Consult  [Sound null safety](https://dart.dev/null-safety#dart-3-and-null-safety) for safeguards and precautions.

### Create a Flutter project

1. Use the `flutter create` command to create a new project named `patterns_codelab`. The `--empty` flag prevents the creation of the standard counter app in the `lib/main.dart` file, which you'd have to remove anyway.

```console
flutter create --empty patterns_codelab
```

2. Then, open the `patterns_codelab` directory using VS Code.

```console
code patterns_codelab
```

<img src="img/d12b0745719a7c5f.png" alt="A screenshot of VS Code displaying the project created with the &#39;flutter create&#39; command."  width="624.00" />

### **Set the minimum SDK version**

* Set the SDK version constraint for your project to depend on Dart 3 or above.

####  [pubspec.yaml](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_03/pubspec.yaml)

```
environment:
  sdk: ^3.0.0
```

> aside positive
> 
> **Did you know?** This is your first introduction to Dart 3! The caret `^` syntax can now be used for SDK constraints (although it has been supported for packages since Dart 1.8). Previously, this would be written `&gt;=3.0.0 &lt;4.0.0`.


## Set up the project
Duration: 03:00


In this step, you create or update two Dart files:

* The `main.dart` file that contains widgets for the app, and
* The `data.dart` file that provides the app's data.

You will continue modifying both of these files in the subsequent steps.

### Define the data for the app

* Create a new file, `lib/data.dart`, and add the following code to it:

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_04/lib/data.dart)

```
import 'dart:convert';

class Document {
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);
}

const documentJson = '''
{
  "metadata": {
    "title": "My Document",
    "modified": "2023-05-10"
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    {
      "type": "p",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "checkbox",
      "checked": false,
      "text": "Learn Dart 3"
    }
  ]
}
''';
```

Imagine a program receiving data from an external source, like an I/O stream or HTTP request. In this codelab, you simplify that more-realistic use case by mocking incoming JSON data with a multi-line string in the `documentJson` variable.

The JSON data is defined in the `Document` class, and later in this codelab, you add functions that return data from the parsed JSON. This class defines and initializes the `_json` field in its constructor.

> aside positive
> 
> **Did you know?** You can press `Command` or `Control` and click on functions, classes, and libraries in VS Code to see where they  are defined.
> 
> Try doing this on `jsonDecode` and see the editor open to the declaration in the `dart:convert` library.

### Run the app

The `flutter create` command creates the `lib/main.dart` file as part of the default Flutter file structure.

1. To create a starting point for the application, replace the contents of `main.dart` with the following code:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_04/lib/main.dart)

```
import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(
        document: Document(),
      ),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title goes here'),
      ),
      body: const Column(
        children: [
          Center(
            child: Text('Body goes here'),
          ),
        ],
      ),
    );
  }
}
```

You added the following two widgets to the app:

* `DocumentApp` sets up the latest version of  [Material Design](https://docs.flutter.dev/development/ui/material) for theming the UI.
* `DocumentScreen` provides the visual layout of the page using the `Scaffold` widget. 

> aside positive
> 
> **Tip:** Splitting your UI into separate widgets reduces the size of your `build()` methods.

2. To make sure everything is running smoothly, run the app on your host machine by clicking **Run and Debug**:

<img src="img/6ce228aa9571aa1f.png" alt="An image of the &#39;Run and debug&#39; button, available in &#39;Run and debug&#39; section of the activity bar on the left hand side."  width="373.93" />

3. By default, Flutter chooses whichever target platform is available. To change the target platform, select the current platform on the Status Bar:

<img src="img/e3d946a29bdcb267.png" alt="A screenshot of the target platform selector in VS Code."  width="624.00" />

You should see an empty frame with the `title` and `body` elements defined in the `DocumentScreen` widget:

<img src="img/7a943dfa88de3778.png" alt="A screenshot of the application built in this step."  width="624.00" />


## Create and return records
Duration: 03:00


In this step, you use records to return multiple values from a function call. Then, you call that function in the `DocumentScreen` widget to access the values and reflect them in the UI.

### Create and return a record

* In `data.dart`, add a new getter method to the Document class called `metadata` that returns a record:

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_05/lib/data.dart)

```
import 'dart:convert';

class Document {
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);

  (String, {DateTime modified}) get metadata {           // Add from here...
    const title = 'My Document';
    final now = DateTime.now();

    return (title, modified: now);
  }                                                      // to here.
}
```

The return type for this function is a record with two fields, one with the type `String`, and the other with the type `DateTime`.

The return statement constructs a new  record by enclosing the two values in parenthesis, `(title, modified: now)`.

The first field is positional and unnamed, and the second field is named `modified`.

> aside positive
> 
> **Summary:**
> 
> * Records are comma-delimited field lists enclosed in parentheses.
> * Record fields can each have a different type, so records can collect multiple types.
> * Records can contain both named and positional fields, like argument lists in a function.
> * Records can be returned from a function, so they enable you to return multiple values from a function call.

### **Access record fields**

1. In the `DocumentScreen` widget, call the `metadata` getter method in the `build` method so that you can get your record and access its values:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_05/lib/main.dart)

```
class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final metadataRecord = document.metadata;              // Add this line.

    return Scaffold(
      appBar: AppBar(
        title: Text(metadataRecord.$1),                    // Modify this line,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified ${metadataRecord.modified}',  // And this one.
            ),
          ),
        ],
      ),
    );
  }
}
```

The `metadata` getter method returns a record, which is assigned to the local variable `metadataRecord`. Records are a light and easy way to return multiple values from a single function call and assign them to a variable.

To access the individual fields composed in that record, you can use records' built-in getter syntax.

* To get a positional field (a field without a name, like `title`), use the getter `$&lt;num&gt;` on the record. This returns only unnamed fields.
* Named fields like `modified` don't have a positional getter, so you can use its name directly, like `metadataRecord.modified`.

To determine the name of a getter for a positional field, start at `$1` and skip named fields. For example:

```
var record = (named: 'v', 'y', named2: 'x', 'z');
print(record.$1);                               // prints y
print(record.$2);                               // prints z
```

2. Hot reload to see the JSON values displayed in the app. The VS Code Dart plugin hot-reloads every time you save a file.

<img src="img/60c0320ebe1d0415.png" alt="A screenshot of the app, which displays the title and modified date."  width="624.00" />

You can see that each field did, in fact, maintain its type.

* The `Text()` method takes a String as its first argument.
* The `modified` field is a DateTime, and is converted into a `String` using  [string interpolation](https://dart.dev/language/built-in-types#strings).

The other type-safe way to return different types of data is to define a class, which is more verbose. 


## Match and destructure with patterns
Duration: 02:00


Records can efficiently collect different types of data and easily pass it around. Now, improve your code using *patterns*.

A pattern represents a structure that one or more values can take, like a blueprint. Patterns compare against actual values to determine if they *match*. 

Some patterns, when they match, *destructure* the matched value by pulling data out of it. Destructuring lets you unpack values from an object to assign them to local variables, or perform further matching on them.

### Destructure a record into local variables

1. Refactor the `build` method of `DocumentScreen` to call `metadata` and use it to initialize a *pattern variable declaration*:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_06_a/lib/main.dart)

```
class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (title, modified: modified) = document.metadata;   // Modify

    return Scaffold(
      appBar: AppBar(
        title: Text(title),                                  // Modify
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified $modified',                     // Modify
            ),
          ),
        ],
      ),
    );
  }
}
```

The record pattern `(title, modified: modified)` contains two *variable patterns* that match against the fields of the record returned by `metadata`.

* The expression matches the subpattern because the result is a record with two fields, one of which is named `modified`.
* Because they match, the variable declaration pattern destructures the expression, accessing its values and binding them to new local variables of the same types and names, `String title` and `DateTime modified`.

There is a shorthand for when the name of a field and the variable populating it are the same. Refactor the `build` method of `DocumentScreen` as follows.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_06_b/lib/main.dart)

```
class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;            // Modify

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified $modified',
            ),
          ),
        ],
      ),
    );
  }
}
```

The syntax of the variable pattern `:modified` is shorthand for `modified: modified`. If you want a new local variable of a different name, you can write `modified: localModified` instead.

2. Hot reload to see the same result as in the previous step. The behavior is exactly the same; you just made your code more concise.


## Use patterns to extract data
Duration: 05:00


In certain contexts, patterns don't only match and destructure but can also make a *decision* about *what the code does*, based on whether or not the pattern matches. These are called *refutable patterns*.

The variable declaration pattern you used in the last step is an *irrefutable pattern*: the value must match the pattern or it's an error and destructuring won't happen. Think of any variable declaration or assignment; you can't assign a value to a variable if they're not the same type.

Refutable patterns, on the other hand, are used in control flow contexts:

* They *expect* that some values they compare against will not match. 
* They are meant to *influence the control flow*, based on whether or not the value matches. 
* They *don't interrupt execution* with an error if they don't match, they just move to the next statement.
* They can destructure and bind variables that are *only usable* when they match

### **Read JSON values without patterns**

In this section, you read data without pattern matching to see how patterns can help you work with JSON data.

* Replace the previous version of `metadata` with one that reads values from the `_json` map. Copy and paste this version of `metadata` into the `Document` class:

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_07_a/lib/data.dart)

```
class Document {
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);

  (String, {DateTime modified}) get metadata {
    if (_json.containsKey('metadata')) {                     // Modify from here...
      final metadataJson = _json['metadata'];
      if (metadataJson is Map) {
        final title = metadataJson['title'] as String;
        final localModified =
            DateTime.parse(metadataJson['modified'] as String);
        return (title, modified: localModified);
      }
    }
    throw const FormatException('Unexpected JSON');          // to here.
  }
}
```

This code validates that the data is structured correctly without using patterns. In a later step, you use pattern matching to perform the same validation using less code. It performs three checks before doing anything else:

* The JSON contains the data *structure* you expect:
`if (_json.containsKey('metadata'))`
* The data has the *type* you expect:
`if (metadataJson is Map)`
* That the data is *not null*, which is implicitly confirmed in the previous check.

### **Read JSON values using a map pattern**

With a refutable pattern, you can verify that the JSON has the expected structure using a *map pattern*.

* Replace the previous version of `metadata` with this code:

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_07_b/lib/data.dart)

```
class Document {
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);

  (String, {DateTime modified}) get metadata {
    if (_json                                                // Modify from here...
        case {
          'metadata': {
            'title': String title,
            'modified': String localModified,
          }
        }) {
      return (title, modified: DateTime.parse(localModified));
    } else {
      throw const FormatException('Unexpected JSON');
    }                                                        // to here.
  }
}
```

Here, you see a new kind of if-statement (introduced in Dart 3), the *if-case*. The case body only executes if the case pattern matches the data in `_json`. This match accomplishes the same checks you wrote in the first version of `metadata` to validate the incoming JSON. This code validates the following:

* `_json` is a Map type.
* `_json` contains a `metadata` key.
* `_json` is not null.
* `_json['metadata']` is also a Map type.
* `_json['metadata']` contains the keys `title` and `modified`.
* `title` and `localModified` are strings and aren't null.

If the value doesn't match, the *pattern refutes* (refuses to continue execution) and proceeds to the `else` clause. If the match is successful, the pattern destructures the values of `title` and `modified` from the map and binds them to new local variables.

For a full list of patterns, see the  [table in the Patterns section](https://github.com/dart-lang/language/blob/master/accepted/future-releases/0546-patterns/feature-specification.md#patterns) of the feature specification.

> aside positive
> 
> **Summary:** Using patterns in this step tests types, destructures, and binds values using a single statement.


## Prepare the app for more patterns
Duration: 02:00


So far, you address the `metadata` part of the JSON data. In this step, you refine your business logic a bit more in order to handle the data in the `blocks` list and render it into your app.

```
{
  "metadata": {
    // ...
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    // ...
  ]
}
```

### Create a class that stores data

* Add a new class, `Block`, to `data.dart`, which is used to read and store the data for one of the blocks in the JSON data.

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_08/lib/data.dart)

```
class Block {
  final String type;
  final String text;
  Block(this.type, this.text);

  factory Block.fromJson(Map<String, dynamic> json) {
    if (json case {'type': final type, 'text': final text}) {
      return Block(type, text);
    } else {
      throw const FormatException('Unexpected JSON format');
    }
  }
}
```

The factory constructor `fromJson()` uses the same if-case with a map pattern that you've seen before. 

Notice that the `json` matches the map pattern, even though one of the keys, `checked`, is not accounted for in the pattern. Map patterns ignore any entries in the map object that aren't explicitly accounted for in the pattern.

### Return a list of Block objects

* Next, add a new function, `getBlocks()`, to the `Document` class. `getBlocks()` parses the JSON into instances of the `Block` class and returns a list of blocks to render in your UI:

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_08/lib/data.dart)

```
class Document {
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);

  (String, {DateTime modified}) get metadata {
    if (_json
        case {
          'metadata': {
            'title': String title,
            'modified': String localModified,
          }
        }) {
      return (title, modified: DateTime.parse(localModified));
    } else {
      throw const FormatException('Unexpected JSON');
    }
  }

  List<Block> getBlocks() {                                  // Add from here... 
    if (_json case {'blocks': List blocksJson}) {
      return [for (final blockJson in blocksJson) Block.fromJson(blockJson)];
    } else {
      throw const FormatException('Unexpected JSON format');
    }
  }                                                          // to here.
}
```

The `getBlocks()` function returns a list of `Block` objects, which you use later in order to build the UI. A familiar if-case statement performs validation and casts the value of the `blocks` metadata into a new `List` named `blocksJson` (without patterns, you'd need the  [`toList()`](https://api.dart.dev/stable/dart-core/Iterable/toList.html) method to cast).

The list literal contains a  [collection for](https://dart.dev/language/collections#collection-operators) in order to fill the new list with `Block` objects.

This section doesn't introduce any pattern-related features you haven't already tried in this codelab. In the next step, you prepare to render the list items in your UI.


## Use patterns to display the document
Duration: 04:00


You now successfully destructure and recompose your JSON data, using an if-case statement and refutable patterns. But if-case is only one of the enhancements to control flow structures that come with patterns. Now, you apply your knowledge of refutable patterns to switch statements.

### Control what's rendered using patterns with switch statements

* In `main.dart`, create a new widget, `BlockWidget`, that determines the styling of each block based on its `type` field.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_09/lib/main.dart)

```
class BlockWidget extends StatelessWidget {
  final Block block;

  const BlockWidget({
    required this.block,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle;
    switch (block.type) {
      case 'h1':
        textStyle = Theme.of(context).textTheme.displayMedium;
      case 'p' || 'checkbox':
        textStyle = Theme.of(context).textTheme.bodyMedium;
      case _:
        textStyle = Theme.of(context).textTheme.bodySmall;
    }

    return Container(
      margin: const EdgeInsets.all(8),
      child: Text(
        block.text,
        style: textStyle,
      ),
    );
  }
}
```

The switch statement in the `build` method switches on the `type` field of the `block` object.  

1. The first case statement uses a *constant string pattern*. The pattern matches if `block.type` is equal to the constant value `h1`. 
2. The second case statement uses a *logical-or pattern* with two constant string patterns as its subpatterns. The pattern matches if `block.type` matches either of the subpatterns `p` or `checkbox`. 

> aside positive
> 
> **Did you know?** *logical-and patterns* (`&&`) can also be used.

3. The final case is a *wildcard pattern*, `_`. Wildcards in switch cases match everything else. They behave the same as `default` clauses, which are still allowed in switch statements (they're just a little more verbose).

Wildcard patterns can be used wherever a pattern is allowed—for example, in a variable declaration pattern:
  `var (title, _) = document.metadata;`


In this context, the wildcard doesn't bind any variable. It discards the second field.

> aside positive
> 
> **Note:** Switch statements no longer require `break` as of Dart 3. Non-empty cases jump to the end of the statement when they reach the end of their body.

In the next section, you learn about more switch features after displaying the `Block` objects.

### Display the document content

Create a local variable that contains the list of `Block` objects by calling `getBlocks()` in the `DocumentScreen` widget's `build` method.

1. Replace the existing `build` method in `DocumentationScreen` with this version:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_09/lib/main.dart)

```
class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;
    final blocks = document.getBlocks();                           // Add this line

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Text('Last modified: $modified'),                        // Modify from here
          Expanded(
            child: ListView.builder(
              itemCount: blocks.length,
              itemBuilder: (context, index) {
                return BlockWidget(block: blocks[index]);
              },
            ),
          ),                                                       // to here.
        ],
      ),
    );
  }
}
```

The line `BlockWidget(block: blocks[index])` constructs a `BlockWidget` widget for each item in the list of blocks returned from the `getBlocks()` method.

2. Run the application, and then you should see the blocks appearing on screen:

<img src="img/7fef30608501d90a.png" alt="Screenshot of the app displaying content from the &#39;blocks&#39; section of the JSON data."  width="624.00" />


## Use switch expressions
Duration: 04:00


Patterns add a lot of capabilities to `switch` and `case`. To make them usable in more places, Dart has *switch expressions*. A series of cases can provide a value directly to a variable assignment or return statement.

### Convert the switch statement into a switch expression

The Dart analyzer provides *assists* to help you make changes to your code. 

1. Move your cursor to the switch statement from the previous section.
2. Click on the lightbulb in order to view the available assists.
3. Select the **Convert to switch expression** assist.

<img src="img/bead32265ef4221b.png" alt="A screenshot of the &#39;convert to switch expression&#39; assist available in VS Code."  width="624.00" />

The new version of this code looks like this:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_10/lib/main.dart)

```
class BlockWidget extends StatelessWidget {
  final Block block;

  const BlockWidget({
    required this.block,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle;                                          // Modify from here
    textStyle = switch (block.type) {
      'h1' => Theme.of(context).textTheme.displayMedium,
      'p' || 'checkbox' => Theme.of(context).textTheme.bodyMedium,
      _ => Theme.of(context).textTheme.bodySmall
    };                                                             // to here.

    return Container(
      margin: const EdgeInsets.all(8),
      child: Text(
        block.text,
        style: textStyle,
      ),
    );
  }
}
```

A switch expression looks similar to a switch statement, but it eliminates the `case` keyword and uses `=&gt;` to separate the pattern from the case body. Unlike switch statements, switch expressions return a value and can be used anywhere an expression can be used.


## Use object patterns
Duration: 04:00


Dart is an object-oriented language, so patterns apply to all objects. In this step, you switch on an *object pattern* and destructure object properties to enhance the date rendering logic of your UI.

> aside positive
> 
> **Note:** There's no migration necessary to support patterns; you can immediately start using pattern matching on your existing Dart classes.

### **Extract properties from object patterns**

In this section, you improve how the last modified date is displayed using patterns.

* Add the `formatDate` method to `main.dart`:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_11_a/lib/main.dart)

```
String formatDate(DateTime dateTime) {
  final today = DateTime.now();
  final difference = dateTime.difference(today);

  return switch (difference) {
    Duration(inDays: 0) => 'today',
    Duration(inDays: 1) => 'tomorrow',
    Duration(inDays: -1) => 'yesterday',
    Duration(inDays: final days, isNegative: true) => '${days.abs()} days ago',
    Duration(inDays: final days) => '$days days from now',
  };
}
```

This method returns a switch expression that switches on the value `difference`, a   [`Duration`](https://api.dart.dev/stable/dart-core/Duration-class.html) object. It represents the span of time between `today` and the `modified` value from the JSON data.

Each case of the switch expression is using an object pattern that matches by calling getters on the object's properties `inDays` and `isNegative`. The syntax looks like it might be constructing a Duration object, but it's actually accessing fields on the `difference` object.

The first three cases use constant subpatterns `0`, `1`, and `-1` to match the object property `inDays` and return the corresponding string.

The last two cases handle durations beyond today, yesterday, and tomorrow:

* If the `isNegative` property matches the *boolean constant pattern* `true`, meaning the modification date was in the past, it displays *days ago*.
* If that case doesn't catch the difference, then duration must be a positive number of days (no need to explicitly verify with `isNegative: false`), so the modification date is in the future and displays *days from now*.

### Add formatting logic for weeks

* Add two new cases to your formatting function in order to identify durations longer than 7 days so that the UI can display them as *weeks*:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_11_b/lib/main.dart)

```
String formatDate(DateTime dateTime) {
  final today = DateTime.now();
  final difference = dateTime.difference(today);

  return switch (difference) {
    Duration(inDays: 0) => 'today',
    Duration(inDays: 1) => 'tomorrow',
    Duration(inDays: -1) => 'yesterday',
    Duration(inDays: final days) when days > 7 => '${days ~/ 7} weeks from now', // Add from here
    Duration(inDays: final days) when days < -7 =>
      '${days.abs() ~/ 7} weeks ago',                                            // to here.
    Duration(inDays: final days, isNegative: true) => '${days.abs()} days ago',
    Duration(inDays: final days) => '$days days from now',
  };
}
```

This code introduces *guard clauses*:

* A guard clause uses the `when` keyword after a case pattern.
* They can be used in if-cases, switch statements, and switch expressions.
* They only add a condition to a pattern *after it's matched*.
* If the guard clause evaluates to false, the entire pattern is *refuted*, and execution proceeds to the next case.

### **Add the newly formatted date to the UI**

1. Finally, update the `build` method in `DocumentScreen` to use the `formatDate` function:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_11_b/lib/main.dart)

```
class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;
    final formattedModifiedDate = formatDate(modified);            // Add this line
    final blocks = document.getBlocks();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Text('Last modified: $formattedModifiedDate'),           // Modify this line
          Expanded(
            child: ListView.builder(
              itemCount: blocks.length,
              itemBuilder: (context, index) {
                return BlockWidget(block: blocks[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

2. Hot reload to see the changes in your app:

<img src="img/22f5ef6da213c245.png" alt="A screenshot of the app that displays a string &#39;Last modified: 2 weeks ago&#39; using the formatDate() function."  width="624.00" />


## Seal a class for exhaustive switching
Duration: 04:00


Notice that you didn't use a wildcard or default case at the end of the last switch. Though it's good practice to always include a case for values that might fall through, it's ok in a simple example like this since you know the cases you defined account for *all of the possible values* `inDays` could potentially take.

When every case in a switch is handled, it's called an *exhaustive switch*. For example, switching on a `bool` type is exhaustive when it has cases for `true` and `false`. Switching on an `enum` type is exhaustive when there are cases for each of the enum's values, too, because enums represent a *fixed number* of *constant values*. 

Dart 3 extended *exhaustiveness checking* to objects and class hierarchies with the new class modifier `sealed`. Refactor your `Block` class as a sealed superclass. 

### Create the subclasses

* In `data.dart`, create three new classes—`HeaderBlock`, `ParagraphBlock`, and `CheckboxBlock`—that extend `Block`:

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_12/lib/data.dart)

```
class HeaderBlock extends Block {
  final String text;
  HeaderBlock(this.text);
}

class ParagraphBlock extends Block {
  final String text;
  ParagraphBlock(this.text);
}

class CheckboxBlock extends Block {
  final String text;
  final bool isChecked;
  CheckboxBlock(this.text, this.isChecked);
}
```

Each of these classes corresponds to the different `type` values from the original JSON: `'h1'`, `'p'`, and `'checkbox'`. 

### **Seal the superclass**

* Mark the `Block` class as `sealed`. Then, refactor the if-case as a switch expression that returns the subclass corresponding to the `type` specified in the JSON:

####  [lib/data.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_12/lib/data.dart)

```
sealed class Block {
  Block();

  factory Block.fromJson(Map<String, Object?> json) {
    return switch (json) {
      {'type': 'h1', 'text': String text} => HeaderBlock(text),
      {'type': 'p', 'text': String text} => ParagraphBlock(text),
      {'type': 'checkbox', 'text': String text, 'checked': bool checked} =>
        CheckboxBlock(text, checked),
      _ => throw const FormatException('Unexpected JSON format'),
    };
  }
}
```

The `sealed` keyword is a *class modifier* that means you can *only extend or implement this class in the same library*. Since the analyzer knows the subtypes of this class, it reports an error if a switch fails to cover one of them and isn't exhaustive. 

### Use a switch expression in order to display widgets

1. Update the BlockWidget class in `main.dart` with a switch expression that uses object patterns for each case:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/main/dart-patterns-and-records/step_12/lib/data.dart)

```
class BlockWidget extends StatelessWidget {
  final Block block;

  const BlockWidget({
    required this.block,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: switch (block) {
        HeaderBlock(:final text) => Text(
            text,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ParagraphBlock(:final text) => Text(text),
        CheckboxBlock(:final text, :final isChecked) => Row(
            children: [
              Checkbox(value: isChecked, onChanged: (_) {}),
              Text(text),
            ],
          ),
      },
    );
  }
}
```

In your first version of `BlockWidget`, you switched on a field of a `Block` object in order to return a `TextStyle`. Now, you switch an instance of the `Block` object itself and match against *object patterns* that represent its subclasses, extracting the object's properties in the process.

The Dart analyzer can check that each subclass is handled in the switch expression because you made `Block` a sealed class.

> aside negative
> 
> **Try it out:** Try removing one of the subclass cases from the switch expression and see the error kick in:
> 
> <img src="img/ef812cdb458488f8.png" alt="A screenshot of a warning in VS Code that warns that not all cases are exhaustively checked."  width="610.00" />

Also note that using a switch expression here lets you pass the result directly to the `child` element, as opposed to the separate return statement needed before.

2. Hot reload to see the checkbox JSON data rendered for the first time:

<img src="img/adbbe512cf84448c.png" alt="A screenshot of the app that displays the checkbox &#39;Learn Dart 3&#39;"  width="624.00" />

> aside positive
> 
> **Try it out:** Try changing the value of the `checked` key in the `Document` class, where you defined `documentJson` to `true` instead of `false`. Hot reload again to see the UI update!
> 
> <img src="img/3c27197277c008c2.png" alt="A screenshot of the app that contains a checkbox &#39;Learn Dart 3&#39; that is now checked."  width="610.00" />


## Congratulations



You successfully experimented with patterns, records, enhanced switch and case, and sealed classes. You covered a lot of information—but only barely scratched the surface of these features. For more information on patterns, see the  [feature specification](https://github.com/dart-lang/language/blob/master/accepted/future-releases/0546-patterns/feature-specification.md). 

The different pattern types, different contexts in which they can appear, and the potential nesting of subpatterns make the possibilities in behavior seemingly *endless*. But they're easy to see. 

You can imagine all kinds of ways to display content in Flutter using patterns. Using patterns,  you can safely extract data in order to build your UI in a few lines of code. 

### **What's next?**

* Check out the documentation on patterns, records, enhanced switch and cases, and class modifiers in the  [Language section](https://dart.dev/language) of the Dart documentation.

### **Reference docs**

See the full sample code, step by step, in the  [`flutter/codelabs` repository](https://github.com/flutter/codelabs/tree/main/dart-patterns-and-records).

For in-depth specifications for each new feature, check out the original design docs:

*  [Patterns](https://github.com/dart-lang/language/blob/master/accepted/future-releases/0546-patterns/feature-specification.md)
*  [Records](https://github.com/dart-lang/language/blob/master/accepted/future-releases/records/records-feature-specification.md)
*  [Exhaustiveness checking](https://github.com/dart-lang/language/blob/master/accepted/future-releases/0546-patterns/exhaustiveness.md)
*  [Sealed classes](https://github.com/dart-lang/language/blob/master/accepted/future-releases/sealed-types/feature-specification.md)


