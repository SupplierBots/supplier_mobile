// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_instance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoveInstanceResponse _$_$_RemoveInstanceResponseFromJson(
    Map<String, dynamic> json) {
  return _$_RemoveInstanceResponse(
    success: json['success'] as bool,
    activeInstances: json['activeInstances'] as int,
  );
}

Map<String, dynamic> _$_$_RemoveInstanceResponseToJson(
        _$_RemoveInstanceResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'activeInstances': instance.activeInstances,
    };
