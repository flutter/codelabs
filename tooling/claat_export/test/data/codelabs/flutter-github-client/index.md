---
id: codelabs/flutter-github-client
summary: In this codelab, you'll build a GitHub client in Flutter for desktop.
status: [published]
authors: Brett Morgan
categories: flutter
tags: kiosk,tag-flutter,web
feedback_link: https://github.com/flutter/flutter/issues
source: 1NJq1PfV9mB2avhoM2l12DSQ8p2x6s_epXcLwCcZwpcg
duration: 45

---

# Write a Flutter desktop application

[Codelab Feedback](https://github.com/flutter/flutter/issues)


## Introduction



Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. In this codelab, you'll build a Flutter desktop app that accesses GitHub APIs to retrieve your repositories, assigned issues, and pull requests. In accomplishing this task, you'll create and use plugins to interact with native APIs and desktop applications, and use code generation to build type safe client libraries for GitHub's APIs.

### What you'll learn

* How to create a Flutter desktop application
* How to authenticate using OAuth2 on desktop
* How to use the Dart GitHub package
* How to create a Flutter plugin to integrate with native APIs

What you'll build

In this codelab, you'll build a desktop application featuring a GitHub integration using the Flutter SDK. Your app will perform the following:

* Authenticate to GitHub 
* Retrieve data from GitHub
* Create a Flutter plugin for Windows, macOS, and/or Linux
* Develop a Flutter UI hot reloading into a native desktop application

Here is a screenshot of the desktop application that you will build, running on Windows.

<img src="img/7fb1b5dc1245b83e.png" alt="7fb1b5dc1245b83e.png"  width="624.00" />

This codelab focuses on adding OAuth2 and GitHub access capabilities to a Flutter desktop app. Non-relevant concepts and code blocks are glossed over, and are provided for you to simply copy and paste.

<form>
<name>What would you like to learn from this codelab?</name>
<input value="I&#39;m new to the topic, and I want a good overview.">
<input value="I know something about this topic, but I want a refresher.">
<input value="I&#39;m looking for example code to use in my project.">
<input value="I&#39;m looking for an explanation of something specific.">
</form>


## Set up your Flutter development environment
Duration: 10:00


You need three pieces of software to complete this lab—the  [Flutter SDK](https://docs.flutter.dev/get-started/install),  [an editor](https://docs.flutter.dev/get-started/editor), and the appropriate build chain for your desktop operating system.

You can run the codelab as a  [Windows](https://docs.flutter.dev/get-started/install/windows#windows-setup),  [Linux](https://docs.flutter.dev/get-started/install/linux#linux-setup), or  [macOS](https://docs.flutter.dev/get-started/install/macos#macos-setup) desktop application. For Flutter on desktop, must develop on the platform where you plan to deploy. So, if you want to develop a Windows desktop app, you must develop on Windows to access the appropriate build chain. The operating system-specific requirements that are covered in detail on  [docs.flutter.dev/desktop](https://docs.flutter.dev/desktop).


## Get started
Duration: 05:00


### Get started developing desktop applications with Flutter

To confirm that Flutter for desktop is enabled, run the following command.

```console
$ flutter devices
1 connected device:

Windows (desktop) • windows    • windows-x64    • Microsoft Windows [Version 10.0.19041.508]
macOS (desktop)   • macos      • darwin-x64     • macOS 11.2.3 20D91 darwin-x64
Linux (desktop)   • linux      • linux-x64      • Linux
```

If you do not see the appropriate desktop line shown in the preceding output, consider the following:

* Are you developing on the platform you are developing for? 
* Are you using Flutter 3? Prior to Flutter 3, you had to specifically enable desktop for macOS and Linux.

An easy way to get started writing Flutter for desktop apps is to use the Flutter command-line tool to create a Flutter project. 

```console
$ flutter create github_client --platforms=windows,macos,linux
Creating project github_client...
Resolving dependencies in github_client... (1.4s)
Got dependencies in github_client.
Wrote 60 files.

All done!
You can find general documentation for Flutter at: https://docs.flutter.dev/
Detailed API documentation is available at: https://api.flutter.dev/
If you prefer video documentation, consider: https://www.youtube.com/c/flutterdev

In order to run your application, type:

  $ cd github_client
  $ flutter run

Your application code is in github_client/lib/main.dart.
```

To make sure everything is working, run the boilerplate Flutter application as a desktop application as shown below. Alternatively, open this project in your IDE, and use its tooling to run the application. Thanks to the previous step, running as a desktop application should be the only available option.

```
$ flutter run
Launching lib\main.dart on Windows in debug mode...
Building Windows application...
Syncing files to device Windows...                                  56ms

Flutter run key commands.
r Hot reload. 🔥🔥🔥
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

💪 Running with sound null safety 💪

An Observatory debugger and profiler on Windows is available at: http://127.0.0.1:61920/OHTnly7_TMk=/
The Flutter DevTools debugger and profiler on Windows is available at: http://127.0.0.1:9101?uri=http://127.0.0.1:61920/OHTnly7_TMk=/
```

You should now see the following application window on your screen. Go ahead and click the floating action button to make sure that  the incrementer works as expected. You can also try hot reload by changing the theme color by or altering the behavior of the `_incrementCounter` method in `lib/main.dart`.

Here is the application running on Windows.

<img src="img/852bcba313986ca5.png" alt="852bcba313986ca5.png"  width="624.00" />

In the next section you'll authenticate on GitHub using OAuth2.


## Add authentication
Duration: 10:00


### Authenticate on desktop

If you use Flutter on Android, iOS, or the web, you have a  [plethora of options](https://pub.dev/packages?q=authentication) with regard to authentication packages. Developing for desktop, however, changes the equation. Currently, you must build authentication integration from scratch, but this will change as package authors implement Flutter for desktop support.

### Register a GitHub OAuth application

To build a desktop application that uses GitHub's APIs, first you need to authenticate. There are multiple options available, but the best user experience is to direct the user through GitHub's OAuth2 login flow in their browser. This enables handling of two-factor authentication and effortless integration of password managers.

To register an application for GitHub's OAuth2 flow, surf to  [github.com](https://github.com/) and follow the instructions in only the first step of GitHub's  [Building OAuth Apps](https://docs.github.com/en/developers/apps/building-oauth-apps). The following steps are important for when you have an application to launch, but not while doing a codelab. 

> aside negative
> 
> **Important:** Create a GitHub **OAuth app**, not a GitHub app.

In completing  [Creating an OAuth App](https://docs.github.com/en/developers/apps/creating-an-oauth-app), Step 8 asks you to provide the Authorization callback URL. For a desktop app, enter  [`http://localhost/`](http://localhost/) as the callback URL. GitHub's OAuth2 flow was  set up such that defining a localhost callback URL allows any port, enabling you to stand up a web server on an ephemeral local high port. This avoids asking the user to copy the OAuth code token into the application as part of the OAuth process..

Here's an example screenshot of how to fill in the form for creating a GitHub OAuth application:

<img src="img/1a92f3356e4852bd.png" alt="1a92f3356e4852bd.png"  width="496.83" />

After you register an OAuth app in the GitHub admin interface you will receive a *client ID* and a *client secret*. If you need these values at a later time, you can retrieve them from  [GitHub's developer settings](https://github.com/settings/developers). You need these credentials in your application in order to construct a valid OAuth2 authorization URL. You will use the  [`oauth2`](https://pub.dev/packages/oauth2) Dart package to handle the OAuth2 flow, and the  [`url_launcher`](https://pub.dev/packages/url_launcher) Flutter plugin to enable launching the user's web browser.

### Add oauth2 and url_launcher to pubspec.yaml 

You add package dependencies for your application by running `flutter pub add` as follows:

```console
$ flutter pub add http oauth2 url_launcher
Resolving dependencies... 
+ crypto 3.0.2
+ flutter_web_plugins 0.0.0 from sdk flutter
+ http 0.13.5
+ http_parser 4.0.2
  material_color_utilities 0.2.0 (0.3.0 available)
+ oauth2 2.0.1
+ plugin_platform_interface 2.1.4
  source_span 1.9.1 (1.10.0 available)
  test_api 0.5.1 (0.5.2 available)
+ typed_data 1.3.1
+ url_launcher 6.1.10
+ url_launcher_android 6.0.31
+ url_launcher_ios 6.1.4
+ url_launcher_linux 3.0.5
+ url_launcher_macos 3.0.5
+ url_launcher_platform_interface 2.1.2
+ url_launcher_web 2.0.16
+ url_launcher_windows 3.0.6
Changed 15 dependencies!
```

This command adds: 

* the  [`http`](https://pub.dev/packages/http) package for making HTTP calls in a cross platform consistent way,
* the  [`oauth2`](https://pub.dev/packages/oauth2) package for OAuth, and
* the  [`url_launcher`](https://pub.dev/packages/url_launcher) package.

> aside positive
> 
> **Tip:** Adding, or removing, package dependencies to an application requires a full restart of the application.

### Include client credentials

Add client credentials to a new file, `lib/github_oauth_credentials.dart`, as follows:

####  [lib/github_oauth_credentials.dart](https://github.com/flutter/codelabs/blob/master/github-client/step_04/lib/github_oauth_credentials.dart)

```
// TODO(CodelabUser): Create an OAuth App
const githubClientId = 'YOUR_GITHUB_CLIENT_ID_HERE';
const githubClientSecret = 'YOUR_GITHUB_CLIENT_SECRET_HERE';

// OAuth scopes for repository and user information
const githubScopes = ['repo', 'read:org'];
```

Copy and paste your client credentials from the previous step into this file.

### Build the desktop OAuth2 flow

Build a widget to contain the desktop OAuth2 flow. This is a reasonably complicated chunk of logic, because you must run up a temporary web server, redirect the user to an endpoint on GitHub in their web browser, wait for the user to complete the authorization flow in their browser, and handle a redirect call from GitHub that contains code (which then needs to be converted into an OAuth2 token with a separate call to GitHub's API servers). 

> aside positive
> 
> **Tip:** It's good practice to place implementation-specific code under the `lib/src` directory. The top-level `lib` directory is for the external interface of a package.

####  [lib/src/github_login.dart](https://github.com/flutter/codelabs/blob/master/github-client/step_04/lib/src/github_login.dart)

```
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:url_launcher/url_launcher.dart';

final _authorizationEndpoint =
    Uri.parse('https://github.com/login/oauth/authorize');
final _tokenEndpoint = Uri.parse('https://github.com/login/oauth/access_token');

class GithubLoginWidget extends StatefulWidget {
  const GithubLoginWidget({
    required this.builder,
    required this.githubClientId,
    required this.githubClientSecret,
    required this.githubScopes,
    super.key,
  });
  final AuthenticatedBuilder builder;
  final String githubClientId;
  final String githubClientSecret;
  final List<String> githubScopes;

  @override
  State<GithubLoginWidget> createState() => _GithubLoginState();
}

typedef AuthenticatedBuilder = Widget Function(
    BuildContext context, oauth2.Client client);

class _GithubLoginState extends State<GithubLoginWidget> {
  HttpServer? _redirectServer;
  oauth2.Client? _client;

  @override
  Widget build(BuildContext context) {
    final client = _client;
    if (client != null) {
      return widget.builder(context, client);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await _redirectServer?.close();
            // Bind to an ephemeral port on localhost
            _redirectServer = await HttpServer.bind('localhost', 0);
            var authenticatedHttpClient = await _getOAuth2Client(
                Uri.parse('http://localhost:${_redirectServer!.port}/auth'));
            setState(() {
              _client = authenticatedHttpClient;
            });
          },
          child: const Text('Login to Github'),
        ),
      ),
    );
  }

  Future<oauth2.Client> _getOAuth2Client(Uri redirectUrl) async {
    if (widget.githubClientId.isEmpty || widget.githubClientSecret.isEmpty) {
      throw const GithubLoginException(
          'githubClientId and githubClientSecret must be not empty. '
          'See `lib/github_oauth_credentials.dart` for more detail.');
    }
    var grant = oauth2.AuthorizationCodeGrant(
      widget.githubClientId,
      _authorizationEndpoint,
      _tokenEndpoint,
      secret: widget.githubClientSecret,
      httpClient: _JsonAcceptingHttpClient(),
    );
    var authorizationUrl =
        grant.getAuthorizationUrl(redirectUrl, scopes: widget.githubScopes);

    await _redirect(authorizationUrl);
    var responseQueryParameters = await _listen();
    var client =
        await grant.handleAuthorizationResponse(responseQueryParameters);
    return client;
  }

  Future<void> _redirect(Uri authorizationUrl) async {
    if (await canLaunchUrl(authorizationUrl)) {
      await launchUrl(authorizationUrl);
    } else {
      throw GithubLoginException('Could not launch $authorizationUrl');
    }
  }

  Future<Map<String, String>> _listen() async {
    var request = await _redirectServer!.first;
    var params = request.uri.queryParameters;
    request.response.statusCode = 200;
    request.response.headers.set('content-type', 'text/plain');
    request.response.writeln('Authenticated! You can close this tab.');
    await request.response.close();
    await _redirectServer!.close();
    _redirectServer = null;
    return params;
  }
}

class _JsonAcceptingHttpClient extends http.BaseClient {
  final _httpClient = http.Client();
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return _httpClient.send(request);
  }
}

class GithubLoginException implements Exception {
  const GithubLoginException(this.message);
  final String message;
  @override
  String toString() => message;
}
```

It's worth spending some time working through this code because it demonstrates some of the capabilities of using Flutter and Dart on the desktop. Yes, the code is complicated, but a lot of functionality is encapsulated in a relatively easy-to-use widget. 

This widget exposes a temporary web server and makes secure HTTP requests. On macOS, both of these capabilities need to be requested through entitlements files.

### Change client and server entitlements (macOS only)

Making web requests and running a web server as a macOS desktop app requires changes to the entitlements for the application. For more information, see  [Entitlements and the App Sandbox](https://flutter.dev/desktop#entitlements-and-the-app-sandbox).

####  [macos/Runner/DebugProfile.entitlements](https://github.com/flutter/codelabs/blob/master/github-client/step_04/macos/Runner/DebugProfile.entitlements)

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>com.apple.security.app-sandbox</key>
        <true/>
        <key>com.apple.security.cs.allow-jit</key>
        <true/>
        <key>com.apple.security.network.server</key>
        <true/>
        <!-- Add this entry -->
        <key>com.apple.security.network.client</key>
        <true/>
</dict>
</plist>
```

You also need to modify the Release entitlements for production builds.

####  [macos/Runner/Release.entitlements](https://github.com/flutter/codelabs/blob/master/github-client/step_04/macos/Runner/Release.entitlements)

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>com.apple.security.app-sandbox</key>
        <true/>
        <!-- Add the following two entries -->
        <key>com.apple.security.network.server</key>
        <true/>
        <key>com.apple.security.network.client</key>
        <true/>
</dict>
</plist>
```

### Put it all together

You've configured a new OAuth app, the project is configured with the required packages and plugins, you've authored a widget to encapsulate the OAuth authentication flow, and you've enabled the app to act as both a network client and server on macOS through entitlements. With all of these required building blocks in place, you can bring it all together in the `lib/main.dart` file.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/github-client/step_04/lib/main.dart)

```
import 'package:flutter/material.dart';
import 'github_oauth_credentials.dart';
import 'src/github_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GitHub Client'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      builder: (context, httpClient) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
            elevation: 2,
          ),
          body: const Center(
            child: Text(
              'You are logged in to GitHub!',
            ),
          ),
        );
      },
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes,
    );
  }
}
```

When you run this Flutter application, you are initially presented with a button to initiate the GitHub OAuth login flow. After clicking the button, complete the login flow in your web browser, to see that the app is now logged in.

| <img style="width: 298.00px" src="img/2af86d91349423f9.png"> | <img style="width: 298.00px" src="img/c32ae0a31dcdbde.png"> |
| --- | --- |

Now that you conquered OAuth authentication, you can get started using the GitHub package.


## Access GitHub
Duration: 05:00


### Connecting to GitHub

With the OAuth authentication flow, you have obtained the necessary token to access your data on GitHub. To facilitate this task, you are going to use the package  [`github`](https://pub.dev/packages/github), available on pub.dev.

### Add more dependencies

Run the following command:

```console
$ flutter pub add github
Resolving dependencies... 
+ github 9.12.0
+ json_annotation 4.8.0
  material_color_utilities 0.2.0 (0.3.0 available)
  source_span 1.9.1 (1.10.0 available)
  test_api 0.5.1 (0.5.2 available)
Changed 2 dependencies!
```

### Using the OAuth credentials with the GitHub package

The `GithubLoginWidget` you created in the previous step provides an `HttpClient` that can interact with the GitHub API. In this step you are going to use the credentials contained in the `HttpClient` to to access the GitHub API using the GitHub package as demonstrated below:

```
final accessToken = httpClient.credentials.accessToken;
final gitHub = GitHub(auth: Authentication.withToken(accessToken));
```

### Put it all together, again

It's time to integrate the GitHub client into your `lib/main.dart` file.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/github-client/step_05/lib/main.dart)

```
import 'package:flutter/material.dart';
import 'package:github/github.dart';                               // Add this import

import 'github_oauth_credentials.dart';
import 'src/github_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GitHub Client'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      builder: (context, httpClient) {
        return FutureBuilder<CurrentUser>(                         // Modify from here
          future: viewerDetail(httpClient.credentials.accessToken),
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                title: Text(title),
                elevation: 2,
              ),
              body: Center(
                child: Text(
                  snapshot.hasData
                      ? 'Hello ${snapshot.data!.login}!'
                      : 'Retrieving viewer login details...',
                ),
              ),
            );
          },                                                       // to here.
        );
      },
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes,
    );
  }
}

Future<CurrentUser> viewerDetail(String accessToken) async {       // Add from here
  final gitHub = GitHub(auth: Authentication.withToken(accessToken));
  return gitHub.users.getCurrentUser();
}                                                                  // to here.
```

After you run this Flutter application, a button that initiates the GitHub OAuth login flow is displayed. After you click the button, complete the login flow in your web browser. You are now logged in to the app.

| <img style="width: 298.00px" src="img/1fb601b00e598dd8.png"> | <img style="width: 298.00px" src="img/9f23ae9bac766cc6.png"> |
| --- | --- |

In the next step, you'll eliminate an annoyance in the current code base. You'll bring the application back to the foreground after authenticating the application in the web browser.


## Create a Flutter plugin for Windows, macOS and Linux
Duration: 05:00


### Tidy up annoyances

Currently, the code has an annoying aspect. After the authentication flow, when GitHub has authenticated your application, you are left staring at a web browser page. Ideally, you should automatically return to the application. Fixing this requires creating a Flutter plugin for your desktop platform(s). 

### Create a Flutter plugin for Windows, macOS and Linux

To have the application automatically bring itself to the front of the stack of application windows after the OAuth flow completes requires some native code. For macOS, the API you need is the `NSApplication`'s   [`activate(ignoringOtherApps:)`](https://developer.apple.com/documentation/appkit/nsapplication/1428468-activate) instance method, for Linux we will use  [`gtk_window_present`](https://developer.gnome.org/gtk3/stable/GtkWindow.html#gtk-window-present), and for Windows we resort to Stack Overflow. To be able to call these APIs, you need to create a Flutter plugin.

You can use `flutter` to create a new plugin project.

```console
$ cd .. # step outside of the github_client project
$ flutter create -t plugin --platforms=linux,macos,windows window_to_front
$ cd window_to_front
```

Delete the example code, as you won't be using it. For macOS and Linux:

```console
$ rm -r example
```

For Windows:

```console
PS C:\src\github_client> rmdir example
```

Confirm the generated pubspec.yaml looks like the following.

####  [../window_to_front/pubspec.yaml](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/pubspec.yaml)

```
name: window_to_front
description: A new Flutter plugin project.
version: 0.0.1
homepage:

environment:
  sdk: ">=2.17.5 <3.0.0"
  flutter: ">=2.5.0"

dependencies:
  flutter:
    sdk: flutter
  plugin_platform_interface: ^2.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0

flutter:
  plugin:
    platforms:
      linux:
        pluginClass: WindowToFrontPlugin
      macos:
        pluginClass: WindowToFrontPlugin
      windows:
        pluginClass: WindowToFrontPluginCApi
```

This plugin is configured for macOS, Linux and Windows. Now, you can add the Swift code that pops the Flutter application window forward. Edit `macos/Classes/WindowToFrontPlugin.swift`, as follows:

####  [../window_to_front/macos/Classes/WindowToFrontPlugin.swift](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/macos/Classes/WindowToFrontPlugin.swift)

```
import Cocoa
import FlutterMacOS

public class WindowToFrontPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "window_to_front", binaryMessenger: registrar.messenger)
    let instance = WindowToFrontPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    // Add from here
    case "activate":
      NSApplication.shared.activate(ignoringOtherApps: true)
      result(nil)
    // to here.
    // Delete the getPlatformVersion case,
    // as you won't be using it.
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
```

To do the same in the Linux plugin, replace the contents of `linux/window_to_front_plugin.cc` with the following:

####  [../window_to_front/linux/window_to_front_plugin.cc](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/linux/window_to_front_plugin.cc)

```
#include "include/window_to_front/window_to_front_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#define WINDOW_TO_FRONT_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), window_to_front_plugin_get_type(), \
                              WindowToFrontPlugin))

struct _WindowToFrontPlugin {
  GObject parent_instance;

  FlPluginRegistrar* registrar;
};

G_DEFINE_TYPE(WindowToFrontPlugin, window_to_front_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void window_to_front_plugin_handle_method_call(
    WindowToFrontPlugin* self,
    FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar* method = fl_method_call_get_name(method_call);

  if (strcmp(method, "activate") == 0) {
    FlView* view = fl_plugin_registrar_get_view(self->registrar);
    if (view != nullptr) {
      GtkWindow* window = GTK_WINDOW(gtk_widget_get_toplevel(GTK_WIDGET(view)));
      gtk_window_present(window);
    }
    
    response = FL_METHOD_RESPONSE(fl_method_success_response_new(nullptr));
  } else {
    response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
  }

  fl_method_call_respond(method_call, response, nullptr);
}

static void window_to_front_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(window_to_front_plugin_parent_class)->dispose(object);
}

static void window_to_front_plugin_class_init(WindowToFrontPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = window_to_front_plugin_dispose;
}

static void window_to_front_plugin_init(WindowToFrontPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  WindowToFrontPlugin* plugin = WINDOW_TO_FRONT_PLUGIN(user_data);
  window_to_front_plugin_handle_method_call(plugin, method_call);
}

void window_to_front_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  WindowToFrontPlugin* plugin = WINDOW_TO_FRONT_PLUGIN(
      g_object_new(window_to_front_plugin_get_type(), nullptr));

  plugin->registrar = FL_PLUGIN_REGISTRAR(g_object_ref(registrar));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "window_to_front",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}
```

To do the same in the Windows plugin, replace the contents of `windows\window_to_front_plugin.cc` with the following:

####  [..\window_to_front\windows\window_to_front_plugin.cpp](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/windows/window_to_front_plugin.cpp)

```
#include "window_to_front_plugin.h"

// This must be included before many other Windows headers.
#include <windows.h>

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

#include <memory>

namespace window_to_front {

// static
void WindowToFrontPlugin::RegisterWithRegistrar(
    flutter::PluginRegistrarWindows *registrar) {
  auto channel =
      std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          registrar->messenger(), "window_to_front",
          &flutter::StandardMethodCodec::GetInstance());

  auto plugin = std::make_unique<WindowToFrontPlugin>(registrar);

  channel->SetMethodCallHandler(
      [plugin_pointer = plugin.get()](const auto &call, auto result) {
        plugin_pointer->HandleMethodCall(call, std::move(result));
      });

  registrar->AddPlugin(std::move(plugin));
}

WindowToFrontPlugin::WindowToFrontPlugin(flutter::PluginRegistrarWindows *registrar) 
  : registrar_(registrar) {}

WindowToFrontPlugin::~WindowToFrontPlugin() {}

void WindowToFrontPlugin::HandleMethodCall(
    const flutter::MethodCall<flutter::EncodableValue> &method_call,
    std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result) {
  if (method_call.method_name().compare("activate") == 0) {
    // See https://stackoverflow.com/a/34414846/2142626 for an explanation of how 
    // this raises a window to the foreground. 
    HWND m_hWnd = registrar_->GetView()->GetNativeWindow();
    HWND hCurWnd = ::GetForegroundWindow();
    DWORD dwMyID = ::GetCurrentThreadId();
    DWORD dwCurID = ::GetWindowThreadProcessId(hCurWnd, NULL);
    ::AttachThreadInput(dwCurID, dwMyID, TRUE);
    ::SetWindowPos(m_hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE | SWP_NOMOVE);
    ::SetWindowPos(m_hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_SHOWWINDOW | SWP_NOSIZE | SWP_NOMOVE);
    ::SetForegroundWindow(m_hWnd);
    ::SetFocus(m_hWnd);
    ::SetActiveWindow(m_hWnd);
    ::AttachThreadInput(dwCurID, dwMyID, FALSE);
    result->Success();
  } else {
    result->NotImplemented();
  }
}

}  // namespace window_to_front
```

And the contents of contents of `windows\window_to_front_plugin.h` with the following:

####  [..\window_to_front\windows\window_to_front_plugin.h](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/windows/window_to_front_plugin.h)

```
#ifndef FLUTTER_PLUGIN_WINDOW_TO_FRONT_PLUGIN_H_
#define FLUTTER_PLUGIN_WINDOW_TO_FRONT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace window_to_front {

class WindowToFrontPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WindowToFrontPlugin(flutter::PluginRegistrarWindows *registrar);

  virtual ~WindowToFrontPlugin();

  // Disallow copy and assign.
  WindowToFrontPlugin(const WindowToFrontPlugin&) = delete;
  WindowToFrontPlugin& operator=(const WindowToFrontPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);

  // The registrar for this plugin, for accessing the window.
  flutter::PluginRegistrarWindows *registrar_;
};

}  // namespace window_to_front

#endif  // FLUTTER_PLUGIN_WINDOW_TO_FRONT_PLUGIN_H_
```

Add the code to make the native functionality we created above available to the world of Flutter. First up, edit the window to front platform interface and add an `activate()` method, with a fallback implementation.

####  [../window_to_front/lib/window_to_front_platform_interface.dart](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/lib/window_to_front_platform_interface.dart)

```
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'window_to_front_method_channel.dart';

abstract class WindowToFrontPlatform extends PlatformInterface {
  /// Constructs a WindowToFrontPlatform.
  WindowToFrontPlatform() : super(token: _token);

  static final Object _token = Object();

  static WindowToFrontPlatform _instance = MethodChannelWindowToFront();

  /// The default instance of [WindowToFrontPlatform] to use.
  ///
  /// Defaults to [MethodChannelWindowToFront].
  static WindowToFrontPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WindowToFrontPlatform] when
  /// they register themselves.
  static set instance(WindowToFrontPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  // Replace getPlatformVersion() with the following activate() method
  Future<void> activate() {
    throw UnimplementedError('activate() has not been implemented.');
  }
}
```

Next, provide a method channel implementation of the window to front platform interface. 

####  [../window_to_front/lib/window_to_front_method_channel.dart](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/lib/window_to_front_method_channel.dart)

```
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'window_to_front_platform_interface.dart';

/// An implementation of [WindowToFrontPlatform] that uses method channels.
class MethodChannelWindowToFront extends WindowToFrontPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('window_to_front');

  // Replace the getPlatformVersion() with the following implementation
  @override
  Future<void> activate() async {
    return methodChannel.invokeMethod('activate');
  }
}
```

Finally, expose the window to front functionality for the world to use.

####  [../window_to_front/lib/window_to_front.dart](https://github.com/flutter/codelabs/blob/master/github-client/window_to_front/lib/window_to_front.dart)

```
import 'window_to_front_platform_interface.dart';

class WindowToFront {
  // Remove the getPlatformVersion() implementation and add the following
  static Future<void> activate() {
    return WindowToFrontPlatform.instance.activate();
  }
}
```

This Flutter plugin is complete, and you can go back to editing the `github_graphql_client` project.

```console
$ cd ../github_client
```

### Add dependencies

The Flutter plugin you just created is great, but it isn't much use to anyone sitting by itself. You need to add it as a dependency in your Flutter application in order to use it. 

```console
$ flutter pub add --path ../window_to_front window_to_front
Resolving dependencies...
  async 2.8.2 (2.9.0 available)
  characters 1.2.0 (1.2.1 available)
  clock 1.1.0 (1.1.1 available)
  fake_async 1.3.0 (1.3.1 available)
  matcher 0.12.11 (0.12.12 available)
  material_color_utilities 0.1.4 (0.1.5 available)
  meta 1.7.0 (1.8.0 available)
  path 1.8.1 (1.8.2 available)
  source_span 1.8.2 (1.9.0 available)
  string_scanner 1.1.0 (1.1.1 available)
  term_glyph 1.2.0 (1.2.1 available)
  test_api 0.4.9 (0.4.12 available)
  url_launcher 6.1.4 (6.1.5 available)
+ window_to_front 0.0.1 from path ../window_to_front
Changed 1 dependency!
```

Note the path specified for the `window_to_front` dependency: because this is a local package instead of one published to  [pub.dev](https://pub.dev/), you specify a path instead of a version number.

### Put it all together, again, again

It's time to integrate `window_to_front` into your `lib/main.dart` file. We only need to add an import and call into the native code at the right time.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/github-client/step_06/lib/main.dart)

```
import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:window_to_front/window_to_front.dart';    // Add this

import 'github_oauth_credentials.dart';
import 'src/github_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GitHub Client'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      builder: (context, httpClient) {
        WindowToFront.activate();                        // and this.
        return FutureBuilder<CurrentUser>(
          future: viewerDetail(httpClient.credentials.accessToken),
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                title: Text(title),
                elevation: 2,
              ),
              body: Center(
                child: Text(
                  snapshot.hasData
                      ? 'Hello ${snapshot.data!.login}!'
                      : 'Retrieving viewer login details...',
                ),
              ),
            );
          },
        );
      },
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes,
    );
  }
}

Future<CurrentUser> viewerDetail(String accessToken) async {
  final gitHub = GitHub(auth: Authentication.withToken(accessToken));
  return gitHub.users.getCurrentUser();
}
```

After you run this Flutter application, you will be greeted by an identical looking app, but clicking the button will reveal a difference in behaviour. If you place the app over the web browser you are using to authenticate with, when you click on the Login button, your application will be pushed behind the web browser, but once you have completed the authentication flow in the browser, your application will come to the front again. Much more polished.

| <img style="width: 298.00px" src="img/1fb601b00e598dd8.png"> | <img style="width: 298.00px" src="img/9f23ae9bac766cc6.png"> |
| --- | --- |

In the next section, you'll build on the base that you have, to create a desktop GitHub client that gives you insight into what you have on GitHub. You'll inspect the list of repositories in the account, the pull requests from the Flutter project, and the assigned issues.


## View the repositories, pull requests, and assigned issues
Duration: 10:00


You're pretty far along into building this application, and yet, all the application does is tell you your login. You'd probably like a little bit more from a desktop GitHub client. Next, you'll add the capability to list repositories, pull requests, and assigned issues.

### Add one last dependency

In rendering the data returned from the above queries, you'll use an additional package,  [`fluttericon`](https://pub.dev/packages/fluttericon), for easily displaying  [GitHub's Octicons](https://primer.style/octicons/). 

```console
$ flutter pub add fluttericon
Resolving dependencies... 
+ fluttericon 2.0.0
  material_color_utilities 0.2.0 (0.3.0 available)
  source_span 1.9.1 (1.10.0 available)
  test_api 0.5.1 (0.5.2 available)
Changed 1 dependency!
```

### Widgets to render the results to screen

You are going to use the GitHub package you added before to populate a  [`NavigationRail`](https://api.flutter.dev/flutter/material/NavigationRail-class.html) widget with views of your repositories, assigned issues, and pull requests from the Flutter project. The  [Material.io](https://material.io/) design system documentation explains how  [Navigation rails](https://material.io/components/navigation-rail) provide ergonomic movement between primary destinations in applications.

Create a new file, and fill it with the following content. 

####  [lib/src/github_summary.dart](https://github.com/flutter/codelabs/blob/master/github-client/step_07/lib/src/github_summary.dart)

```
import 'package:flutter/material.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:github/github.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GitHubSummary extends StatefulWidget {
  const GitHubSummary({required this.gitHub, super.key});
  final GitHub gitHub;

  @override
  State<GitHubSummary> createState() => _GitHubSummaryState();
}

class _GitHubSummaryState extends State<GitHubSummary> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Octicons.repo),
              label: Text('Repositories'),
            ),
            NavigationRailDestination(
              icon: Icon(Octicons.issue_opened),
              label: Text('Assigned Issues'),
            ),
            NavigationRailDestination(
              icon: Icon(Octicons.git_pull_request),
              label: Text('Pull Requests'),
            ),
          ],
        ),
        const VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,
            children: [
              RepositoriesList(gitHub: widget.gitHub),
              AssignedIssuesList(gitHub: widget.gitHub),
              PullRequestsList(gitHub: widget.gitHub),
            ],
          ),
        ),
      ],
    );
  }
}

class RepositoriesList extends StatefulWidget {
  const RepositoriesList({required this.gitHub, super.key});
  final GitHub gitHub;

  @override
  State<RepositoriesList> createState() => _RepositoriesListState();
}

class _RepositoriesListState extends State<RepositoriesList> {
  @override
  initState() {
    super.initState();
    _repositories = widget.gitHub.repositories.listRepositories().toList();
  }

  late Future<List<Repository>> _repositories;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Repository>>(
      future: _repositories,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var repositories = snapshot.data;
        return ListView.builder(
          primary: false,
          itemBuilder: (context, index) {
            var repository = repositories[index];
            return ListTile(
              title:
                  Text('${repository.owner?.login ?? ''}/${repository.name}'),
              subtitle: Text(repository.description),
              onTap: () => _launchUrl(this, repository.htmlUrl),
            );
          },
          itemCount: repositories!.length,
        );
      },
    );
  }
}

class AssignedIssuesList extends StatefulWidget {
  const AssignedIssuesList({required this.gitHub, super.key});
  final GitHub gitHub;

  @override
  State<AssignedIssuesList> createState() => _AssignedIssuesListState();
}

class _AssignedIssuesListState extends State<AssignedIssuesList> {
  @override
  initState() {
    super.initState();
    _assignedIssues = widget.gitHub.issues.listByUser().toList();
  }

  late Future<List<Issue>> _assignedIssues;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Issue>>(
      future: _assignedIssues,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var assignedIssues = snapshot.data;
        return ListView.builder(
          primary: false,
          itemBuilder: (context, index) {
            var assignedIssue = assignedIssues[index];
            return ListTile(
              title: Text(assignedIssue.title),
              subtitle: Text('${_nameWithOwner(assignedIssue)} '
                  'Issue #${assignedIssue.number} '
                  'opened by ${assignedIssue.user?.login ?? ''}'),
              onTap: () => _launchUrl(this, assignedIssue.htmlUrl),
            );
          },
          itemCount: assignedIssues!.length,
        );
      },
    );
  }

  String _nameWithOwner(Issue assignedIssue) {
    final endIndex = assignedIssue.url.lastIndexOf('/issues/');
    return assignedIssue.url.substring(29, endIndex);
  }
}

class PullRequestsList extends StatefulWidget {
  const PullRequestsList({required this.gitHub, super.key});
  final GitHub gitHub;

  @override
  State<PullRequestsList> createState() => _PullRequestsListState();
}

class _PullRequestsListState extends State<PullRequestsList> {
  @override
  initState() {
    super.initState();
    _pullRequests = widget.gitHub.pullRequests
        .list(RepositorySlug('flutter', 'flutter'))
        .toList();
  }

  late Future<List<PullRequest>> _pullRequests;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PullRequest>>(
      future: _pullRequests,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        var pullRequests = snapshot.data;
        return ListView.builder(
          primary: false,
          itemBuilder: (context, index) {
            var pullRequest = pullRequests[index];
            return ListTile(
              title: Text(pullRequest.title ?? ''),
              subtitle: Text('flutter/flutter '
                  'PR #${pullRequest.number} '
                  'opened by ${pullRequest.user?.login ?? ''} '
                  '(${pullRequest.state?.toLowerCase() ?? ''})'),
              onTap: () => _launchUrl(this, pullRequest.htmlUrl ?? ''),
            );
          },
          itemCount: pullRequests!.length,
        );
      },
    );
  }
}

Future<void> _launchUrl(State state, String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    if (state.mounted) {
      return showDialog(
        context: state.context,
        builder: (context) => AlertDialog(
          title: const Text('Navigation error'),
          content: Text('Could not launch $url'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        ),
      );
    }
  }
}
```

You have added a lot of new code here. The upside is that this is all pretty normal Flutter code, with widgets used to separate out responsibility for different concerns. Spend a few moments reviewing this code before moving onto the next step of making it all run.

### Put it all together, one last time

It's time to integrate `GitHubSummary` into your `lib/main.dart` file. The changes are fairly major this time, but consist mostly of deletions. Replace the contents of your `lib/main.dart` file with the following.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/github-client/step_07/lib/main.dart)

```
import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:window_to_front/window_to_front.dart';

import 'github_oauth_credentials.dart';
import 'src/github_login.dart';
import 'src/github_summary.dart';                                  // Add this import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GitHub Client'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      builder: (context, httpClient) {
        WindowToFront.activate();
        return Scaffold(                                           // Modify from here
          appBar: AppBar(
            title: Text(title),
            elevation: 2,
          ),
          body: GitHubSummary(
            gitHub: _getGitHub(httpClient.credentials.accessToken),
          ),
        );
      },                                                           // to here.
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes,
    );
  }
}

GitHub _getGitHub(String accessToken) {                            // Modify from here
  return GitHub(auth: Authentication.withToken(accessToken));
}                                                                  // to here.
```

Run the application, and you should be greeted with something like this:

<img src="img/3a87cacb8a3a4f65.png" alt="3a87cacb8a3a4f65.png"  width="624.00" />


## Next steps



**Congratulations!**

You've completed the codelab and built a desktop Flutter application that accesses GitHub's API. You used an authenticated API using OAuth and you used native APIs via a plugin that you also created.

To learn more about Flutter on desktop, visit  [flutter.dev/desktop](https://flutter.dev/desktop). Finally, to see a totally different take on Flutter and GitHub, see  [GroovinChip's GitHub-Activity-Feed](https://github.com/GroovinChip/GitHub-Activity-Feed).


