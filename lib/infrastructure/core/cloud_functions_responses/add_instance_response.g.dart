// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_instance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddInstanceResponse _$_$_AddInstanceResponseFromJson(
    Map<String, dynamic> json) {
  return _$_AddInstanceResponse(
    success: json['success'] as bool,
    maxInstances: json['maxInstances'] as int,
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$_$_AddInstanceResponseToJson(
        _$_AddInstanceResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'maxInstances': instance.maxInstances,
      'error': instance.error,
    };
