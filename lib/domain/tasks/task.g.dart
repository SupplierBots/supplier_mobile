// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$_$_TaskFromJson(Map<String, dynamic> json) {
  return _$_Task(
    profileName: json['profileName'] as String,
    size: json['size'] as String,
    colors: (json['colors'] as List)?.map((e) => e as String)?.toList(),
    anyColor: json['anyColor'] as bool,
    anySize: json['anySize'] as bool,
  );
}

Map<String, dynamic> _$_$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'profileName': instance.profileName,
      'size': instance.size,
      'colors': instance.colors,
      'anyColor': instance.anyColor,
      'anySize': instance.anySize,
    };
