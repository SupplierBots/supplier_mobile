// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskResult _$_$_TaskResultFromJson(Map<String, dynamic> json) {
  return _$_TaskResult(
    reason: json['reason'] as String,
    modifiedButtons:
        (json['modifiedButtons'] as List)?.map((e) => e as String)?.toList(),
    timestamps: json['timestamps'] == null
        ? null
        : Timestamps.fromJson(json['timestamps'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TaskResultToJson(_$_TaskResult instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'modifiedButtons': instance.modifiedButtons,
      'timestamps': instance.timestamps,
    };
