// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$_$_TaskFromJson(Map<String, dynamic> json) {
  return _$_Task(
    product: json['product'] as String,
    profileName: json['profileName'] as String,
    size: json['size'] as String,
    anyColor: json['anyColor'] as bool,
    anySize: json['anySize'] as bool,
    colors: (json['colors'] as List)?.map((e) => e as String)?.toList(),
    anySizeOption: json['anySizeOption'] as String,
  );
}

Map<String, dynamic> _$_$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'product': instance.product,
      'profileName': instance.profileName,
      'size': instance.size,
      'anyColor': instance.anyColor,
      'anySize': instance.anySize,
      'colors': instance.colors,
      'anySizeOption': instance.anySizeOption,
    };
