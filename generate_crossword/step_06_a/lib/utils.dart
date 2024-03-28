// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:built_collection/built_collection.dart';

/// A [Random] instance for generating random numbers.
final _random = Random();

/// An extension on [BuiltSet] that adds a method to get a random element.
extension RandomElements<E> on BuiltSet<E> {
  E randomElement() {
    return elementAt(_random.nextInt(length));
  }
}
