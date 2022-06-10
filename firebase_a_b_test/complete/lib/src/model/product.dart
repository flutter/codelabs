import 'package:cloud_firestore/cloud_firestore.dart';
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

  factory Product.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    final images = (data?['images'] as List).cast<String>();

    return Product(
      name: data?['name'],
      price: data?['price'],
      brand: data?['brand'],
      // convert image name to full URL
      images: images,
    );
  }

  // All shirts are named XYZ-front or XYZ-back.
  String get defaultImageUrl {
    final defaultView =
        FirebaseRemoteConfig.instance.getString('defaultShirtView');
    return images.firstWhere((element) => element.contains(defaultView));
  }
}
