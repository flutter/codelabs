// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';
import 'package:testing_app/screens/favorites.dart';

void main() {
  Favorites favoritesList;

  enableFlutterDriverExtension(handler: (command) {
    if (command == 'ADD') {
      favoritesList.add(30);
    } else if (command == 'REMOVE') {
      favoritesList.remove(30);
    }
    return Future.delayed(Duration(seconds: 1), () => 'DONE');
  });

  runApp(
    ChangeNotifierProvider(
      create: (context) {
        favoritesList = Favorites();
        return favoritesList;
      },
      child: MaterialApp(
        home: FavoritesPage(),
      ),
    ),
  );
}
