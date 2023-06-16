---
id: codelabs/google-maps-in-flutter
summary: In this codelab, you'll build a Google Maps experience using the Flutter mobile app SDK for crafting high-quality native experiences on iOS, Android and the web.
status: [published]
authors: brettmorgan
categories: flutter,mapsplatform
tags: web
feedback_link: https://github.com/googlecodelabs/google-maps-in-flutter/issues
source: 1kwYB2RE1EXYMOt7F5fm-0nrY6BA1AyWsBXz2vlfTfxA
duration: 30

---

# Adding Google Maps to a Flutter app

[Codelab Feedback](https://github.com/googlecodelabs/google-maps-in-flutter/issues)


## Introduction



Flutter is Google's mobile app SDK for crafting high-quality native experiences on iOS and Android in record time.

With the  [Google Maps Flutter plugin](https://pub.dartlang.org/packages/google_maps_flutter), you can add maps based on Google maps data to your application. The plugin automatically handles access to the Google Maps servers, map display, and response to user gestures such as clicks and drags. You can also add markers to your map. These objects provide additional information for map locations, and allow the user to interact with the map.

### **What you'll build**

| In this codelab, you&#39;ll build a mobile app featuring a Google Map using the Flutter SDK. Your app will:<ul><li>Display a Google Map</li><li>Retrieve map data from a web service</li><li>Display this data as markers on the Map</li></ul> | <img style="width: 298.00px" src="img/b2ecc0ed4c7dcee2.png"> |
| --- | --- |

### What is Flutter?

Flutter has three core capabilities.

* **Fast to develop**: Build your Android and iOS applications in milliseconds with Stateful Hot Reload.
* **Expressive and flexible**: Quickly ship features with a focus on native end-user experiences.
* **Native performance on both iOS and Android**: Flutter's widgets incorporate all critical platform differences — such as scrolling, navigation, icons, and fonts — to provide full native performance.

Google Maps has:

* **99% coverage of the world**: Build with reliable, comprehensive data for over 200 countries and territories.
* **25 million updates daily**: Count on accurate, real-time location information.
* **1 billion monthly active users**: Scale confidently, backed by Google Maps' infrastructure.

This codelab walks you through creating a Google Maps experience in a Flutter app for both iOS and Android.

### **What you'll learn**

* How to create a new Flutter application.
* How to configure a Google Maps Flutter plugin.
* How to add Markers to a map, using location data from a web service.

This codelab focuses on adding a Google map to a Flutter app. Non-relevant concepts and code blocks are glossed over and are provided for you to simply copy and paste.

<form>
<name>What would you like to learn from this codelab?</name>
<input value="I&#39;m new to the topic, and I want a good overview.">
<input value="I know something about this topic, but I want a refresher.">
<input value="I&#39;m looking for example code to use in my project.">
<input value="I&#39;m looking for an explanation of something specific.">
</form>


## Set up your Flutter environment
Duration: 10:00


You need two pieces of software to complete this lab: the  [Flutter SDK](https://flutter.io/get-started/install/), and  [an editor](https://flutter.io/get-started/editor/). This codelab assumes Android Studio, but you can use your preferred editor.

You can run this codelab using any of the following devices:

* A physical device (Android or iOS) connected to your computer and set to developer mode.
* The iOS simulator.  (Requires  [installing Xcode tools](https://apps.apple.com/us/app/xcode/id497799835).)
* The Android emulator. (Requires setup in  [Android Studio](https://developer.android.com/studio/install).)


## Getting started
Duration: 05:00


### **Getting started with Flutter**

The easiest way to get started with Flutter is to use the flutter command line tool to create all the required code for a simple getting started experience. 

```console
$ flutter create google_maps_in_flutter --platforms android,ios,web
Creating project google_maps_in_flutter...
Running "flutter pub get" in google_maps_in_flutter...           1,612ms
Wrote 80 files.

All done!
In order to run your application, type:

  $ cd google_maps_in_flutter
  $ flutter run

Your application code is in google_maps_in_flutter/lib/main.dart.
```

### **Adding Google Maps Flutter plugin as a dependency**

Adding additional capability to a Flutter app is easy using  [Pub packages](https://pub.dartlang.org/flutter). In this codelab you introduce the  [Google Maps Flutter plugin](https://pub.dartlang.org/packages/google_maps_flutter) by running the following command from the project directory.

```console
$ cd google_maps_in_flutter
$ flutter pub add google_maps_flutter
Resolving dependencies...
  async 2.8.2 (2.9.0 available)
  characters 1.2.0 (1.2.1 available)
  clock 1.1.0 (1.1.1 available)
  fake_async 1.3.0 (1.3.1 available)
+ flutter_plugin_android_lifecycle 2.0.6
+ google_maps_flutter 2.1.8
+ google_maps_flutter_platform_interface 2.2.0
  matcher 0.12.11 (0.12.12 available)
  material_color_utilities 0.1.4 (0.1.5 available)
  meta 1.7.0 (1.8.0 available)
  path 1.8.1 (1.8.2 available)
+ plugin_platform_interface 2.1.2
  source_span 1.8.2 (1.9.0 available)
+ stream_transform 2.0.0
  string_scanner 1.1.0 (1.1.1 available)
  term_glyph 1.2.0 (1.2.1 available)
  test_api 0.4.9 (0.4.12 available)
Changed 5 dependencies!
```

This codelab will also be covering how to use Google Maps in Flutter for Web. However, the Web version of the plugin is not yet federated, so you need to also add it to your project.

```console
$ flutter pub add google_maps_flutter_web
Resolving dependencies...
  async 2.8.2 (2.9.0 available)
  characters 1.2.0 (1.2.1 available)
  clock 1.1.0 (1.1.1 available)
+ csslib 0.17.2
  fake_async 1.3.0 (1.3.1 available)
+ flutter_web_plugins 0.0.0 from sdk flutter
+ google_maps 6.2.0
+ google_maps_flutter_web 0.4.0+1
+ html 0.15.0
+ js 0.6.4
+ js_wrapping 0.7.4
  matcher 0.12.11 (0.12.12 available)
  material_color_utilities 0.1.4 (0.1.5 available)
  meta 1.7.0 (1.8.0 available)
  path 1.8.1 (1.8.2 available)
+ sanitize_html 2.0.0
  source_span 1.8.2 (1.9.0 available)
  string_scanner 1.1.0 (1.1.1 available)
  term_glyph 1.2.0 (1.2.1 available)
  test_api 0.4.9 (0.4.12 available)
Downloading google_maps_flutter_web 0.4.0+1...
Changed 8 dependencies!
```

### Configuring iOS **`platform`**

To get the latest version of the Google Maps SDK on iOS  [requires a platform minimum version of iOS 13](https://developers.google.com/maps/documentation/ios-sdk/overview#supported_platforms). Modify the ios/Podfile as follows.

####  [ios/Podfile](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_3/ios/Podfile) 

```
# Set platform to 13.0 to enable latest Google Maps SDK
platform :ios, '13.0' # Uncomment and set to 13.

# CocoaPods analytics sends network stats synchronously affecting flutter build latency.
ENV['COCOAPODS_DISABLE_STATS'] = 'true'
```

### Configuring Android **`minSDK`**

To use Google Maps SDK on Android requires setting the `minSDK` to 20. Modify the android/app/build.gradle as follows.

####  [android/app/build.gradle](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_3/android/app/build.gradle)

```
android {
    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.google_maps_in_flutter"
        minSdkVersion 20                      // Set to 20
        targetSdkVersion flutter.targetSdkVersion
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }
}
```


## Adding Google Maps to the app
Duration: 05:00


### **It's all about the API keys**

To use Google Maps in your Flutter app, you need to configure an API project with the  [Google Maps Platform](https://cloud.google.com/maps-platform/), following the  [Maps SDK for Android's Using API key](https://developers.google.com/maps/documentation/android-sdk/signup),  [Maps SDK for iOS' Using API key](https://developers.google.com/maps/documentation/ios-sdk/get-api-key), and  [Maps JavaScript API's Using API key](https://developers.google.com/maps/documentation/javascript/get-api-key). With API keys in hand, carry out the following steps to configure both Android and iOS applications.

### **Adding an API key for an Android app**

To add an API key to the Android app, edit the `AndroidManifest.xml` file in `android/app/src/main`. Add a single `meta-data` entry containing the API key created in the previous step inside the `application` node. 

####  [android/app/src/main/AndroidManifest.xml](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_4/android/app/src/main/AndroidManifest.xml)

```
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.google_maps_in_flutter">
    <application
        android:label="google_maps_in_flutter"
        android:icon="@mipmap/ic_launcher">

        <!-- TODO: Add your Google Maps API key here -->
        <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR-KEY-HERE"/>

        <activity
            android:name=".MainActivity"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <meta-data
              android:name="io.flutter.embedding.android.SplashScreenDrawable"
              android:resource="@drawable/launch_background"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>
</manifest>

```

### **Adding an API key for an iOS app**

To add an API key to the iOS app, edit the `AppDelegate.swift` file in `ios/Runner`. Unlike Android, adding an API key on iOS requires changes to the source code of the Runner app. The AppDelegate is the core singleton that is part of the app initialization process.

Make two changes to this file. First, add an `#import` statement to pull in the Google Maps headers, and then call the `provideAPIKey()` method of the `GMSServices` singleton. This API key enables Google Maps to correctly serve map tiles.

####  [ios/Runner/AppDelegate.swift](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_4/ios/Runner/AppDelegate.swift)

```
import UIKit
import Flutter
import GoogleMaps  // Add this import

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // TODO: Add your Google Maps API key
    GMSServices.provideAPIKey("YOUR-API-KEY")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

```

### **Adding an API key for a Web app**

To add an API key to the Web app, edit the `index.html` file in `web`. Add a reference to the Maps JavaScript script in the head section, with your API key.

####  [web/index.html](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_4/web/index.html)

```
<head>
  <base href="/">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="description" content="A new Flutter project.">

  <!-- iOS meta tags & icons -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="google_maps_in_flutter">
  <link rel="apple-touch-icon" href="icons/Icon-192.png">

  <!-- TODO: Add your Google Maps API key here -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR-KEY-HERE"></script>

  <title>google_maps_in_flutter</title>
  <link rel="manifest" href="manifest.json">
</head>



```

### Putting a map on the screen

Now it's time to get a map on the screen. Update `lib/main.dart` as follows.

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_4/lib/main.dart)

```
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          elevation: 2,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
```

### Running the app

Run the Flutter app in either iOS or Android to see a single map view, centered on Portland. Alternatively, run up either an Android emulator or an iOS simulator. Feel free to modify the map center to represent your hometown, or somewhere that is important to you.

```console
$ flutter run
```

| <img style="width: 329.58px" src="img/3a57b5920b40ee27.png"> | <img style="width: 261.77px" src="img/5bd4eb58d531292d.png"> |
| --- | --- |


## Put Google on the Map
Duration: 10:00


Google has many offices around the world, from  [North America](https://about.google/locations/?region=north-america),  [Latin America](https://about.google/locations/?region=latin-america),  [Europe](https://about.google/locations/?region=europe),  [Asia Pacific](https://about.google/locations/?region=asia-pacific), to  [Africa & Middle East](https://about.google/locations/?region=africa-middle-east). The nice thing about these maps, if you investigate them, is that they have an easily usable  [API endpoint](https://about.google/static/data/locations.json) for supplying the office location information in JSON format. In this step, you put these office locations on the map. In this step, you will use code generation to parse JSON.

Add three new Flutter dependencies to the project as follows. Firstly, add the  [`http`](https://pub.dev/packages/http) package for making HTTP requests easily.

```console
$ flutter pub add http
Resolving dependencies...
  async 2.8.1 (2.8.2 available)
+ http 0.13.3
+ http_parser 4.0.0
  matcher 0.12.10 (0.12.11 available)
+ pedantic 1.11.1
  test_api 0.4.2 (0.4.3 available)
Changed 3 dependencies!
```

Next, add  [json_serializable](https://pub.dev/packages/json_serializable) and  [json_annotation](https://pub.dev/packages/json_annotation) for declaring object structure for representing JSON documents. 

```console
$ flutter pub add json_serializable
Resolving dependencies...
+ _fe_analyzer_shared 25.0.0
+ analyzer 2.2.0
+ args 2.2.0
  async 2.8.1 (2.8.2 available)
+ build 2.1.0
+ build_config 1.0.0
+ checked_yaml 2.0.1
+ cli_util 0.3.3
+ convert 3.0.1
+ crypto 3.0.1
+ dart_style 2.0.3
+ file 6.1.2
+ glob 2.0.1
+ json_annotation 4.1.0
+ json_serializable 5.0.0
+ logging 1.0.1
  matcher 0.12.10 (0.12.11 available)
+ package_config 2.0.0
+ pub_semver 2.0.0
+ pubspec_parse 1.0.0
+ source_gen 1.1.0
+ source_helper 1.2.1
  test_api 0.4.2 (0.4.3 available)
+ watcher 1.0.0
+ yaml 3.1.0
Downloading analyzer 2.2.0...
Downloading _fe_analyzer_shared 25.0.0...
Changed 22 dependencies!
$ flutter pub add json_annotation 
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
Got dependencies!
```

Finally, add  [build_runner](https://pub.dev/packages/build_runner) as a development time dependency. This will be used for code generation later in this step. 

```console
$ flutter pub add --dev build_runner
Resolving dependencies...
  async 2.8.1 (2.8.2 available)
+ build_daemon 3.0.0
+ build_resolvers 2.0.4
+ build_runner 2.1.1
+ build_runner_core 7.1.0
+ built_collection 5.1.0
+ built_value 8.1.2
+ code_builder 4.1.0
+ fixnum 1.0.0
+ frontend_server_client 2.1.2
+ graphs 2.0.0
+ http_multi_server 3.0.1
+ io 1.0.3
+ js 0.6.3
  matcher 0.12.10 (0.12.11 available)
+ mime 1.0.0
+ pool 1.5.0
+ shelf 1.2.0
+ shelf_web_socket 1.0.1
  test_api 0.4.2 (0.4.3 available)
+ timing 1.0.0
+ web_socket_channel 2.1.0
Changed 19 dependencies!
```

### **Parsing JSON with code generation**

You might notice that the JSON data returned from the API endpoint has a regular structure. It would be handy to generate the code to marshal that data into objects that you can use in code. 

In the `lib/src` directory, create a `locations.dart` file and describe the structure of the returned JSON data as follows:

####  [lib/src/locations.dart](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_5/lib/src/locations.dart)

```
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'locations.g.dart';

@JsonSerializable()
class LatLng {
  LatLng({
    required this.lat,
    required this.lng,
  });

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  final double lat;
  final double lng;
}

@JsonSerializable()
class Region {
  Region({
    required this.coords,
    required this.id,
    required this.name,
    required this.zoom,
  });

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
  Map<String, dynamic> toJson() => _$RegionToJson(this);

  final LatLng coords;
  final String id;
  final String name;
  final double zoom;
}

@JsonSerializable()
class Office {
  Office({
    required this.address,
    required this.id,
    required this.image,
    required this.lat,
    required this.lng,
    required this.name,
    required this.phone,
    required this.region,
  });

  factory Office.fromJson(Map<String, dynamic> json) => _$OfficeFromJson(json);
  Map<String, dynamic> toJson() => _$OfficeToJson(this);

  final String address;
  final String id;
  final String image;
  final double lat;
  final double lng;
  final String name;
  final String phone;
  final String region;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.offices,
    required this.regions,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<Office> offices;
  final List<Region> regions;
}

Future<Locations> getGoogleOffices() async {
  const googleLocationsURL = 'https://about.google/static/data/locations.json';

  // Retrieve the locations of Google offices
  try {
    final response = await http.get(Uri.parse(googleLocationsURL));
    if (response.statusCode == 200) {
      return Locations.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    }
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }

  // Fallback for when the above HTTP request fails.
  return Locations.fromJson(
    json.decode(
      await rootBundle.loadString('assets/locations.json'),
    ) as Map<String, dynamic>,
  );
}
```

Once you've added this code, your IDE (if you are using one) should display some red squiggles, as it references a nonexistent sibling file, `locations.g.dart.` This generated file converts between untyped JSON structures and named objects. Create it by running the `build_runner`:

```console
$ flutter pub run build_runner build --delete-conflicting-outputs
[INFO] Generating build script...
[INFO] Generating build script completed, took 357ms

[INFO] Creating build script snapshot......
[INFO] Creating build script snapshot... completed, took 10.5s

[INFO] There was output on stdout while compiling the build script snapshot, run with `--verbose` to see it (you will need to run a `clean` first to re-snapshot).

[INFO] Initializing inputs
[INFO] Building new asset graph...
[INFO] Building new asset graph completed, took 646ms

[INFO] Checking for unexpected pre-existing outputs....
[INFO] Deleting 1 declared outputs which already existed on disk.
[INFO] Checking for unexpected pre-existing outputs. completed, took 3ms

[INFO] Running build...
[INFO] Generating SDK summary...
[INFO] 3.4s elapsed, 0/3 actions completed.
[INFO] Generating SDK summary completed, took 3.4s

[INFO] 4.7s elapsed, 2/3 actions completed.
[INFO] Running build completed, took 4.7s

[INFO] Caching finalized dependency graph...
[INFO] Caching finalized dependency graph completed, took 36ms

[INFO] Succeeded after 4.8s with 2 outputs (7 actions)
```

Your code should now analyze cleanly again. Next, we should add in the fallback locations.json file used in the `getGoogleOffices` function. One of the reasons for including this fallback is that the static data being loaded in this function is served without CORS headers, and thus will fail to load in a web browser. The Android and iOS Flutter apps don't need CORS headers, but mobile data access can be finicky at the best of times. 

Navigate to  [`https://about.google/static/data/locations.json`](https://about.google/static/data/locations.json) in your browser, and save the contents into the asset directory. Alternatively, you can use the command line as follows.

```console
$ mkdir assets
$ cd assets
$ curl -o locations.json https://about.google/static/data/locations.json
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 30348  100 30348    0     0  75492      0 --:--:-- --:--:-- --:--:-- 75492
```

Now that you have the asset file downloaded, add it to the flutter section of your `pubspec.yaml` file.

####  [pubspec.yaml](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_5/pubspec.yaml) 

```
flutter:
  uses-material-design: true

  assets:
    - assets/locations.json
```

Modify the `main.dart` file to request the map data, and then use the returned info to add offices to the map:

####  [lib/main.dart](https://github.com/flutter/codelabs/blob/master/google-maps-in-flutter/step_5/lib/main.dart)

```
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'src/locations.dart' as locations;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Office Locations'),
          elevation: 2,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: LatLng(0, 0),
            zoom: 2,
          ),
          markers: _markers.values.toSet(),
        ),
      ),
    );
  }
}
```

This code performs several operations: 

* In `_onMapCreated`, it uses the JSON parsing code from the previous step, `await`ing until it's loaded. It then uses the returned data to create `Marker`s inside a `setState()` callback. Once the app receives new markers, setState flags Flutter to repaint the screen, causing the office locations to display.
* The markers are stored in a `Map` that is associated with the `GoogleMap` widget. This links the markers to the correct map. You could, of course, have multiple maps and display different markers in each. 

<img src="img/b2ecc0ed4c7dcee2.png" alt="b2ecc0ed4c7dcee2.png"  width="306.15" />

Here's a screenshot of what you have accomplished. There are many interesting additions that can be made at this point. For example, you could add a list view of the offices that moves and zooms the map when the user clicks an office but, as they say, this exercise is left to the reader!


## Next steps



### Congratulations!

You have completed the codelab and have built a Flutter app with a Google Map! You've also interacted with a JSON Web Service.

### Other next steps

This codelab has built an experience to visualise a number of points on a map. There are a number of mobile apps that build on this capability to serve a lot of different user needs. There are other resources that can help you take this further:

*  [Build Mobile Apps With Flutter and Google Maps](https://www.youtube.com/watch?v=RpQLFAFqMlw) (a talk given at Cloud Next '19)
* Hadrien Lejard's  [`google_maps_webservice`](https://pub.dev/packages/google_maps_webservice) package which makes the Google Maps Web Services, like  [Directions API](https://developers.google.com/maps/documentation/directions/start),  [Distance Matrix API](https://developers.google.com/maps/documentation/distance-matrix/start), and  [Places API](https://cloud.google.com/maps-platform/places/) really easy to use.
* If you want to look at different options for using an API via JSON REST, see  [Andrew Brogdon's Medium post](https://medium.com/flutter-io/some-options-for-deserializing-json-with-flutter-7481325a4450) for a range of options for working with JSON REST APIs.


