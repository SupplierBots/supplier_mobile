// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksState _$_$_TasksStateFromJson(Map<String, dynamic> json) {
  return _$_TasksState(
    tasks: (json['tasks'] as List)
        ?.map(
            (e) => e == null ? null : Task.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_TasksStateToJson(_$_TasksState instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };
