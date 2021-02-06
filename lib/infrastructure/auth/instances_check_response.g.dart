// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instances_check_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstancesCheckResponse _$_$_InstancesCheckResponseFromJson(
    Map<String, dynamic> json) {
  return _$_InstancesCheckResponse(
    success: json['success'] as bool,
    maxInstances: json['maxInstances'] as int,
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$_$_InstancesCheckResponseToJson(
        _$_InstancesCheckResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'maxInstances': instance.maxInstances,
      'error': instance.error,
    };
