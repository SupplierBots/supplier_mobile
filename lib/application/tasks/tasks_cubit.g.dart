// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksState _$_$_TasksStateFromJson(Map<String, dynamic> json) {
  return _$_TasksState(
    tasks: (json['tasks'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Task.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$_TasksStateToJson(_$_TasksState instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };
