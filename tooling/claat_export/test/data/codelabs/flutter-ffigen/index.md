---
id: codelabs/flutter-ffigen
summary: In this codelab, you'll build a Flutter plugin for both mobile and desktop platforms using FFI to make use of an existing native C  library.
status: [draft]
authors: Brett Morgan, Maksim Lin
categories: flutter
tags: web
feedback_link: https://github.com/flutter/flutter/issues
source: 1ihOxu-DK3SBrUYyppRtzKvfwceSIzk4ZWzP9F6nRtnw
duration: 0

---

# Using FFI in a Flutter plugin

[Codelab Feedback](https://github.com/flutter/flutter/issues)


## Introduction



Dart's  [FFI (foreign function interface)](https://dart.dev/guides/libraries/c-interop) allows Flutter apps to  [make use of existing native libraries that expose a C API](https://docs.flutter.dev/development/platform-integration/android/c-interop). Dart supports FFI on Android, iOS, Windows, macOS, and Linux. For the web, Dart supports JavaScript interop, but that subject isn't covered in this codelab.

### **What you'll build**

In this codelab, you build a mobile and desktop plugin that uses a C library. With this API, you'll write a simple example app that makes use of the plugin. Your plugin and app will:

* Import the C library source code into your new Flutter plugin
* Customize the plugin to allow it build on Windows, macOS, Linux, Android, and iOS
* Build an application that uses the plugin for a JavaScript  [REPL (read reveal print loop)](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop)

<img src="img/adb6ce3dcf5111a7.png" alt="adb6ce3dcf5111a7.png"  width="624.00" />

### **What you'll learn**

In this codelab you'll learn the practical knowledge required to build an FFI-based Flutter plugin on both desktop and mobile platforms, including:

* Generating a  [Dart FFI](https://dart.dev/guides/libraries/c-interop) based Flutter plugin template
* Using the `ffigen` package to generate binding code for a C library
* Using CMake to build a Flutter FFI plugin  [for Android](https://docs.flutter.dev/development/platform-integration/android/c-interop), Windows, and Linux
* Using CocoaPods to build a Flutter FFI plugin for iOS and macOS

### **What you'll need**

* Android Studio 4.1 or later for Android development
* Xcode 13 or later for iOS and macOS development
* Visual Studio 2022 or Visual Studio Build Tools 2022 with the "Desktop development with C++" workload for Windows desktop development
*  [Flutter SDK](https://flutter.dev/docs/get-started/install)
* Any required build tools for the platforms you will be developing on (for example, CMake, CocoaPods, and so on). 
*  [LLVM for the platforms you will be developing on](https://pub.dev/packages/ffigen#installing-llvm). The LLVM compiler tool suite is used by `ffigen` to parse the C header file to build the FFI binding exposed in Dart. 
* A code editor, such as  [Visual Studio Code](https://docs.flutter.dev/get-started/editor?tab=vscode).


## Getting started



The `ffigen` tooling is a recent addition to Flutter. You can confirm that your Flutter installation is running the current stable release by running the following command. 

```console
$ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.3.9, on macOS 13.1 22C65 darwin-arm, locale en)
[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 14.1)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2021.2)
[✓] IntelliJ IDEA Community Edition (version 2022.2.2)
[✓] VS Code (version 1.74.0)
[✓] Connected device (2 available)
[✓] HTTP Host Availability

• No issues found!
```

Confirm that the `flutter doctor` output states that you are on the stable channel, and that there aren't more recent stable Flutter releases available. If you aren't on stable, or there are more recent releases available, run the following two commands to bring your Flutter tooling up to speed.

```console
$ flutter channel stable
$ flutter upgrade
```

You can run the code in this codelab using any of these devices:

* Your development computer (for desktop builds of your plugin and example app)
* A physical Android or iOS device connected to your computer and set to Developer mode
* The iOS simulator (requires installing Xcode tools)
* The Android Emulator (requires setup in Android Studio)


## Generate the plugin template



### Getting started with Flutter plugin development

Flutter ships with  [templates for plugins](https://docs.flutter.dev/development/packages-and-plugins/developing-packages#plugin-ffi) that make it easy to get started. When you generate the plugin template, you can specify which language you want to use. 

Run the following command in your working directory to create your project using the plugin template:

```console
$ flutter create --template=plugin_ffi \
  --platforms=android,ios,linux,macos,windows ffigen_app
```

The `--platforms` parameter specifies which platforms your plugin will support.

You can inspect the layout of the generated project using the `tree` command, or the file explorer of your operating system.

```console
$ tree -L 2 ffigen_app
ffigen_app
├── CHANGELOG.md
├── LICENSE
├── README.md
├── analysis_options.yaml
├── android
│   ├── build.gradle
│   ├── ffigen_app_android.iml
│   ├── local.properties
│   ├── settings.gradle
│   └── src
├── example
│   ├── README.md
│   ├── analysis_options.yaml
│   ├── android
│   ├── ffigen_app_example.iml
│   ├── ios
│   ├── lib
│   ├── linux
│   ├── macos
│   ├── pubspec.lock
│   ├── pubspec.yaml
│   └── windows
├── ffigen.yaml
├── ffigen_app.iml
├── ios
│   ├── Classes
│   └── ffigen_app.podspec
├── lib
│   ├── ffigen_app.dart
│   └── ffigen_app_bindings_generated.dart
├── linux
│   └── CMakeLists.txt
├── macos
│   ├── Classes
│   └── ffigen_app.podspec
├── pubspec.lock
├── pubspec.yaml
├── src
│   ├── CMakeLists.txt
│   ├── ffigen_app.c
│   └── ffigen_app.h
└── windows
    └── CMakeLists.txt

17 directories, 26 files 
```

It's worth spending a moment looking at the directory structure to get a feeling for what has been created, and where it's located. The `plugin_ffi` template places the Dart code for the plugin under `lib`, platform-specific directories named `android`, `ios`, `linux`, `macos`, and `windows` and, most importantly, an `example` directory.

For a developer used to normal Flutter development, this structure might feel strange, in that there is no executable defined at the top level. A plugin is meant to be included in other Flutter projects, but you will flesh out the code in the `example` directory to ensure that your plugin code works.

It's time to get started!


## Build and run the example



To make sure that the build system and prerequisites are correctly installed and work for each supported platform, build and run the generated example app for each target.

### **Windows**

Ensure that you are using a supported version of Windows. This codelab is known to work on Windows 10 and Windows 11.

You can either build the application from within your code editor, or on the command line.

```console
PS C:\Users\brett\Documents> cd .\ffigen_app\example\
PS C:\Users\brett\Documents\ffigen_app\example> flutter run -d windows
Launching lib\main.dart on Windows in debug mode...Building Windows application...                                         
Syncing files to device Windows...                                 160ms

Flutter run key commands.
r Hot reload. 
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

 Running with sound null safety 

An Observatory debugger and profiler on Windows is available at: http://127.0.0.1:53317/OiKWpyHXxHI=/
The Flutter DevTools debugger and profiler on Windows is available at:
http://127.0.0.1:9100?uri=http://127.0.0.1:53317/OiKWpyHXxHI=/
```

You should see a running app window like the following:

<img src="img/195ec747363a61a0.png" alt="195ec747363a61a0.png"  width="508.50" />

### **Linux**

Ensure that you are using a supported version of Linux. This codelab uses `Ubuntu 22.04.1`.

Once you have installed all the prerequisites listed in Step 2, run the following commands in a terminal: 

```console
$ cd ffigen_app/example
$ flutter run -d linux
Launching lib/main.dart on Linux in debug mode...
Building Linux application...                                           
Syncing files to device Linux...                                   504ms

Flutter run key commands.
r Hot reload. 🔥🔥🔥
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

💪 Running with sound null safety 💪

An Observatory debugger and profiler on Linux is available at: http://127.0.0.1:36653/Wgek1JGag48=/
The Flutter DevTools debugger and profiler on Linux is available at:
http://127.0.0.1:9103?uri=http://127.0.0.1:36653/Wgek1JGag48=/
```

You should see a running app window like the following:

<img src="img/acd710609ae729fe.png" alt="acd710609ae729fe.png"  width="624.00" />

### **Android**

For Android you can use Windows, macOS, or Linux for compilation. First, make sure you have an Android device connected to your development computer or are running an Android Emulator (AVD) instance. Confirm that Flutter is able to connect to either the Android device or emulator by running the following: 

```console
$ flutter devices
3 connected devices:

sdk gphone64 arm64 (mobile) • emulator-5554 • android-arm64  • Android 12 (API 32) (emulator)
macOS (desktop)             • macos         • darwin-arm64   • macOS 13.1 22C65 darwin-arm
Chrome (web)                • chrome        • web-javascript • Google Chrome 108.0.5359.98
```

<img src="img/c9b11c5a332a37e5.png" alt="c9b11c5a332a37e5.png"  width="413.08" />

### **macOS and iOS**

For macOS and iOS Flutter development, you must use a macOS computer.

Start with running the example app on macOS. Again confirm the devices that Flutter sees:

```console
$ flutter devices
2 connected devices:

macOS (desktop) • macos  • darwin-arm64   • macOS 13.1 22C65 darwin-arm
Chrome (web)    • chrome • web-javascript • Google Chrome 108.0.5359.98
```

Run the example app using the generated plugin project:

```console
$ cd ffigen_app/example
$ flutter run -d macos
```

You should see a running app window like the following:

<img src="img/26a43f974ca1b791.png" alt="26a43f974ca1b791.png"  width="624.00" />

For iOS you can use the simulator or a real hardware device. If using the simulator, first launch the simulator. The `flutter devices` command now lists the simulator as one of its available devices.

```console
$ flutter devices
3 connected devices:

iPhone SE (3rd generation) (mobile) • 1BCBE334-7EC4-433A-90FD-1BC14F3BA41F • ios            • com.apple.CoreSimulator.SimRuntime.iOS-16-1 (simulator)
macOS (desktop)                     • macos                                • darwin-arm64   • macOS 13.1 22C65 darwin-arm
Chrome (web)                        • chrome                               • web-javascript • Google Chrome 108.0.5359.98
```

Once the simulator is started, run: `flutter run`.

```console
$ cd ffigen_app/example
$ flutter run -d iphone
```

<img src="img/7dd04c8725d02228.png" alt="7dd04c8725d02228.png"  width="452.10" />

The iOS simulator takes precedence over the macOS target, so you can skip specifying a device with the `-d` parameter.

Congratulations, you have successfully built and run an application on five different operating systems. Next up, building the native plugin and interfacing with it from Dart using FFI. 


## Using Duktape on Windows, Linux, and Android



The C library that you'll be using in this codelab is  [Duktape](https://duktape.org/). Duktape is an embeddable Javascript engine, with a focus on portability and a compact footprint. In this step, you'll configure the plugin to compile the Duktape library, link it to your plugin, and then access it using Dart's FFI. 

This step configures the integration to work on Windows, Linux, and Android. The iOS and macOS integration requires additional configuration (beyond what is detailed in this step) to include the compiled library into the final Flutter executable. The additional required configuration is covered in the next step. 

### **Retrieving Duktape**

First, get a copy of the `duktape` source code by  [downloading it from the duktape.org](https://duktape.org/download.html) website. 

For Windows you can use PowerShell with `Invoke-WebRequest`:

```console
PS> Invoke-WebRequest -Uri https://duktape.org/duktape-2.7.0.tar.xz -OutFile duktape-2.7.0.tar.xz
```

For Linux, `wget` is a good choice.

```console
$ wget https://duktape.org/duktape-2.7.0.tar.xz
--2022-12-22 16:21:39--  https://duktape.org/duktape-2.7.0.tar.xz
Resolving duktape.org (duktape.org)... 104.198.14.52
Connecting to duktape.org (duktape.org)|104.198.14.52|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1026524 (1002K) [application/x-xz]
Saving to: ‘duktape-2.7.0.tar.xz'

duktape-2.7.0.tar.x 100%[===================>]   1002K  1.01MB/s    in 1.0s

2022-12-22 16:21:41 (1.01 MB/s) - ‘duktape-2.7.0.tar.xz' saved [1026524/1026524]
```

The file is a `tar.xz` archive.  On Windows, one option is to  [download the 7Zip tools](https://www.7-zip.org/download.html), and use it as follows. 

```console
PS> 7z x .\duktape-2.7.0.tar.xz

7-Zip 22.01 (x64) : Copyright (c) 1999-2022 Igor Pavlov : 2022-07-15

Scanning the drive for archives:
1 file, 1026524 bytes (1003 KiB)

Extracting archive: .\duktape-2.7.0.tar.xz
--
Path = .\duktape-2.7.0.tar.xz
Type = xz
Physical Size = 1026524
Method = LZMA2:26 CRC64
Streams = 1
Blocks = 1

Everything is Ok

Size:       19087360
Compressed: 1026524
```

You need to run 7z twice, first to unarchive the xz compression, second to expand the tar archive.

```console
PS> 7z x .\duktape-2.7.0.tar

7-Zip 22.01 (x64) : Copyright (c) 1999-2022 Igor Pavlov : 2022-07-15

Scanning the drive for archives:
1 file, 19087360 bytes (19 MiB)

Extracting archive: .\duktape-2.7.0.tar
--
Path = .\duktape-2.7.0.tar
Type = tar
Physical Size = 19087360
Headers Size = 543232
Code Page = UTF-8
Characteristics = GNU ASCII

Everything is Ok

Folders: 46
Files: 1004
Size:       18281564
Compressed: 19087360
```

On modern linux environments, `tar` extracts the contents in one step as follows.

```console
$ tar xvf duktape-2.7.0.tar.xz 
x duktape-2.7.0/
x duktape-2.7.0/README.rst
x duktape-2.7.0/Makefile.sharedlibrary
x duktape-2.7.0/Makefile.coffee
x duktape-2.7.0/extras/
x duktape-2.7.0/extras/README.rst
x duktape-2.7.0/extras/module-node/
x duktape-2.7.0/extras/module-node/README.rst
x duktape-2.7.0/extras/module-node/duk_module_node.h
x duktape-2.7.0/extras/module-node/Makefile
[... and many more files]
```

### Installing LLVM

To use `ffigen`, you need to  [install LLVM](https://pub.dev/packages/ffigen#installing-llvm), which `ffigen` uses to parse C headers. On Windows, run the following command.

```console
PS> winget install -e --id LLVM.LLVM
Found LLVM [LLVM.LLVM] Version 15.0.5
This application is licensed to you by its owner.
Microsoft is not responsible for, nor does it grant any licenses to, third-party packages.
Downloading https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.5/LLVM-15.0.5-win64.exe
  ██████████████████████████████   277 MB /  277 MB
Successfully verified installer hash
Starting package install...
Successfully installed
```

Configure your system paths to add `C:\Program Files\LLVM\bin` to your binary search path to complete the installation of LLVM on your Windows machine. You can test if it's been correctly installed as follows.

```console
PS> clang --version
clang version 15.0.5
Target: x86_64-pc-windows-msvc
Thread model: posix
InstalledDir: C:\Program Files\LLVM\bin
```

For Ubuntu, the LLVM dependency can be installed as follows. Other Linux distributions have similar dependencies for LLVM and Clang.

```console
$ sudo apt install libclang-dev
[sudo] password for brett: 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libclang-15-dev
The following NEW packages will be installed:
  libclang-15-dev libclang-dev
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 26.1 MB of archives.
After this operation, 260 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu kinetic/universe amd64 libclang-15-dev amd64 1:15.0.2-1 [26.1 MB]
Get:2 http://archive.ubuntu.com/ubuntu kinetic/universe amd64 libclang-dev amd64 1:15.0-55.1ubuntu1 [2962 B]      
Fetched 26.1 MB in 7s (3748 kB/s)                                                                                 
Selecting previously unselected package libclang-15-dev.
(Reading database ... 85898 files and directories currently installed.)
Preparing to unpack .../libclang-15-dev_1%3a15.0.2-1_amd64.deb ...
Unpacking libclang-15-dev (1:15.0.2-1) ...
Selecting previously unselected package libclang-dev.
Preparing to unpack .../libclang-dev_1%3a15.0-55.1ubuntu1_amd64.deb ...
Unpacking libclang-dev (1:15.0-55.1ubuntu1) ...
Setting up libclang-15-dev (1:15.0.2-1) ...
Setting up libclang-dev (1:15.0-55.1ubuntu1) ...
```

As above, you can test your LLVM installation on Linux as follows.

```console
$ clang --version
Ubuntu clang version 15.0.2-1
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin
```

### Configuring `ffigen`

The template generated top-level `pubpsec.yaml` might have outdated versions of the `ffigen` package. Run the following command to update the Dart dependencies in the plugin project:

```
$ flutter pub upgrade --major-versions
```

Now that the `ffigen` package is up-to-date, next configure which files `ffigen` will consume to generate the binding files. Modify the contents of your project's  `ffigen.yaml` file to match the following.

####  [ffigen.yaml](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_05/ffigen.yaml)

```
# Run with `flutter pub run ffigen --config ffigen.yaml`.
name: DuktapeBindings
description: |
  Bindings for `src/duktape.h`.

  Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
output: 'lib/duktape_bindings_generated.dart'
headers:
  entry-points:
    - 'src/duktape.h'
  include-directives:
    - 'src/duktape.h'
preamble: |
  // ignore_for_file: always_specify_types
  // ignore_for_file: camel_case_types
  // ignore_for_file: non_constant_identifier_names
comments:
  style: any
  length: full
```

This configuration includes the C header file to pass to LLVM, the output file to generate, the description to put at the top of the file, and a preamble section used to add a lint warning. See the  [`ffigen` documentation](https://pub.dev/packages/ffigen#configurations) for further details on the keys and values.

You need to copy specific Duktape files from the Duktape distribution into the location where `ffigen` is configured to find them. 

```console
$ cp duktape-2.7.0/src/duktape.c src/
$ cp duktape-2.7.0/src/duktape.h src/
$ cp duktape-2.7.0/src/duk_config.h src/
```

Technically, you only need to copy across `duktape.h` for `ffigen`, but you are about to configure CMake to build the library that needs all three. Run `ffigen` to generate the new binding: 

```console
$ flutter pub run ffigen --config ffigen.yaml 
Running in Directory: '/home/brett/GitHub/codelabs/ffigen_codelab/step_05'
Input Headers: [./src/duktape.h]
[WARNING]: No definition found for declaration - (Cursor) spelling: duk_hthread, kind: 2, kindSpelling: StructDecl, type: 105, typeSpelling: struct duk_hthread, usr: c:@S@duk_hthread
[WARNING]: No definition found for declaration - (Cursor) spelling: duk_hthread, kind: 2, kindSpelling: StructDecl, type: 105, typeSpelling: struct duk_hthread, usr: c:@S@duk_hthread
[WARNING]: Generated declaration '__va_list_tag' start's with '_' and therefore will be private.
Finished, Bindings generated in /home/brett/GitHub/codelabs/ffigen_codelab/step_05/./lib/duktape_bindings_generated.dart
```

You will see different warnings on each operating system. You can ignore these for now, as Duktape 2.7.0 is known to compile with `clang` on Windows, Linux, and macOS. 

### **Configuring CMake**

[CMake](https://cmake.org/) is a build system generation system. This plugin uses CMake to generate the build system for Android, Windows, and Linux to include Duktape into the generated Flutter binary. You need to modify the template generated CMake configuration file as follows. 

####  [src/CMakeLists.txt](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_05/src/CMakeLists.txt)

```
cmake_minimum_required(VERSION 3.10)

project(ffigen_app_library VERSION 0.0.1 LANGUAGES C)

add_library(ffigen_app SHARED
  duktape.c                     # Modify
)

set_target_properties(ffigen_app PROPERTIES
  PUBLIC_HEADER duktape.h       # Modify
  PRIVATE_HEADER duk_config.h   # Add
  OUTPUT_NAME "ffigen_app"      # Add
)

# Add from here...
if (WIN32)
set_target_properties(ffigen_app PROPERTIES
  WINDOWS_EXPORT_ALL_SYMBOLS ON
)
endif (WIN32)
# ... to here.

target_compile_definitions(ffigen_app PUBLIC DART_SHARED_LIB)
```

The CMake configuration adds the source files, and more importantly, modifies the default behavior of the generated library file on Windows to export all of the C symbols by default. This is a CMake work around to help port Unix-style libraries, which Duktape is, to the world of Windows.

Replace the contents of the `lib/ffigen_app.dart` with the following.

####  [lib/ffigen_app.dart](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_05/lib/ffigen_app.dart)

```
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart' as ffi;

import 'duktape_bindings_generated.dart';

const String _libName = 'ffigen_app';

final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

final DuktapeBindings _bindings = DuktapeBindings(_dylib);

class Duktape {
  Duktape() {
    ctx =
        _bindings.duk_create_heap(nullptr, nullptr, nullptr, nullptr, nullptr);
  }

  void evalString(String jsCode) {
    var nativeUtf8 = jsCode.toNativeUtf8();
    _bindings.duk_eval_raw(
        ctx,
        nativeUtf8.cast<Char>(),
        0,
        0 |
            DUK_COMPILE_EVAL |
            DUK_COMPILE_SAFE |
            DUK_COMPILE_NOSOURCE |
            DUK_COMPILE_STRLEN |
            DUK_COMPILE_NOFILENAME);
    ffi.malloc.free(nativeUtf8);
  }

  int getInt(int index) {
    return _bindings.duk_get_int(ctx, index);
  }

  void dispose() {
    _bindings.duk_destroy_heap(ctx);
    ctx = nullptr;
  }

  late Pointer<duk_hthread> ctx;
}
```

This file is responsible for loading the dynamic link library file (`.so` for Linux and Android, `.dll` for Windows) and for providing a wrapper that exposes a more Dart idiomatic interface to the underlying C code. 

Replace the contents of the example's `main.dart` with the following.

####  [example/lib/main.dart](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_05/example/lib/main.dart)

```
import 'package:ffigen_app/ffigen_app.dart';
import 'package:flutter/material.dart';

const String jsCode = '1+2';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Duktape duktape;
  String output = '';

  @override
  void initState() {
    super.initState();
    duktape = Duktape();
    setState(() {
      output = 'Initialized Duktape';
    });
  }

  @override
  void dispose() {
    duktape.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Duktape Test'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  output,
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                ElevatedButton(
                  child: const Text('Run JavaScript'),
                  onPressed: () {
                    duktape.evalString(jsCode);
                    setState(() {
                      output = '$jsCode => ${duktape.getInt(-1)}';
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

You can now run the example app again using:

```console
$ cd example
$ flutter run
```

You should see the app running like so:

| <img style="width: 298.00px" src="img/5a25735273308da.png"> | <img style="width: 298.00px" src="img/69890b57ec80f10f.png"> |
| --- | --- |

These two screenshots show the before and after of pressing the **Run JavaScript** button. This demonstrates executing JavaScript code from Dart and showing the result on screen. 

### **Android**

Android is a Linux, kernel-based OS and is somewhat similar to desktop Linux distributions. The CMake build system can hide most of the differences between the two platforms. To build and run on Android, make sure the Android emulator is running (or the Android device is connected). Run the app. For example:

```console
$ cd example
$ flutter run -d emulator-5554
```

You should now see the example app running on Android:

| <img style="width: 298.00px" src="img/c6e427c72bafb153.png"> | <img style="width: 298.00px" src="img/63d81db3d19d27e2.png"> |
| --- | --- |


## Using Duktape on macOS and iOS



It's now time to get your plugin working on macOS and iOS, two closely related operating systems. Start with macOS. While CMake supports macOS and iOS, you won't reuse the work you did for Linux & Android, as Flutter on macOS and iOS uses CocoaPods for importing libraries.

### **Cleaning Up**

In the previous step you built a working application for Android, Windows, and Linux. However, there are a couple of files left over from the original template that you now need to clean up. Remove them now as follows.

```console
$ rm src/ffigen_app.c
$ rm src/ffigen_app.h
$ rm ios/Classes/ffigen_app.c
$ rm macos/Classes/ffigen_app.c
```

### **macOS**

Flutter on the macOS platform uses CocoaPods to import C and C++ code. This means that this package needs to be integrated into the CocoaPods build infrastructure. To enable re-use of the C code you have already configured to build with CMake in the previous step, you will need to add a single forwarding file in the macOS platform runner.

####  [macos/Classes/duktape.c](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_06/macos/Classes/duktape.c)

```
#include "../../src/duktape.c"
```

This file uses the power of the C preprocessor to include the source code from the native source code you set up in the previous step. See  [macos/ffigen_app.podspec](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_06/macos/ffigen_app.podspec) for more detail on how this works.

Running this application now follows the same pattern you've seen on Windows and Linux.

```console
$ cd example
$ flutter run -d macos
```

| <img style="width: 298.00px" src="img/5afdf9462f1aa9b0.png"> | <img style="width: 298.00px" src="img/6525bf15f3060c96.png"> |
| --- | --- |

### **iOS**

Similar to the macOS setup, iOS requires a single forwarding C file added as well.

####  [ios/Classes/duktape.c](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_06/ios/Classes/duktape.c)

```
#include "../../src/duktape.c"
```

With this single file, your plugin is now also configured to run on iOS. Run it as usual.

```console
$ flutter run -d iPhone
```

| <img style="width: 298.00px" src="img/906efe2e0940db5e.png"> | <img style="width: 298.00px" src="img/2ae5022aea3dcc51.png"> |
| --- | --- |

Congratulations! You have successfully integrated native code on five platforms. This is grounds for a celebration! Maybe even a more functional user interface, which you'll build in the next step.


## Implement the Read Eval Print Loop



Interacting with a programming language is a lot more fun in a quick interactive environment. The original implementation of such an environment was LISP's Read Eval Print Loop (REPL). You are going to implement something similar with Duktape in this step.

### **Making things production ready**

The current code that interacts with the Duktape C library assumes nothing can go wrong. Oh, and it doesn't load the Duktape dynamic link libraries when under test. To make this integration production ready, you need to make a few changes to `lib/ffigen_app.dart`.

####  [lib/ffigen_app.dart](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_07/lib/ffigen_app.dart)

```
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart' as ffi;
import 'package:path/path.dart' as p;             // Add this import

import 'duktape_bindings_generated.dart';

const String _libName = 'ffigen_app';

final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    // Add from here...
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return DynamicLibrary.open('build/macos/Build/Products/Debug'
          '/$_libName/$_libName.framework/$_libName');
    }
    // ...to here.
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    // Add from here...
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return DynamicLibrary.open(
          'build/linux/x64/debug/bundle/lib/lib$_libName.so');
    }
    // ...to here.
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    // Add from here...
    if (Platform.environment.containsKey('FLUTTER_TEST')) {
      return DynamicLibrary.open(p.canonicalize(
          p.join(r'build\windows\runner\Debug', '$_libName.dll')));
    }
    // ...to here.
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

final DuktapeBindings _bindings = DuktapeBindings(_dylib);

class Duktape {
  Duktape() {
    ctx =
        _bindings.duk_create_heap(nullptr, nullptr, nullptr, nullptr, nullptr);
  }

  // Modify this function
  String evalString(String jsCode) {
    var nativeUtf8 = jsCode.toNativeUtf8();
    final evalResult = _bindings.duk_eval_raw(
        ctx,
        nativeUtf8.cast<Char>(),
        0,
        0 |
            DUK_COMPILE_EVAL |
            DUK_COMPILE_SAFE |
            DUK_COMPILE_NOSOURCE |
            DUK_COMPILE_STRLEN |
            DUK_COMPILE_NOFILENAME);
    ffi.malloc.free(nativeUtf8);

    if (evalResult != 0) {
      throw _retrieveTopOfStackAsString();
    }

    return _retrieveTopOfStackAsString();
  }

  // Add this function
  String _retrieveTopOfStackAsString() {
    Pointer<Size> outLengthPtr = ffi.calloc<Size>();
    final errorStrPtr = _bindings.duk_safe_to_lstring(ctx, -1, outLengthPtr);
    final returnVal =
        errorStrPtr.cast<ffi.Utf8>().toDartString(length: outLengthPtr.value);
    ffi.calloc.free(outLengthPtr);
    return returnVal;
  }

  void dispose() {
    _bindings.duk_destroy_heap(ctx);
    ctx = nullptr;
  }

  late Pointer<duk_hthread> ctx;
}
```

The code to load the dynamic link library has been extended to handle the case where the plugin is being used in a test runner. This enables an integration test to be written that exercises this API as a Flutter test. The code to evaluate a string of JavaScript code has been extended to correctly handle error conditions, for example incomplete or incorrect code. This additional code shows how to handle situations where strings are returned as byte arrays and need to be converted into Dart strings.

### **Adding packages**

In creating a REPL, you'll display an interaction between the user and the Duktape JavaScript engine. The user enters lines of code, and Duktape responds with either the result of the computation, or an exception. You'll use  [`freezed`](https://pub.dev/packages/freezed) to reduce the amount of boilerplate code you need to write. You'll also use  [`google_fonts`](https://pub.dev/packages/google_fonts) to make the displayed content a bit more on theme, and  [`flutter_riverpod`](https://pub.dev/packages/flutter_riverpod) for state management.

Add the required dependencies to the example app:

```console
$ cd example
$ flutter pub add flutter_riverpod freezed_annotation google_fonts
$ flutter pub add -d build_runner freezed
```

Next, create a file to record the REPL interaction:

####  [example/lib/duktape_message.dart](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_07/example/lib/duktape_message.dart)

```
import 'package:freezed_annotation/freezed_annotation.dart';

part 'duktape_message.freezed.dart';

@freezed
class DuktapeMessage with _$DuktapeMessage {
  factory DuktapeMessage.evaluate(String code) = DuktapeMessageCode;
  factory DuktapeMessage.response(String result) = DuktapeMessageResponse;
  factory DuktapeMessage.error(String log) = DuktapeMessageError;
}
```

This class uses  [`freezed`'s union type feature](https://pub.dev/packages/freezed#union-types-and-sealed-classes) to enable easy expression of the shape of each line displayed in the REPL as one of three types. At this point, your code probably is showing some form of error on this code, as there is additional code that needs to be generated. Do that now as follows.

```console
$ flutter pub run build_runner build
```

This generates the `example/lib/duktape_message.freezed.dart` file, which the code you just typed relies upon.

Next, you'll need to make a pair of modifications to the macOS configuration files to enable `google_fonts` to make network requests for font data. 

####  [example/macos/Runner/DebugProfile.entitlements](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_07/example/macos/Runner/DebugProfile.entitlements)

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
        <!-- Add from here... -->
        <key>com.apple.security.network.client</key>
        <true/>
        <!-- ...to here -->
</dict>
</plist>
```

####  [example/macos/Runner/Release.entitlements](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_07/example/macos/Runner/Release.entitlements)

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>com.apple.security.app-sandbox</key>
        <true/>
        <!-- Add from here... -->
        <key>com.apple.security.network.client</key>
        <true/>
        <!-- ...to here -->
</dict>
</plist>
```

### **Building the REPL**

Now that you have updated the integration layer to handle errors, and you have built a data representation for the interaction, it's time to build the example app's user interface.

####  [example/lib/main.dart](https://github.com/flutter/codelabs/blob/main/ffigen_codelab/step_07/example/lib/main.dart)

```
import 'package:ffigen_app/ffigen_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'duktape_message.dart';

void main() {
  runApp(const ProviderScope(child: DuktapeApp()));
}

final duktapeMessagesProvider =
    StateNotifierProvider<DuktapeMessageNotifier, List<DuktapeMessage>>((ref) {
  return DuktapeMessageNotifier(messages: <DuktapeMessage>[]);
});

class DuktapeMessageNotifier extends StateNotifier<List<DuktapeMessage>> {
  DuktapeMessageNotifier({required List<DuktapeMessage> messages})
      : duktape = Duktape(),
        super(messages);
  final Duktape duktape;

  void eval(String code) {
    state = [
      DuktapeMessage.evaluate(code),
      ...state,
    ];
    try {
      final response = duktape.evalString(code);
      state = [
        DuktapeMessage.response(response),
        ...state,
      ];
    } catch (e) {
      state = [
        DuktapeMessage.error('$e'),
        ...state,
      ];
    }
  }
}

class DuktapeApp extends StatelessWidget {
  const DuktapeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Duktape App',
      home: DuktapeRepl(),
    );
  }
}

class DuktapeRepl extends ConsumerStatefulWidget {
  const DuktapeRepl({
    super.key,
  });

  @override
  ConsumerState<DuktapeRepl> createState() => _DuktapeReplState();
}

class _DuktapeReplState extends ConsumerState<DuktapeRepl> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  var _isComposing = false;

  void _handleSubmitted(String text) {
    _controller.clear();
    setState(() {
      _isComposing = false;
    });
    setState(() {
      ref.read(duktapeMessagesProvider.notifier).eval(text);
    });
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(duktapeMessagesProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Duktape REPL'),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
      ),
      body: Column(
        children: [
          Flexible(
            child: Ink(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: SafeArea(
                bottom: false,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  reverse: true,
                  itemBuilder: (context, idx) => messages[idx].when(
                    evaluate: (str) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '> $str',
                        style: GoogleFonts.firaCode(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                    response: (str) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '= $str',
                        style: GoogleFonts.firaCode(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                    error: (str) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        str,
                        style: GoogleFonts.firaCode(
                          textStyle: Theme.of(context).textTheme.titleSmall,
                          color: Colors.red[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  itemCount: messages.length,
                ),
              ),
            ),
          ),
          const Divider(height: 1.0),
          SafeArea(
            top: false,
            child: Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: _buildTextComposer(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text('>', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(width: 4),
            Flexible(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
                onSubmitted: _isComposing ? _handleSubmitted : null,
                focusNode: _focusNode,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: _isComposing
                    ? () => _handleSubmitted(_controller.text)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

There is a lot going on in this code, but it's beyond the scope of this codelab to explain it all. I suggest you run the code, and then make modifications to the code, after reviewing the appropriate documentation. 

```console
$ cd example
$ flutter run
```

| <img style="width: 298.00px" src="img/9c896d15917e944a.png"> | <img style="width: 298.00px" src="img/de64c8c2758a9fd6.png"> |
| --- | --- |
| <img style="width: 298.00px" src="img/ef75ac0035b9c437.png"> | <img style="width: 298.00px" src="img/52cd0de9c44830a2.png"> |


## Congratulations



Congratulations! You have successfully created a Flutter FFI-based plugin for Windows, macOS, Linux, Android, and iOS! 

After you create a plugin, you might want to share it online so that others can use it. You can find the full documentation on publishing your plugin to  [pub.dev](https://pub.dev) in  [Developing plugin packages](https://docs.flutter.dev/development/packages-and-plugins/developing-packages). 


