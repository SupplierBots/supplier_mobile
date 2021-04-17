// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskResult _$_$_TaskResultFromJson(Map<String, dynamic> json) {
  return _$_TaskResult(
    status: json['status'] as String,
    message: json['message'] as String,
    itemDetails: json['itemDetails'] == null
        ? null
        : ItemDetails.fromJson(json['itemDetails'] as Map<String, dynamic>),
    modifiedButtons:
        (json['modifiedButtons'] as List)?.map((e) => e as String)?.toList(),
    timestamps: json['timestamps'] == null
        ? null
        : Timestamps.fromJson(json['timestamps'] as Map<String, dynamic>),
    processingDetails: json['processingDetails'] == null
        ? null
        : ProcessingDetails.fromJson(
            json['processingDetails'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TaskResultToJson(_$_TaskResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'itemDetails': instance.itemDetails,
      'modifiedButtons': instance.modifiedButtons,
      'timestamps': instance.timestamps,
      'processingDetails': instance.processingDetails,
    };
