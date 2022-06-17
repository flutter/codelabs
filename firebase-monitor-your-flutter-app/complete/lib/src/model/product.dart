// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  String? id;
  final String name;
  final int price;
  final List<String> images;
  final String brand;

  Product({
    this.id,
    required this.name,
    required this.price,
    required this.images,
    required this.brand,
  });

  Map<String, Object?> toJson() => _$ProductToJson(this);
  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);

  // All shirts are named XYZ-front or XYZ-back.
  String get defaultImageUrl {
    final defaultView =
        FirebaseRemoteConfig.instance.getString('defaultShirtView');
    return images.firstWhere((element) => element.contains(defaultView));
  }
}
