// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    category: json['category'] as String,
    name: json['name'] as String,
    keywords: json['keywords'] == null
        ? null
        : Keywords.fromJson(json['keywords'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'category': instance.category,
      'name': instance.name,
      'keywords': instance.keywords,
    };
