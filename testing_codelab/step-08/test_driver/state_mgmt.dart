// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
