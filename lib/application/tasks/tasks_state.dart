part of 'tasks_bloc.dart';

@freezed
abstract class TasksState with _$TasksState {
  const factory TasksState({
    Map<String, Task> tasks,
  }) = _TasksState;

  factory TasksState.initial() => const TasksState(tasks: {});

  factory TasksState.fromJson(Map<String, dynamic> json) =>
      _$TasksStateFromJson(json);
}
