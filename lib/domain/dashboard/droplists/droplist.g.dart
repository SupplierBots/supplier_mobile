// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'droplist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Droplist _$_$_DroplistFromJson(Map<String, dynamic> json) {
  return _$_Droplist(
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    week: json['week'] as int,
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$_DroplistToJson(_$_Droplist instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'week': instance.week,
      'link': instance.link,
    };
