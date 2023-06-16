---
id: codelabs/web-url-launcher
summary: In this codelab,  you'll start with a mostly completed (but simple) web app. You'll finish the app, and then practice debugging the app. Finally,  you'll add a URL plugin that enables you to open a new tab (on the web), launch a second copy of the app, and navigate to a hosted privacy page.
status: [published]
authors: Shams Zakhour, code author: John Ryan
categories: flutter
tags: kiosk,none,web
feedback_link: https://github.com/flutter/website/issues
source: 1Y099kkeEUvi3FRbE6a0pjZkkBzMHmraX3Q33zCC5uJM
duration: 46

---

# Using a plugin with a Flutter web app

[Codelab Feedback](https://github.com/flutter/website/issues)


## Introduction
Duration: 01:00


Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. In this codelab, you'll finish an app that reports the number of stars on a GitHub repository. You'll use Dart DevTools to do some simple debugging. You'll learn how to host your app on Firebase. Finally, you'll use a Flutter plugin to launch the app and open the hosted privacy policy.

#### **What you'll learn**

* How to use a Flutter plugin in a web app
* The difference between a package and a plugin
* How to debug a web app using Dart DevTools
* How to host an app on Firebase

**Prerequisites**: This codelab assumes that you have some basic Flutter knowledge. If you are new to Flutter, you might want to first start with  [Write your first Flutter app on the web](https://flutter.dev/docs/get-started/codelab-web).

<form>
<name>What would you like to learn from this codelab?</name>
<input value="I&#39;m new to the topic, and I want a good overview.">
<input value="I know something about this topic, but I want a refresher.">
<input value="I&#39;m looking for example code to use in my project.">
<input value="I&#39;m looking for an explanation of something specific.">
</form>


## What is a Flutter plugin?



A *plugin* (also called a *plugin package*) is a specialized Dart package that contains an API written in Dart code combined with one or more platform-specific implementations. Plugin packages can be written for Android (using Kotlin or Java), iOS (using Swift or Objective-C),  [web](https://flutter.dev/web) (using Dart),  [macOS](https://flutter.dev/desktop) (using Dart), or any combination thereof. (In fact, Flutter supports  [federated plugins](https://flutter.dev/docs/development/packages-and-plugins/developing-packages#federated-plugins), which allow support for different platforms to be split across packages.) 

A package is a Dart library that you can use to extend or simplify your app's functionality. As previously mentioned, a plugin is a *type* of a package. For more information about packages and plugins, see  [Flutter Plugin or Dart Package?](https://medium.com/@mehmetf_71205/flutter-plugin-or-dart-library-246c68df15f)


## Set up your Flutter environment
Duration: 05:00


You need three pieces of software to complete this lab: the  [Flutter SDK](https://flutter.dev/get-started/install/),  [an editor](https://flutter.dev/get-started/editor/), and the  [Chrome browser](https://www.google.com/chrome/?brand=CHBD&gclid=CjwKCAiA1rPyBRAREiwA1UIy8M3xWhQtZTM_Yi1fUrkuDaj51QPTdhgAhPJyY2qyDoVxtW2Qca6xIxoCdgAQAvD_BwE&gclsrc=aw.ds). You can use your preferred editor, such as Android Studio or IntelliJ with the Flutter and Dart plugins installed, or Visual Studio Code with the  [Dart Code and Flutter extensions](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code). You will debug your code using Dart DevTools on Chrome.

> aside positive
> 
> **Note**: The code for this codelab uses a plugin, so you can't use DartPad.


## Create the starter app
Duration: 05:00


For this codelab, we provide much of the starting code so that you can quickly get to the interesting bits.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />Create a simple, templated Flutter app. 

Create a Flutter project called **`star_counter`** as follows.

```console
$ flutter create star_counter
$ cd star_counter
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Update project dependencies.
Remove the `cupertino_icons` dependency, as this project isn't targeting iOS.

```console
$ flutter pub remove cupertino_icons
Resolving dependencies...
  async 2.8.1 (2.8.2 available)
  characters 1.1.0 (1.2.0 available)
  matcher 0.12.10 (0.12.11 available)
  test_api 0.4.2 (0.4.5 available)
  vector_math 2.1.0 (2.1.1 available)
These packages are no longer being depended on:
- cupertino_icons 1.0.3
Changed 1 dependency!
```

Add the `flutter_markdown` dependency.

```console
$ flutter pub add flutter_markdown
Resolving dependencies...
+ args 2.3.0
  async 2.8.1 (2.8.2 available)
  characters 1.1.0 (1.2.0 available)
+ flutter_markdown 0.6.6
+ markdown 4.0.0
  matcher 0.12.10 (0.12.11 available)
  test_api 0.4.2 (0.4.5 available)
  vector_math 2.1.0 (2.1.1 available)
Changed 3 dependencies!
```

Add the `github` dependency.

```console
$ flutter pub add github
Resolving dependencies...
  async 2.8.1 (2.8.2 available)
  characters 1.1.0 (1.2.0 available)
+ github 8.1.3
+ http 0.13.4
+ http_parser 4.0.0
+ json_annotation 4.1.0
  matcher 0.12.10 (0.12.11 available)
  test_api 0.4.2 (0.4.5 available)
  vector_math 2.1.0 (2.1.1 available)
Changed 4 dependencies!
```

Finally, add the `intl` dependency.

```console
$ flutter pub add intl
Resolving dependencies...
  async 2.8.1 (2.8.2 available)
  characters 1.1.0 (1.2.0 available)
+ intl 0.17.0
  matcher 0.12.10 (0.12.11 available)
  test_api 0.4.2 (0.4.5 available)
  vector_math 2.1.0 (2.1.1 available)
Changed 1 dependency!
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Remove mobile and desktop runners.

This project is designed to work with Flutter for the web. Removing the mobile and desktop runners will eliminate the need to select which platform to run this project on

```console
$ rm -r android ios linux macos windows
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Replace the contents of `lib/main.dart`.
Delete all of the code from `lib/main.dart`, which creates a Material-themed, count-the-number-of-button-presses app. Add the following code, which sets up a not-yet-complete, count-the-number-of-stars-on-a-GitHub-repo app:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_04/lib/main.dart)

```
import 'package:flutter/material.dart';

void main() {
  runApp(const StarCounterApp());
}

class StarCounterApp extends StatelessWidget {
  const StarCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _repositoryName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'GitHub Star Counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Enter a GitHub repository',
                      hintText: 'flutter/flutter',
                    ),
                    onSubmitted: (text) {
                      setState(() {
                        _repositoryName = text;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text(
                      _repositoryName,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Run the app.
Run the app on Chrome. If you're using an IDE, then first select **Chrome** from the device pulldown. If you're using the command line, then from the top of the package, run `flutter run`. 

Chrome launches, and you should see something like the following:

<img src="img/dd5725fd61a390a.png" alt="dd5725fd61a390a.png"  width="624.00" />

Enter some text into the text field followed by pressing Return. The text you typed is displayed at the bottom of the window.


## Add the GitHub star counter
Duration: 03:00


Next, instead of displaying the text that was entered in the form, " [`google/flutter.widgets`](https://github.com/google/flutter.widgets)", you modify the app to show the number of stars for that repo. 

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Create a new file in `lib` called `star_counter.dart`:

####  [lib/star_counter.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_05/lib/star_counter.dart)

```
import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:intl/intl.dart' as intl;

class GitHubStarCounter extends StatefulWidget {
  /// The full repository name, e.g. torvalds/linux
  final String repositoryName;

  const GitHubStarCounter({
    required this.repositoryName,
    super.key,
  });

  @override
  State<GitHubStarCounter> createState() => _GitHubStarCounterState();
}

class _GitHubStarCounterState extends State<GitHubStarCounter> {
  // The GitHub API client
  late GitHub github;

  // The repository information
  Repository? repository;

  // A human-readable error when the repository isn't found.
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    github = GitHub();

    fetchRepository();
  }

  @override
  void didUpdateWidget(GitHubStarCounter oldWidget) {
    super.didUpdateWidget(oldWidget);

    // When this widget's [repositoryName] changes,
    // load the Repository information.
    if (widget.repositoryName == oldWidget.repositoryName) {
      return;
    }

    fetchRepository();
  }

  Future<void> fetchRepository() async {
    setState(() {
      repository = null;
      errorMessage = null;
    });

    if (widget.repositoryName.isNotEmpty) {
      var repo = await github.repositories
          .getRepository(RepositorySlug.full(widget.repositoryName));
      setState(() {
        repository = repo;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textStyle = textTheme.headline4?.apply(color: Colors.green);
    final errorStyle = textTheme.bodyText1?.apply(color: Colors.red);
    final numberFormat = intl.NumberFormat.decimalPattern();

    if (errorMessage != null) {
      return Text(errorMessage!, style: errorStyle);
    }

    if (widget.repositoryName.isNotEmpty && repository == null) {
      return const Text('loading...');
    }

    if (repository == null) {
      // If no repository is entered, return an empty widget.
      return const SizedBox();
    }

    return Text(
      numberFormat.format(repository!.stargazersCount),
      style: textStyle,
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* The star counter uses the  [github](https://pub.dev/packages/github) Dart package to query GitHub for the number of stars a repo earned.
* You can find packages and plugins on  [pub.dev](https://pub.dev). 
* You can also browse and search packages for a particular platform. If you select **FLUTTER** from the  [landing page](https://pub.dev/), then on the next page, select **WEB**. This brings up all of the [ packages that run on the web](https://pub.dev/flutter/packages?platform=web). Either browse through the pages of packages, or use the search bar to narrow your results.
* The Flutter community contributes packages and plugins to  [pub.dev](https://pub.dev/). If you look at the page for the  [github](https://pub.dev/packages/github) package, you'll see that it works for pretty much *any* Dart or Flutter app, including **WEB**.
* You might pay particular attention to packages that are marked as  [Flutter Favorites](https://pub.dev/flutter/favorites). The  [Flutter Favorites program](https://flutter.dev/docs/development/packages-and-plugins/favorites#flutter-favorites) identifies packages that meet specific criteria, such as feature completeness and good runtime behavior.
* Later, you add a plugin from  [pub.dev](https://pub.dev) to this example.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Add the following `import` to `main.dart`:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_05/lib/main.dart)

```
import 'star_counter.dart';
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Use the new `GitHubStarCounter` widget.

In `main.dart`, replace the `Text` widget (lines 61-63) with the 3 new lines that define the `GitHubStarCounterWidget`:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_05/lib/main.dart#L60)

```
Padding(
  padding: const EdgeInsets.only(top: 32.0),
  child: GitHubStarCounter(              // New
    repositoryName: _repositoryName,     // New
  ),                                     // New
),
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Run the app.

Hot restart the app by clicking the **Run** button again in the IDE (without first stopping the app), clicking the hot restart button  <img src="img/3532d60f65dd9d70.png" alt="3532d60f65dd9d70.png"  width="20.00" /> in the IDE  , or by typing `r` in the console. This updates the app without refreshing the browser. 

> aside positive
> 
> **Note**: Hot reload doesn't yet work on the web. When running a web app from the command line, `r` performs a hot restart. For more information, see  [Hot reload](https://flutter.dev/docs/development/tools/hot-reload) on flutter.dev.

The window looks the same as before. Enter an existing repo, such as the one suggested: `flutter/flutter`. The number of stars is reported below the text field, for example:

<img src="img/ce1d3e1e3c04c7ea.png" alt="ce1d3e1e3c04c7ea.png"  width="624.00" />


## Debugging
Duration: 10:00


Are you ready for a debugging exercise? In the running app, enter a non-existent repo, such as `foo/bar`. The widget is stuck saying "**Loading...**". You fix that now.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Launch Dart DevTools.

You may be familiar with Chrome DevTools, but to debug a Flutter app, you'll want to use Dart DevTools. Dart DevTools was designed to debug and profile Dart and Flutter apps. There are a number of ways to launch Dart DevTools, depending on your workflow. The following pages have instructions about how to install and launch DevTools:

*  [Launch DevTools from Android Studio or IntelliJ](https://flutter.dev/docs/development/tools/devtools/android-studio).
*  [Launch DevTools from VS Code](https://flutter.dev/docs/development/tools/devtools/vscode).
*  [Launch DevTools from the command line](https://flutter.dev/docs/development/tools/devtools/cli).

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Bring up the debugger.

The initial browser page you see when Dart DevTools launches can be different, depending on how it was launched. Click the **Debugger** tab  <img src="img/b1dd0bed4dfebc0c.png" alt="b1dd0bed4dfebc0c.png"  width="21.00" />, to bring up the debugger.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Bring up the `star_counter.dart` source code.

In the **Libraries** text field, in the lower left, enter `star_counter`" Double-click the **package:star_counter/star_counter.dart** entry from the results list, to open it in the File view.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Set a breakpoint.

Find the following line in the source:  `var repo = await github.repositories`. It should be on line 52. Click to the left of the line number, and a circle appears, indicating that you set a breakpoint. The breakpoint also appears in the **Breakpoints** list on the left. On the upper right, select the **Break on exceptions** checkbox. The UI should look like the following:

<img src="img/751e412e533010fa.png" alt="751e412e533010fa.png"  width="624.00" />

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Run the app.

Enter a non-existent repository and press Return. In the error pane, below the code pane, you'll see that the `github` package threw a "repository not found" exception:

```
Error: GitHub Error: Repository Not Found: /
    at Object.throw_ [as throw] (http://localhost:52956/dart_sdk.js:4463:11)
    at http://localhost:52956/packages/github/src/common/xplat_common.dart.lib.js:1351:25
    at github.GitHub.new.request (http://localhost:52956/packages/github/src/common/xplat_common.dart.lib.js:10679:13)
    at request.next (<anonymous>)
    at http://localhost:52956/dart_sdk.js:37175:33
    at _RootZone.runUnary (http://localhost:52956/dart_sdk.js:37029:58)
    at _FutureListener.thenAwait.handleValue (http://localhost:52956/dart_sdk.js:32116:29)
    at handleValueCallback (http://localhost:52956/dart_sdk.js:32663:49)
    at Function._propagateToListeners (http://localhost:52956/dart_sdk.js:32701:17)
    at _Future.new.[_completeWithValue] (http://localhost:52956/dart_sdk.js:32544:23)
    at async._AsyncCallbackEntry.new.callback (http://localhost:52956/dart_sdk.js:32566:35)
    at Object._microtaskLoop (http://localhost:52956/dart_sdk.js:37290:13)
    at _startMicrotaskLoop (http://localhost:52956/dart_sdk.js:37296:13)
    at http://localhost:52956/dart_sdk.js:32918:9
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Catch the error.

In `star_counter.dart`, find the following code (lines 55-61):

```
if (widget.repositoryName.isNotEmpty) {
  var repo = await github.repositories
      .getRepository(RepositorySlug.full(widget.repositoryName));
  setState(() {
    repository = repo;
  });
}
```

Replace that code with code that uses a `try-catch` block, to behave more gracefully by catching the error and printing a message:

####  [lib/star_counter.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_06/lib/star_counter.dart#L52)

```
if (widget.repositoryName.isNotEmpty) {
  try {
    var repo = await github.repositories
        .getRepository(RepositorySlug.full(widget.repositoryName));
    setState(() {
      repository = repo;
    });
  } on RepositoryNotFound {
    setState(() {
      repository = null;
      errorMessage = '${widget.repositoryName} not found.';
    });
  }
}
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Hot restart the app.

In DevTools, the source code is updated to reflect the changes. Once again, enter a non-existent repo. You should see the following:

<img src="img/3ea8c1f03553b6e3.png" alt="3ea8c1f03553b6e3.png"  width="624.00" />


## Add a privacy policy
Duration: 10:00


In this step you'll add a privacy policy page to your app. At first, you will embed the privacy policy text in your Dart code.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Add a `lib/privacy_policy.dart` file.
In the `lib` directory, add a `privacy_policy.dart` file to your project:

####  [lib/privacy_policy.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_07/lib/privacy_policy.dart)

```
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Markdown(
      data: _privacyPolicyText,
    );
  }
}

// The source for this privacy policy was generated by
// https://app-privacy-policy-generator.firebaseapp.com/
var _privacyPolicyText = '''
## Privacy Policy

Flutter Example Company built the Star Counter app as an Open Source app. This SERVICE is provided by Flutter Example Company at no cost and is intended for use as is.

This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.

If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.

The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Star Counter unless otherwise defined in this Privacy Policy.
''';
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Add the following `import` to `main.dart`:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_07/lib/main.dart)

```
import 'privacy_policy.dart';
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Add a new route (page) for the privacy policy.

After line 19, add the route for the privacy policy page:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_07/lib/main.dart#L16)

```
routes: {
  '/': (context) => HomePage(),
  '/privacypolicy': (context) => const PrivacyPolicy(),  // NEW
},
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Add a button to display the privacy policy.

In the `_HomePageState`'s `build()` method, add a `TextButton` to the bottom of the `Column`, after line 69:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_07/lib/main.dart#L66)

```
TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.blue),
    overlayColor: MaterialStateProperty.all(Colors.transparent),
  ),
  onPressed: () => Navigator.of(context).pushNamed('/privacypolicy'),
  child: const Text('Privacy Policy'),
),
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Run the app.

Hot restart the app. It now has a **Privacy Policy** link at the bottom of the screen:

<img src="img/d6b791dbfc784d1f.png" alt="d6b791dbfc784d1f.png"  width="624.00" />

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Click the **Privacy Policy** button.

Note that the privacy policy displays, and the URL changes to `/privacypolicy`.

<img src="img/8ac97b6f790dc15d.png" alt="8ac97b6f790dc15d.png"  width="624.00" />

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Go back.

Use the browser's **Back** button to return to the first page. You get this behavior for free.

> aside positive
> 
> **Tip**: Because Flutter has only one `Navigator` object, you don't have to write any code to make the browser's **Back** button work. The `Navigator` manages Flutter's *routes* (sometimes referred to as screens or pages) inside a stack. Flutter's navigation is integrated into the browser's navigation, and the **Back** button just works.


## Host with Firebase
Duration: 05:00


The advantage of a hosted page is that you can change that page, without releasing a new version of your app. 

From the command line, at the root of the project, use the following instructions:

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.50" /> [Install the Firebase CLI](https://firebase.google.com/docs/cli#install_the_firebase_cli).

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> [Log in to Firebase to authenticate](https://firebase.google.com/docs/cli#sign-in-test-cli) using `firebase login`.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> [Initialize a Firebase project](https://firebase.google.com/docs/cli#initialize_a_firebase_project) using `firebase init.`

Use the following values:

* Which Firebase features? **Hosting**
* Project setup: **Create a new project**
* What project name? **[yourname]-my-flutter-app** (must be unique)
* What to call your project? Press Return to accept the default (which is the same as the name used in the previous question).
* What public directory? **build/web** (This is important.)
* Configure as a single page app? **Yes**
* Set up automatic builds and deploys with GitHub? **No**

At the command line, you'll see something like the following after you finish running `firebase init`:

<img src="img/187f4c6bcb6251e5.png" alt="187f4c6bcb6251e5.png"  width="624.00" />

At the completion of the `init` command, the following files are added to your project:

* `firebase.json`, the configuration file
* `.firebaserc`, containing your project data  

Make sure that the `public` field in your `firebase.json` specifies `build/web`, for example:

####  [firebase.json](https://github.com/flutter/codelabs/blob/master/star_counter/step_08/firebase.json)

```
{
  "hosting": {
    "public": "build/web",    # This is important!
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ]
  }
}
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Build a release version of your app.

Configure your IDE to build a release version of your app using one of the following approaches:

* In Android Studio or IntelliJ, specify `--release` in the **Additional arguments** field of the **Run** &gt; **Edit Configuration** dialog. Then, run your app.
* At the command line, run `flutter build web --release`. 

Confirm that this step worked by examining the `build/web` directory of your project. The directory should contain a number of files, including `index.html`.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Deploy your app.

At the command line, run `firebase deploy` from the top of the project to deploy the contents of the public `build/web` directory. This shows the URL where it's hosted, `https://`*`project-id&gt;`*`.web.app.`

In the browser, go to `https://&lt;`*`project-id`*`&gt;.web.app` or `https://&lt;`*`project-id`*`&gt;.web.app/#/privacypolicy` to see the running version of your privacy policy.


## Use an HTML file for the privacy policy



Next, instead of embedding the privacy policy in the Dart code, you'll host it as an HTML page using Firebase.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Delete `privacy_policy.dart.`

Remove the file from the `lib` directory of your project.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Update `main.dart.`

In `lib/main.dart`, remove the import statement `import privacy_policy.dart` and the `/privacypolicy` route from `StarCounterApp`.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Add `privacy_policy.html.`

Place this file in the `web` directory of your project.

####  [web/privacy_policy.html](https://github.com/flutter/codelabs/blob/master/star_counter/step_09/web/privacy_policy.html)

```
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>Privacy Policy</title>
</head>

<body>
<h2 id="privacy-policy">Privacy Policy</h2>
<p>Flutter Example Company built the Star Counter app as an Open Source app. This SERVICE is provided by Flutter Example Company at no cost and is intended for use as is.</p>
<p>This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.</p>
<p>If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>
<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Star Counter unless otherwise defined in this Privacy Policy.</p>
</body>
</html>
```


## Use the url_launcher package
Duration: 05:00


Next, you use the  [`url_launcher`](https://pub.dev/packages/url_launcher) plugin to open the privacy policy in a new tab.

Flutter web apps are  [Single Page Apps](https://en.wikipedia.org/wiki/Single-page_application) (SPAs). This is why using the standard routing mechanism in our web example opens the privacy policy in the same web page. The URL launcher plugin, on the other hand, opens a new tab in the browser, launches another copy of the app, and routes the app to the hosted page. 

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Add a dependency.

Add the  [`url_launcher`](https://pub.dev/packages/url_launcher) dependency:

```console
$ flutter pub add url_launcher
Resolving dependencies...
  async 2.8.1 (2.8.2 available)
  characters 1.1.0 (1.2.0 available)
+ flutter_web_plugins 0.0.0 from sdk flutter
+ js 0.6.3
  matcher 0.12.10 (0.12.11 available)
+ plugin_platform_interface 2.0.2
  test_api 0.4.2 (0.4.5 available)
+ url_launcher 6.0.12
+ url_launcher_linux 2.0.2
+ url_launcher_macos 2.0.2
+ url_launcher_platform_interface 2.0.4
+ url_launcher_web 2.0.4
+ url_launcher_windows 2.0.2
  vector_math 2.1.0 (2.1.1 available)
Changed 9 dependencies!
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Fetch the new dependency.

Stop the app, because adding a dependency requires a full restart of the app. Click the **Pub get** button in your IDE or, at the command line, run `flutter pub get` from the top of the project.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" />Add the following `import` to `main.dart`:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_10/lib/main.dart#L2)

```
import 'package:url_launcher/url_launcher.dart';
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.50" />Update the `TextButton`'s handler.

Also in `main.dart`, replace the code that is called when the user presses the **Privacy Policy** button. The original code (on line 75 and 76) uses Flutter's normal routing mechanism:

```
onPressed: () =>
    Navigator.of(context).pushNamed('/privacypolicy'),
```

The new code for `onPressed` calls the `url_launcher` package:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/star_counter/step_10/lib/main.dart#L71)

```
onPressed: () =>
    launchUrl(Uri.parse('/privacy_policy.html')),
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.50" />Run the app.

Click the **Privacy Policy** button to open the file in a new tab. The primary advantage of using the `url_launcher` package is that (after the privacy policy page is hosted), it works on web *and* mobile platforms. An additional benefit is that you can modify the hosted privacy policy page without recompiling your app.


## Clean up
Duration: 02:00


After your finish with your project, remember to clean up:

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.50" /> [Delete your firebase project](https://support.google.com/firebase/answer/9137886).


## Congratulations!



Congratulations, you successfully completed the GitHub Star Counter app! You also got a small taste of Dart DevTools, which you can use to debug and profile all Dart and Flutter apps, not just web apps.

### **What's next?**

* Try one of the other  [Flutter codelabs](https://flutter.dev/docs/codelabs).
* Learn more about the power of  [Dart Devtools](https://flutter.dev/docs/development/tools/devtools/overview).

Continue learning about Flutter:

*  [flutter.dev](https://flutter.dev): The documentation site for the Flutter project
* The  [Flutter Cookbook](https://flutter.dev/docs/cookbook)
* The  [Flutter API reference](https://api.flutter.dev/index.html) documentation
* Additional  [Flutter sample apps](https://flutter.github.io/samples/#), with source code


