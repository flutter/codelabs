// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String?,
      name: json['name'] as String,
      price: json['price'] as int,
      images: (json['images'] as List<dynamic>)
          .map((dynamic e) => e as String)
          .toList(),
      brand: json['brand'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'images': instance.images,
      'brand': instance.brand,
    };
