// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'droplists_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DroplistCollection _$_$_DroplistCollectionFromJson(
    Map<String, dynamic> json) {
  return _$_DroplistCollection(
    supreme: json['supreme'] == null
        ? null
        : Droplist.fromJson(json['supreme'] as Map<String, dynamic>),
    palace: json['palace'] == null
        ? null
        : Droplist.fromJson(json['palace'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DroplistCollectionToJson(
        _$_DroplistCollection instance) =>
    <String, dynamic>{
      'supreme': instance.supreme,
      'palace': instance.palace,
    };
