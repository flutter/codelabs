---
id: codelabs/flutter-cupertino
summary: In this codelab, you'll learn how to build an iOS style app with three tabs  using the Cupertino widget library. You'll also learn one approach to managing state across the screens.
status: [published]
authors: Shams Zakhour  (shaza@), code author: Brett Morgan (brettmorgan@)
categories: flutter
tags: io2019,kiosk,none,tag-flutter,web
feedback_link: https://github.com/flutter/website/issues
source: 1CdlksSvxBE2XRBVZtOKpfMUO68OLJDLdQc7mxN_zABg
duration: 51

---

# Building a Cupertino app with Flutter

[Codelab Feedback](https://github.com/flutter/website/issues)


## Introduction
Duration: 01:00


Welcome to the Flutter Cupertino codelab! 

In this codelab, you'll create a Cupertino (iOS-style) app using Flutter. The Flutter SDK ships with two styled widget libraries (in addition to the basic  [widget library](https://docs.flutter.dev/flutter/widgets/widgets-library.html)): 

*  [Material widgets](https://docs.flutter.dev/flutter/material/material-library.html) implements the Material design language for iOS, Android, web, and desktop.
*  [Cupertino widgets](https://docs.flutter.dev/flutter/cupertino/cupertino-library.html) implements the current iOS design language based on Apple's Human Interface Guidelines.

Why write a Cupertino app? The Material design language was created for any platform, not just Android. When you write a Material app in Flutter, it has the Material look and feel on all devices, even iOS. If you want your app to *look* like a standard iOS-styled app, then you would use the Cupertino library.

You can technically run a Cupertino app on either Android or iOS, but (due to licensing issues) Cupertino won't have the correct fonts on Android. For this reason, use an iOS-specific device when writing a Cupertino app.

You'll implement a Cupertino style shopping app containing three tabs: one for the product list, one for a product search, and one for the shopping cart.

<img src="img/73ceba4ba493e286.png" alt="73ceba4ba493e286.png"  width="300.50" /> <img src="img/90a1463f8bacfbeb.png" alt="90a1463f8bacfbeb.png"  width="300.38" />

<img src="img/4d6a89547a7ba78d.png" alt="4d6a89547a7ba78d.png"  width="295.50" />

#### **What you'll learn in this codelab**

* How to build a Flutter app with an iOS style look and feel.
* How to create multiple tabs and navigate between them.
* How to use the `provider` package to manage state between screens.

<form>
<name>What would you like to learn from this codelab?</name>
<input value="I&#39;m new to the topic, and I want a good overview.">
<input value="I know something about this topic, but I want a refresher.">
<input value="I&#39;m looking for example code to use in my project.">
<input value="I&#39;m looking for an explanation of something specific.">
</form>


## Set up your Flutter environment
Duration: 10:00


You need two pieces of software to complete this lab: the  [Flutter SDK](https://flutter.dev/get-started/install/) and  [an editor](https://flutter.dev/get-started/editor/). You can use your preferred editor, such as Android Studio or IntelliJ with the Flutter and Dart plugins installed, or Visual Studio Code with the  [Dart Code and Flutter extensions](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code).

You can run this codelab using one of the following devices:

* A physical  [iOS](https://flutter.dev/setup-macos/#deploy-to-ios-devices) device connected to your computer.
* The [ iOS simulator](https://flutter.dev/setup-macos/#set-up-the-ios-simulator).

You'll also need:

* A Mac configured with Xcode.


## Create the initial Cupertino app
Duration: 05:00


Create the initial app using a  `CupertinoPageScaffold`.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />Create a Flutter project called **cupertino_store** as follows.

```console
$ flutter create cupertino_store --platforms=ios
$ cd cupertino_store
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Replace the contents of `lib/main.dart`.
Delete all of the code from `lib/main.dart`, which creates a Material-themed button counting app. Replace with the following code, which initializes a Cupertino app.

####  [**lib/main.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/lib/main.dart)

```
import 'package:flutter/cupertino.dart';

import 'app.dart';

void main() {
  return runApp(const CupertinoStoreApp());
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* Import the Cupertino package. This makes all the Cupertino widgets and constants available to your app.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Create `lib/styles.dart`.
Add a file to the `lib` directory called `styles.dart`.  The `Styles` class defines the text and color styling to customize the app. Add the following content to the file.

####  [**lib/styles.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/lib/styles.dart)

```
// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

abstract class Styles {
  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productRowItemPrice = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle deliveryTimeLabel = TextStyle(
    color: Color(0xFFC2C2C2),
    fontWeight: FontWeight.w300,
  );

  static const TextStyle deliveryTime = TextStyle(
    color: CupertinoColors.inactiveGray,
  );

  static const Color productRowDivider = Color(0xFFD9D9D9);

  static const Color scaffoldBackground = Color(0xfff0f0f0);

  static const Color searchBackground = Color(0xffe0e0e0);

  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1);

  static const Color searchIconColor = Color.fromRGBO(128, 128, 128, 1);
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* We can centralize style definitions in a way that is similar to how web developers centralize their style markup in CSS files by grouping all of our definitions in a single file. This gives us the easiest way to reuse and redefine styles across the whole app.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Create `lib/app.dart` and add the `CupertinoStoreApp` class.
Add the following `CupertinoStoreApp` class to `lib/app.dart`.

####  [**lib/app.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/lib/app.dart)

```
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CupertinoStoreApp extends StatelessWidget {
  const CupertinoStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoStoreHomePage(),
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* Import the  [services library](https://api.flutter.dev/flutter/services/services-library.html). This makes the platform services, like the clipboard and setting the device orientation, available to your app.
* Instantiates `CupertinoApp`, which provides theming, navigation, text direction, and other defaults required to create an app that an iOS user expects.
* Instantiates a `CupertinoStoreHomePage` as the homepage.
* The app is designed to only work vertically, so the device orientation is limited to portrait.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Add the `CupertinoStoreHomePage` class.
Add the following `CupertinoStoreHomePage` class to `lib/app.dart` to create the layout for the homepage.

####  [**lib/app.dart**](https://github.com/googlecodelabs/flutter-cupertino-store/blob/master/step-00/lib/app.dart)

```
class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Store'),
      ),
      child: SizedBox(),
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* The Cupertino package provides two types of page scaffolds. `CupertinoPageScaffold` supports single pages and accepts a Cupertino-style navigation bar, background color, and holds the widget tree for the page. You'll learn about the second type of scaffold in the next step.
* This page has a title, and the widget tree contains a single empty container.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Update the Flutter package dependencies.
Add Flutter package dependencies by running the following command at the top level of your project.

```console
$ flutter pub add intl provider shrine_images
Resolving dependencies...
  collection 1.17.0 (1.17.1 available)
+ intl 0.18.0
  js 0.6.5 (0.6.7 available)
  matcher 0.12.13 (0.12.14 available)
  meta 1.8.0 (1.9.0 available)
+ nested 1.0.0
  path 1.8.2 (1.8.3 available)
+ provider 6.0.5
+ shrine_images 2.0.2
  test_api 0.4.16 (0.4.18 available)
Changed 4 dependencies!
```

The  [`intl`](https://pub.dev/packages/intl) package will be used in the last step for formatting, the  [`provider`](https://pub.dev/packages/provider) package will be used for state management, and  the  [`shrine_images`](https://pub.dev/packages/shrine_images) package will be used for image assets. To access the images, add the following lines to the flutter section of your `pubspec.yaml` file.

####  [pubspec.yaml](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/pubspec.yaml)

```
flutter:
  assets:
    - packages/shrine_images/0-0.jpg
    - packages/shrine_images/1-0.jpg
    - packages/shrine_images/2-0.jpg
    - packages/shrine_images/3-0.jpg
    - packages/shrine_images/4-0.jpg
    - packages/shrine_images/5-0.jpg
    - packages/shrine_images/6-0.jpg
    - packages/shrine_images/7-0.jpg
    - packages/shrine_images/8-0.jpg
    - packages/shrine_images/9-0.jpg
    - packages/shrine_images/10-0.jpg
    - packages/shrine_images/11-0.jpg
    - packages/shrine_images/12-0.jpg
    - packages/shrine_images/13-0.jpg
    - packages/shrine_images/14-0.jpg
    - packages/shrine_images/15-0.jpg
    - packages/shrine_images/16-0.jpg
    - packages/shrine_images/17-0.jpg
    - packages/shrine_images/18-0.jpg
    - packages/shrine_images/19-0.jpg
    - packages/shrine_images/20-0.jpg
    - packages/shrine_images/21-0.jpg
    - packages/shrine_images/22-0.jpg
    - packages/shrine_images/23-0.jpg
    - packages/shrine_images/24-0.jpg
    - packages/shrine_images/25-0.jpg
    - packages/shrine_images/26-0.jpg
    - packages/shrine_images/27-0.jpg
    - packages/shrine_images/28-0.jpg
    - packages/shrine_images/29-0.jpg
    - packages/shrine_images/30-0.jpg
    - packages/shrine_images/31-0.jpg
    - packages/shrine_images/32-0.jpg
    - packages/shrine_images/33-0.jpg
    - packages/shrine_images/34-0.jpg
    - packages/shrine_images/35-0.jpg
    - packages/shrine_images/36-0.jpg
    - packages/shrine_images/37-0.jpg
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* This pulls in several packages, including  [shrine_images](https://pub.dev/packages/shrine_images), containing products for populating the store.
* The  [provider](https://pub.dev/packages/provider) package provides a simple way to manage state across screens.
* The  [intl](https://pub.dev/packages/intl) package provides internationalization and localization facilities.
* The  [cupertino_icons](https://pub.dev/packages/cupertino_icons) package contains icon assets for the Cupertino widgets.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />  [Run the app](https://docs.flutter.dev/get-started/test-drive).  You should see the following white screen containing the Cupertino navbar and a title:

<img src="img/6092315460670504.png" alt="6092315460670504.png"  width="292.93" />

**Problems?**

If your app is not running correctly, look for typos. If needed, use the code at the following links to get back on track.

*  [`pubspec.yaml`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/pubspec.yaml)
*  [`lib/app.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/lib/app.dart)
*  [`lib/main.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/lib/main.dart)
*  [`lib/styles.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_00/lib/styles.dart)


## Create structure for a 3-tab app
Duration: 05:00


The final app features 3 tabs:

* Product list
* Product search
* Shopping cart

In this step, you'll update the home page with three tabs using a `CupertinoTabScaffold`. You'll also add a data source that provides the list of items for sale, with photos and prices.

In the previous step, you created a `CupertinoStoreHomePage` class using a `CupertinoPageScaffold`. Use this scaffold for pages that have no tabs. The final app has three tabs, so swap out the `CupertinoPageScaffold` for a `CupertinoTabScaffold`.

Cupertino tab has a separate scaffold because on iOS, the bottom tab is commonly persistent above nested routes rather than inside pages. 

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Update `lib/app.dart`.
Replace the `CupertinoStoreHomePage` class with the following, which sets up a 3-tab scaffold:

####  [**lib/app.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/app.dart#L36)

```
class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: ProductListTab(),
              ),
            ),
          1 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: SearchTab(),
              ),
            ),
          2 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: ShoppingCartTab(),
              ),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* `CupertinoTabBar` requires at least two items, or you will see errors at run-time.
* The `tabBuilder:` is responsible for making sure the specified tab is built. In this case, it calls a class constructor to set up each respective tab, wrapping all three in `CupertinoTabView` and `CupertinoPageScaffold`.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Add stub classes for the content of the new tabs.
Create a `lib/product_list_tab.dart` file for the first tab that compiles cleanly, but only displays a white screen. Use the following content:

####  [**lib/product_list_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/product_list_tab.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';

class ProductListTab extends StatelessWidget {
  const ProductListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Cupertino Store'),
            ),
          ],
        );
      },
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* The product list tab is a stateless widget.
* The `Consumer`, from the `provider` package, assists with state management. More about the model later.
* There are 2 variants of the navigation bar on iOS. The common short static type seen since iOS 1, and the tall scrollable large title type introduced in iOS 11. This page implements the latter inside a `CustomScrollView` with a `CupertinoSliverNavigationBar` widget.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Add a search page stub.
Create a `lib/search_tab.dart` file that compiles cleanly, but only displays a white screen. Use the following content:

####  [**lib/search_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/search_tab.dart#L15)

```
import 'package:flutter/cupertino.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() {
    return _SearchTabState();
  }
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Search'),
        ),
      ],
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* The search tab is a stateful widget because, as the user performs searches, the list of results changes.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Add a shopping cart page stub.
Create a `lib/shopping_cart_tab.dart` file that compiles cleanly, but only displays a white screen. Use the following content:

####  [**lib/shopping_cart_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/shopping_cart_tab.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';

class ShoppingCartTab extends StatefulWidget {
  const ShoppingCartTab({super.key});

  @override
  State<ShoppingCartTab> createState() {
    return _ShoppingCartTabState();
  }
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Shopping Cart'),
            ),
          ],
        );
      },
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* The shopping cart tab is a stateful widget because it maintains the list of purchases and the customer's info.
* This page also uses a `CustomScrollView`.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Update lib/app.dart.
Update the import statements in `lib/app.dart` to pull in the new tab widgets:

####  [**lib/app.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/app.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'product_list_tab.dart';   // NEW
import 'search_tab.dart';         // NEW
import 'shopping_cart_tab.dart';  // NEW
```

In the second part of this step, continued on the next page, you'll add code for managing and sharing state across the tabs.


## Add state management
Duration: 05:00


The app has some common data that needs to be shared across multiple screens, so you need a simple way to flow the data to each of the objects that need it. The  [`provider`](https://pub.dev/packages/provider) package provides an easy way to do that. In `provider`, you define the data model and then use `ChangeNotifierProvider` to provide your data model down the tree.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Create the data model classes.
Create a `model` directory under `lib`. Add a `lib/model/product.dart` file that defines the product data coming from the data source:

####  [**lib/model/product.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/model/product.dart#L15)

```
enum Category {
  all,
  accessories,
  clothing,
  home,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.price,
  });

  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => '$name (id=$id)';
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **Observations**

* Each instance of the Product class describes a product for sale.

The `ProductsRepository` class contains the full list of products for sale, along with their price, title text, and a category. Our app won't do anything with the `isFeatured` property. The class also includes a `loadProducts()` method that returns either all products, or all products in a given category.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Create the products repository.
Create a `lib/model/products_repository.dart` file. This file contains all products for sale. Each product belongs to a category. Add the following contents to the file.

####  [**lib/model/products_repository.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/model/products_repository.dart#L15)

```
import 'product.dart';

class ProductsRepository {
  static const _allProducts = <Product>[
    Product(
      category: Category.accessories,
      id: 0,
      isFeatured: true,
      name: 'Vagabond sack',
      price: 120,
    ),
    Product(
      category: Category.accessories,
      id: 1,
      isFeatured: true,
      name: 'Stella sunglasses',
      price: 58,
    ),
    Product(
      category: Category.accessories,
      id: 2,
      isFeatured: false,
      name: 'Whitney belt',
      price: 35,
    ),
    Product(
      category: Category.accessories,
      id: 3,
      isFeatured: true,
      name: 'Garden strand',
      price: 98,
    ),
    Product(
      category: Category.accessories,
      id: 4,
      isFeatured: false,
      name: 'Strut earrings',
      price: 34,
    ),
    Product(
      category: Category.accessories,
      id: 5,
      isFeatured: false,
      name: 'Varsity socks',
      price: 12,
    ),
    Product(
      category: Category.accessories,
      id: 6,
      isFeatured: false,
      name: 'Weave keyring',
      price: 16,
    ),
    Product(
      category: Category.accessories,
      id: 7,
      isFeatured: true,
      name: 'Gatsby hat',
      price: 40,
    ),
    Product(
      category: Category.accessories,
      id: 8,
      isFeatured: true,
      name: 'Shrug bag',
      price: 198,
    ),
    Product(
      category: Category.home,
      id: 9,
      isFeatured: true,
      name: 'Gilt desk trio',
      price: 58,
    ),
    Product(
      category: Category.home,
      id: 10,
      isFeatured: false,
      name: 'Copper wire rack',
      price: 18,
    ),
    Product(
      category: Category.home,
      id: 11,
      isFeatured: false,
      name: 'Soothe ceramic set',
      price: 28,
    ),
    Product(
      category: Category.home,
      id: 12,
      isFeatured: false,
      name: 'Hurrahs tea set',
      price: 34,
    ),
    Product(
      category: Category.home,
      id: 13,
      isFeatured: true,
      name: 'Blue stone mug',
      price: 18,
    ),
    Product(
      category: Category.home,
      id: 14,
      isFeatured: true,
      name: 'Rainwater tray',
      price: 27,
    ),
    Product(
      category: Category.home,
      id: 15,
      isFeatured: true,
      name: 'Chambray napkins',
      price: 16,
    ),
    Product(
      category: Category.home,
      id: 16,
      isFeatured: true,
      name: 'Succulent planters',
      price: 16,
    ),
    Product(
      category: Category.home,
      id: 17,
      isFeatured: false,
      name: 'Quartet table',
      price: 175,
    ),
    Product(
      category: Category.home,
      id: 18,
      isFeatured: true,
      name: 'Kitchen quattro',
      price: 129,
    ),
    Product(
      category: Category.clothing,
      id: 19,
      isFeatured: false,
      name: 'Clay sweater',
      price: 48,
    ),
    Product(
      category: Category.clothing,
      id: 20,
      isFeatured: false,
      name: 'Sea tunic',
      price: 45,
    ),
    Product(
      category: Category.clothing,
      id: 21,
      isFeatured: false,
      name: 'Plaster tunic',
      price: 38,
    ),
    Product(
      category: Category.clothing,
      id: 22,
      isFeatured: false,
      name: 'White pinstripe shirt',
      price: 70,
    ),
    Product(
      category: Category.clothing,
      id: 23,
      isFeatured: false,
      name: 'Chambray shirt',
      price: 70,
    ),
    Product(
      category: Category.clothing,
      id: 24,
      isFeatured: true,
      name: 'Seabreeze sweater',
      price: 60,
    ),
    Product(
      category: Category.clothing,
      id: 25,
      isFeatured: false,
      name: 'Gentry jacket',
      price: 178,
    ),
    Product(
      category: Category.clothing,
      id: 26,
      isFeatured: false,
      name: 'Navy trousers',
      price: 74,
    ),
    Product(
      category: Category.clothing,
      id: 27,
      isFeatured: true,
      name: 'Walter henley (white)',
      price: 38,
    ),
    Product(
      category: Category.clothing,
      id: 28,
      isFeatured: true,
      name: 'Surf and perf shirt',
      price: 48,
    ),
    Product(
      category: Category.clothing,
      id: 29,
      isFeatured: true,
      name: 'Ginger scarf',
      price: 98,
    ),
    Product(
      category: Category.clothing,
      id: 30,
      isFeatured: true,
      name: 'Ramona crossover',
      price: 68,
    ),
    Product(
      category: Category.clothing,
      id: 31,
      isFeatured: false,
      name: 'Chambray shirt',
      price: 38,
    ),
    Product(
      category: Category.clothing,
      id: 32,
      isFeatured: false,
      name: 'Classic white collar',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 33,
      isFeatured: true,
      name: 'Cerise scallop tee',
      price: 42,
    ),
    Product(
      category: Category.clothing,
      id: 34,
      isFeatured: false,
      name: 'Shoulder rolls tee',
      price: 27,
    ),
    Product(
      category: Category.clothing,
      id: 35,
      isFeatured: false,
      name: 'Grey slouch tank',
      price: 24,
    ),
    Product(
      category: Category.clothing,
      id: 36,
      isFeatured: false,
      name: 'Sunshirt dress',
      price: 58,
    ),
    Product(
      category: Category.clothing,
      id: 37,
      isFeatured: true,
      name: 'Fine lines tee',
      price: 58,
    ),
  ];

  static List<Product> loadProducts(Category category) => switch (category) {
        Category.all => _allProducts,
        _ => _allProducts.where((p) => p.category == category).toList(),
      };
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* In this case we are making a mock product database for ease of development, but this should be served to the app as an API. An easy way to do this that deals with the partially disconnected reality of mobile phones is  [Cloud Firestore](https://firebase.google.com/docs/firestore/).

You are now ready to define the model. Create a `lib/model/app_state_model.dart` file. In the `AppStateModel` class, provide methods for accessing data from the model. For example, add a method for accessing the shopping cart total, another for a list of selected products to purchase, another for the shipping cost, and so on.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Create the model class.
Create a `lib/model/app_state_model.dart` file. Add the following content to the file.

####  [**lib/model/app_state_model.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/model/app_state_model.dart#L15)

```
import 'package:flutter/foundation.dart' as foundation;

import 'product.dart';
import 'products_repository.dart';

double _salesTaxRate = 0.06;
double _shippingCostPerItem = 7;

class AppStateModel extends foundation.ChangeNotifier {
  // All the available products.
  List<Product> _availableProducts = [];

  // The currently selected category of products.
  Category _selectedCategory = Category.all;

  // The IDs and quantities of products currently in the cart.
  final _productsInCart = <int, int>{};

  Map<int, int> get productsInCart {
    return Map.from(_productsInCart);
  }

  // Total number of items in the cart.
  int get totalCartQuantity {
    return _productsInCart.values.fold(0, (accumulator, value) {
      return accumulator + value;
    });
  }

  Category get selectedCategory {
    return _selectedCategory;
  }

  // Totaled prices of the items in the cart.
  double get subtotalCost {
    return _productsInCart.keys.map((id) {
      // Extended price for product line
      return getProductById(id).price * _productsInCart[id]!;
    }).fold(0, (accumulator, extendedPrice) {
      return accumulator + extendedPrice;
    });
  }

  // Total shipping cost for the items in the cart.
  double get shippingCost {
    return _shippingCostPerItem *
        _productsInCart.values.fold(0.0, (accumulator, itemCount) {
          return accumulator + itemCount;
        });
  }

  // Sales tax for the items in the cart
  double get tax {
    return subtotalCost * _salesTaxRate;
  }

  // Total cost to order everything in the cart.
  double get totalCost {
    return subtotalCost + shippingCost + tax;
  }

  // Returns a copy of the list of available products, filtered by category.
  List<Product> getProducts() => switch (_selectedCategory) {
        Category.all => List.from(_availableProducts),
        _ => _availableProducts
            .where((p) => p.category == _selectedCategory)
            .toList(),
      };

  // Search the product catalog
  List<Product> search(String searchTerms) {
    return getProducts().where((product) {
      return product.name.toLowerCase().contains(searchTerms.toLowerCase());
    }).toList();
  }

  // Adds a product to the cart.
  void addProductToCart(int productId) {
    if (!_productsInCart.containsKey(productId)) {
      _productsInCart[productId] = 1;
    } else {
      _productsInCart[productId] = _productsInCart[productId]! + 1;
    }

    notifyListeners();
  }

  // Removes an item from the cart.
  void removeItemFromCart(int productId) {
    if (_productsInCart.containsKey(productId)) {
      if (_productsInCart[productId] == 1) {
        _productsInCart.remove(productId);
      } else {
        _productsInCart[productId] = _productsInCart[productId]! - 1;
      }
    }

    notifyListeners();
  }

  // Returns the Product instance matching the provided id.
  Product getProductById(int id) {
    return _availableProducts.firstWhere((p) => p.id == id);
  }

  // Removes everything from the cart.
  void clearCart() {
    _productsInCart.clear();
    notifyListeners();
  }

  // Loads the list of available products from the repo.
  void loadProducts() {
    _availableProducts = ProductsRepository.loadProducts(Category.all);
    notifyListeners();
  }

  void setCategory(Category newCategory) {
    _selectedCategory = newCategory;
    notifyListeners();
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* Our `AppStateModel` shows a way of centralizing the state of the application, and making the state available throughout the whole application. In later steps we will use this state to drive our Search and Shopping Cart functionality.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Update `lib/main.dart`.
In the `main()`method, initialize the model. Add the lines marked with NEW.

####  [**lib/main.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/main.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';             // NEW

import 'app.dart';
import 'model/app_state_model.dart';                 // NEW

void main() {
 return runApp(
   ChangeNotifierProvider<AppStateModel>(            // NEW
     create: (_) => AppStateModel()..loadProducts(), // NEW
     child: const CupertinoStoreApp(),               // NEW
   ),
 );
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* We are wiring the `AppStateModel` at the top of the widget tree to make it available throughout the entire app.
* We are using  [`ChangeNotifierProvider`](https://pub.dev/documentation/provider/latest/provider/ChangeNotifierProvider-class.html) from the  [provider](https://pub.dev/packages/provider) package, which monitors AppStateModel for change notifications.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />  [Run the app](https://docs.flutter.dev/get-started/test-drive).  You should see the following white screen containing the Cupertino navbar, a title, and a drawer with 3 labeled icons representing the three tabs. You can switch between the tabs, but all three pages are currently blank.

<img src="img/8d12c79b5562317c.png" alt="8d12c79b5562317c.png"  width="319.35" />

**Problems?**

If your app is not running correctly, look for typos. If needed, use the code at the following links to get back on track.

*  [`lib/app.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/app.dart)
*  [`lib/main.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/main.dart)
*  [`lib/product_list_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/product_list_tab.dart)
*  [`lib/search_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/search_tab.dart)
*  [`lib/shopping_cart_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/shopping_cart_tab.dart)
*  [`lib/model/app_state_model.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/model/app_state_model.dart)
*  [`lib/model/product.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/model/product.dart)
*  [`lib/model/products_repository.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_01/lib/model/products_repository.dart)


## List products for sale
Duration: 05:00


In this step, display the products for sale in the product list tab.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Add `lib/product_row_item.dart` to display the products.
Create the `lib/product_row_item.dart file`, with the following content:

####  [**lib/product_row_item.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_02/lib/product_row_item.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';
import 'model/product.dart';
import 'styles.dart';

class ProductRowItem extends StatelessWidget {
  const ProductRowItem({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 0,
        top: 8,
        bottom: 8,
        right: 8,
      ),
      child: CupertinoListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            product.assetName,
            package: product.assetPackage,
            fit: BoxFit.cover,
            width: 68,
            height: 68,
          ),
        ),
        leadingSize: 68,
        title: Text(
          product.name,
          style: Styles.productRowItemName,
        ),
        subtitle: Text(
          '\$${product.price}',
          style: Styles.productRowItemPrice,
        ),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            final model = Provider.of<AppStateModel>(context, listen: false);
            model.addProductToCart(product.id);
          },
          child: const Icon(
            CupertinoIcons.plus_circled,
            semanticLabel: 'Add',
          ),
        ),
      ),
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

*  [`CupertinoSliverNavigationBar`](https://api.flutter.dev/flutter/cupertino/CupertinoSliverNavigationBar-class.html) is how we get iOS 11 style expanding titles in the navigation bar. This is important to make an iOS user feel at home in the app.
* There is a lot of complexity in this file, as we emulate the highly refined look and feel of iOS applications. Flutter's strength is that we can make these changes in an editor and see them change in near real time thanks to Stateful Hot Reload.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.82" /> In `lib/product_list_tab.dart`, import the `product_row_item.dart` file.

####  [**lib/product_list_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_02/lib/product_list_tab.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';
import 'product_row_item.dart';      // NEW
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.50" /> In the `build()` method for `ProductListTab`, get the product list and the number of products. Add the new lines indicated below:

```
class ProductListTab extends StatelessWidget {
  const ProductListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final products = model.getProducts();    // NEW
        return CustomScrollView(                 // MODIFY
          semanticChildCount: products.length,   // NEW
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(  // MODIFY
              largeTitle: Text('Cupertino Store'),
            ),
          ],
        );
      },
    );
  }
}
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="23.73" /> Also in the `build()` method, add a new sliver to the sliver widgets list to hold the product list. Add the new lines indicated below:

```
class ProductListTab extends StatelessWidget {
  const ProductListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final products = model.getProducts();
        return CustomScrollView(
          semanticChildCount: products.length,
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Cupertino Store'),
            ),
            SliverSafeArea(               // ADD from here...
              top: false,
              minimum: const EdgeInsets.only(top: 0),
              sliver: SliverToBoxAdapter(
                child: CupertinoListSection(
                  topMargin: 0,
                  children: [
                    for (var product in products)
                      ProductRowItem(
                        product: product,
                      )
                  ],
                ),
              ),
            ),                            // ...to here.
          ],
        );
      },
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* The notch is accounted for by the first sliver (the `CupertinoSliverNavigationBar`).
* The new sliver and the first sliver are siblings (not parent-child), so the first sliver has no way to communicate that it has already consumed the notch. Therefore the second sliver sets `SliverSafeArea`'s `top` property to `false` so that it ignores the notch.
* The `SliverSafeArea`'s `left` and `right` properties still default to `true` in case the phone is rotated, and it still accounts for the `bottom` so that the sliver can scroll past the bottom home bar to avoid obstruction when it's scrolled to the end.
* This logic is not specifically required here due to the app being restricted to portrait only, but including it means this code is safe to re-use in apps that handle horizontal presentation. 

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />  [Run the app](https://docs.flutter.dev/get-started/test-drive). In the product tab, you should see a list of products with images, prices, and a button with a plus sign that adds the product to the shopping cart. The button will be implemented later, in the step where you'll build out the shopping cart.

<img src="img/73ceba4ba493e286.png" alt="73ceba4ba493e286.png"  width="327.50" />

**Problems?**

If your app is not running correctly, look for typos. If needed, use the code at the following links to get back on track.

*  [`lib/product_list_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_02/lib/product_list_tab.dart)
*  [`lib/product_row_item.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_02/lib/product_row_item.dart)


## Add product search
Duration: 05:00


In this step, you'll build out the search tab and add the ability to search through the products.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Update the imports in `lib/search_tab.dart`.

Add imports for the classes that the search tab will use:

####  [**lib/search_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_03/lib/search_tab.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';         // NEW

import 'model/app_state_model.dart';             // NEW
import 'product_row_item.dart';                  // NEW
import 'search_bar.dart';                        // NEW
import 'styles.dart';                            // NEW
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Update the `build()` method in `_SearchTabState`.

Initialize the model and replace the `CustomScrollView` with individual components for searching and listing.

```
class _SearchTabState extends State<SearchTab> {
// ...

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateModel>(context);
    final results = model.search(_terms);

    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Styles.scaffoldBackground,
      ),
      child: SafeArea(
        child: Column(
          children: [
            _buildSearchBox(),
            Expanded(
              child: SingleChildScrollView(
                child: CupertinoListSection(
                  topMargin: 0,
                  children: [
                    for (var product in results)
                      ProductRowItem(
                        product: product,
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* We are re-creating an iOS style search experience, but we have a lot of latitude to customize the user experience.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Add supporting variables, functions, and methods to the `_SearchTabState` class.

These include `initState()`, `dispose()`, `_onTextChanged()`, and `_buildSearchBox()`, as shown below:

```
class _SearchTabState extends State<SearchTab> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  String _terms = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()..addListener(_onTextChanged);
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _terms = _controller.text;
    });
  }

  Widget _buildSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SearchBar(
        controller: _controller,
        focusNode: _focusNode,
      ),
    );
  }    // TO HERE

 @override
 Widget build(BuildContext context) {
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* `_SearchTabState` is where we keep state specific to searching. In this implementation we store what the search terms are, and we hook into the `AppStateModel` to fulfill the search capability. In the case where we implement an API back end, here is a good place to do network access for Search.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Add a `SearchBar` class.

Create a new file, `lib/search_bar.dart`. The `SearchBar` class handles the actual search in the product list. Seed the file with the following content:

####  [**lib/search_bar.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_03/lib/search_bar.dart#L5)

```
import 'package:flutter/cupertino.dart';
import 'styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    required this.controller,
    required this.focusNode,
    super.key,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Styles.searchBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 8,
        ),
        child: Row(
          children: [
            const Icon(
              CupertinoIcons.search,
              color: Styles.searchIconColor,
            ),
            Expanded(
              child: CupertinoTextField(
                controller: controller,
                focusNode: focusNode,
                style: Styles.searchText,
                cursorColor: Styles.searchCursorColor,
                decoration: null,
              ),
            ),
            GestureDetector(
              onTap: controller.clear,
              child: const Icon(
                CupertinoIcons.clear_thick_circled,
                color: Styles.searchIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* Search interfaces on iOS are interesting in that there is reasonably wide variation in implementations. Flutter gives you the ability to tune the layout and color of the implementation quickly and easily. 

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />  [Run the app](https://docs.flutter.dev/get-started/test-drive). Select the **search** tab and enter "shirt" into the text field. You should see a list of 5 products that contain "shirt" in the name.

<img src="img/90a1463f8bacfbeb.png" alt="90a1463f8bacfbeb.png"  width="349.91" />

**Problems?**

If your app is not running correctly, look for typos. If needed, use the code at the following links to get back on track.

*  [`lib/search_bar.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_03/lib/search_bar.dart)
*  [`lib/search_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_03/lib/search_tab.dart)


## Add customer info
Duration: 05:00


In the next three steps, you'll build out the shopping cart tab. In this first step, you'll add fields for capturing customer info.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Update the `lib/shopping_cart_tab.dart` file.

Add private methods for building the name, email, and location fields. Then add a `_buildSliverChildBuildDelegate()` method that builds out parts of the user interface.

####  [**lib/shopping_cart_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_04/lib/shopping_cart_tab.dart)

```
class _ShoppingCartTabState extends State<ShoppingCartTab> {
  String? name;    // ADD FROM HERE
  String? email;
  String? location;
  String? pin;
  DateTime dateTime = DateTime.now();

  Widget _buildNameField() {
    return CupertinoTextField(
      prefix: const Icon(
        CupertinoIcons.person_solid,
        color: CupertinoColors.lightBackgroundGray,
        size: 28,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      clearButtonMode: OverlayVisibilityMode.editing,
      textCapitalization: TextCapitalization.words,
      autocorrect: false,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0,
            color: CupertinoColors.inactiveGray,
          ),
        ),
      ),
      placeholder: 'Name',
      onChanged: (newName) {
        setState(() {
          name = newName;
        });
      },
    );
  }

  Widget _buildEmailField() {
    return const CupertinoTextField(
      prefix: Icon(
        CupertinoIcons.mail_solid,
        color: CupertinoColors.lightBackgroundGray,
        size: 28,
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      clearButtonMode: OverlayVisibilityMode.editing,
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0,
            color: CupertinoColors.inactiveGray,
          ),
        ),
      ),
      placeholder: 'Email',
    );
  }

  Widget _buildLocationField() {
    return const CupertinoTextField(
      prefix: Icon(
        CupertinoIcons.location_solid,
        color: CupertinoColors.lightBackgroundGray,
        size: 28,
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      clearButtonMode: OverlayVisibilityMode.editing,
      textCapitalization: TextCapitalization.words,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0,
            color: CupertinoColors.inactiveGray,
          ),
        ),
      ),
      placeholder: 'Location',
    );
  }

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _buildNameField(),
            );
          case 1:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _buildEmailField(),
            );
          case 2:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _buildLocationField(),
            );
          default:
          // Do nothing. For now.
        }
        return null;
      },
    );
  }    // TO HERE
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* A key way that Flutter differs from more traditional User Interface design environments is that you have the full power of a proper programming language to introduce abstractions. You can add functions to group functionality, or turn it into a stand alone Widget if you want easy re-use. As the programmer, the choice in how to lay out functionality is yours to make.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Update the `build()` method in the `_ShoppingCartTabState` class.

Add a `SliverSafeArea` that calls the `_buildSliverChildBuilderDelegate` method:

```
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return CustomScrollView(
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Shopping Cart'),
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 4),
              sliver: SliverList(
                delegate: _buildSliverChildBuilderDelegate(model),
              ),
            )
          ],
        );
      },
    );
  }
}
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* With all of the user interface defined in builder functions, the build method can be quite small. 

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />  [Run the app](https://docs.flutter.dev/get-started/test-drive). Select the **shopping cart** tab. You should see three text fields for gathering customer information:

<img src="img/8561ac21be84327f.png" alt="8561ac21be84327f.png"  width="323.35" />

**Problems?**

If your app is not running correctly, look for typos. If needed, use the code at the following link to get back on track.

*  [`lib/shopping_cart_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_04/lib/shopping_cart_tab.dart)


## Add date picker
Duration: 05:00


In this step, add a `CupertinoDatePicker` to the shopping cart so the user can select a preferred shipping date.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Add imports and a `const` to `lib/shopping_cart_tab.dart`.

Add the new lines, as shown:

####  [**lib/shopping_cart_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_05/lib/shopping_cart_tab.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';            // NEW
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';
import 'styles.dart';                       // NEW

const double _kDateTimePickerHeight = 216;  // NEW
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Add a `_buildDateAndTimePicker()` function to the `_ShoppingCartTab` widget.

Add the function, as follows:

```
class _ShoppingCartTabState extends State<ShoppingCartTab> {
  // ...

  // NEW FROM HERE
  Widget _buildDateAndTimePicker(BuildContext context) { 
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Icon(
                  CupertinoIcons.clock,
                  color: CupertinoColors.lightBackgroundGray,
                  size: 28,
                ),
                SizedBox(width: 6),
                Text(
                  'Delivery time',
                  style: Styles.deliveryTimeLabel,
                ),
              ],
            ),
            Text(
              DateFormat.yMMMd().add_jm().format(dateTime),
              style: Styles.deliveryTime,
            ),
          ],
        ),
        SizedBox(
          height: _kDateTimePickerHeight,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            initialDateTime: dateTime,
            onDateTimeChanged: (newDateTime) {
              setState(() {
                dateTime = newDateTime;
              });
            },
          ),
        ),
      ],
    );
  }    // TO HERE

SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
   AppStateModel model) {
  // ...
```

<img src="img/795da914927f2a1e.png" alt="795da914927f2a1e.png"  width="27.00" /> **`Observations`**

* Adding a `CupertinoDatePicker` is quick to do, and gives iOS users an intuitive way to enter dates and times.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Add a call to build the date and time UI, to the `_buildSliverChildBuilderDelegate` function. Add the new code, as shown:

```
  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _buildNameField(),
            );
          case 1:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _buildEmailField(),
            );
          case 2:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _buildLocationField(),
            );
          case 3:                // ADD FROM HERE
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              child: _buildDateAndTimePicker(context),
            );                   // TO HERE
          default:
          // Do nothing. For now.
        }
        return null;
      },
    );
  }
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />  [Run the app](https://docs.flutter.dev/get-started/test-drive). Select the **shopping cart** tab. You should see an iOS style date picker below the text fields for gathering the customer info:

<img src="img/5b12767a207cbadc.png" alt="5b12767a207cbadc.png"  width="321.10" />

**Problems?**

If your app is not running correctly, look for typos. If needed, use the code at the following link to get back on track.

*  [`lib/shopping_cart_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_05/lib/shopping_cart_tab.dart)


## Add selected items for purchase
Duration: 05:00


In this step, add the selected items to the shopping cart to complete the app.

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Import the product package in `shopping_cart_tab.dart`.

####  [**lib/shopping_cart_tab.dart**](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_06/lib/shopping_cart_tab.dart#L15)

```
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';
import 'model/product.dart';              // NEW
import 'styles.dart';
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Add a currency format to the `_ShoppingCartTabState` class.

Add the line marked NEW:

```
class _ShoppingCartTabState extends State<ShoppingCartTab> {
  String? name;
  String? email;
  String? location;
  String? pin;
  DateTime dateTime = DateTime.now();
  final _currencyFormat = NumberFormat.currency(symbol: '\$'); // NEW
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> Add a product index to the `_buildSliverChildBuilderDelegate` function.

Add the line marked NEW:

```
SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
   AppStateModel model) {
 return SliverChildBuilderDelegate(
   (context, index) {
     final productIndex = index - 4;    // NEW
     switch (index) {
  // ...
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> In the same function, display the items to purchase.

Add the code to the `default:` section of the switch statement, as follows:

```
switch (index) {
 case 0:
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16),
     child: _buildNameField(),
   );
 case 1:
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16),
     child: _buildEmailField(),
   );
 case 2:
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16),
     child: _buildLocationField(),
   );
 case 3:
   return Padding(
     padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
     child: _buildDateAndTimePicker(context),
   );
 default:                      // NEW FROM HERE
   if (model.productsInCart.length > productIndex) {
     return ShoppingCartItem(
       index: index,
       product: model.getProductById(
           model.productsInCart.keys.toList()[productIndex]),
       quantity: model.productsInCart.values.toList()[productIndex],
       lastItem: productIndex == model.productsInCart.length - 1,
       formatter: _currencyFormat,
     );
   } else if (model.productsInCart.keys.length == productIndex &&
       model.productsInCart.isNotEmpty) {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: <Widget>[
           Column(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: <Widget>[
               Text(
                 'Shipping '
                 '${_currencyFormat.format(model.shippingCost)}',
                  style: Styles.productRowItemPrice,
               ),
               const SizedBox(height: 6),
               Text(
                 'Tax ${_currencyFormat.format(model.tax)}',
                 style: Styles.productRowItemPrice,
                ),
                const SizedBox(height: 6),
                Text(
                  'Total ${_currencyFormat.format(model.totalCost)}',
                  style: Styles.productRowTotal,
                ),
              ],
            )
          ],
        ),
      );
    }
}                       // TO HERE
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" /> At the bottom of the file, add a new `ShoppingCartItem` class:

```
class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({
    required this.index,
    required this.product,
    required this.lastItem,
    required this.quantity,
    required this.formatter,
    super.key,
  });

  final Product product;
  final int index;
  final bool lastItem;
  final int quantity;
  final NumberFormat formatter;

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      child: CupertinoListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            product.assetName,
            package: product.assetPackage,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
        ),
        leadingSize: 40,
        title: Text(
          product.name,
          style: Styles.productRowItemName,
        ),
        subtitle: Text(
          '${quantity > 1 ? '$quantity x ' : ''}'
          '${formatter.format(product.price)}',
          style: Styles.productRowItemPrice,
        ),
        trailing: Text(
          formatter.format(quantity * product.price),
          style: Styles.productRowItemName,
        ),
      ),
    );

    return row;
  }
}
```

<img src="img/e2a92a63ee118415.png" alt="e2a92a63ee118415.png"  width="24.00" />  [Run the app](https://docs.flutter.dev/get-started/test-drive). From the products tab, select a few items to purchase using the plus-sign button to the right of each item. Select the **shopping cart** tab. You should see the items listed in the shopping cart below the date picker:

<img src="img/c75bc2840d4d063e.png" alt="c75bc2840d4d063e.png"  width="335.47" />

**Problems?**

If your app is not running correctly, look for typos. If needed, use the code at the following link to get back on track.

*  [`lib/shopping_cart_tab.dart`](https://github.com/flutter/codelabs/blob/master/cupertino_store/step_06/lib/shopping_cart_tab.dart)


## Next steps



### Congratulations!

You have completed the codelab and have built a Flutter app with the Cupertino look and feel! You've also used the `provider` package to manage app state across screens. When you have time, you might want to learn more about managing state in our  [state management documentation](https://flutter.dev/docs/development/data-and-backend/state-mgmt/intro). 

### Other next steps

This codelab has built a front end for a shopping experience, but the next step in making it real is to create a back-end that handles user accounts, products, shopping carts and the like. There are multiple ways of accomplishing this goal:

* Host the product and shopping carts in  [Cloud Firestore](https://cloud.google.com/firestore/), and use the  [Flutter plugin](https://pub.dartlang.org/packages/firebase_auth) for  [Firebase Authentication](https://firebase.google.com/products/auth/) for user authentication.
* Use  [Dart's gRPC support](https://grpc.io/docs/quickstart/dart.html) to talk to a cloud hosted API server, for example with  [Cloud Endpoints for gRPC](https://cloud.google.com/endpoints/docs/grpc/about-grpc).
* If you have an API server that exports an API via JSON REST, see  [Andrew Brogdon's Medium post](https://medium.com/flutter-io/some-options-for-deserializing-json-with-flutter-7481325a4450) for a range of options for working with JSON REST APIs.

### Learn more

You can find more info at the following links:

*  [Flutters Cupertino package for iOS devs](https://www.youtube.com/watch?v=3PdUaidHc-E). A video from the Flutter in Focus series.
*  [Cupertino API docs](https://flutter.dev/docs/development/ui/widgets/cupertino)


