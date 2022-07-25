// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
    // TODO: use remoteConfig to return the image that is being A/B tested
    return images.first;
  }
}
