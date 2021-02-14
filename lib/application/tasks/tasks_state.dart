part of 'tasks_cubit.dart';

@freezed
abstract class TasksState implements _$TasksState {
  const factory TasksState({
    Map<String, Task> tasks,
  }) = _TasksState;

  const TasksState._();

  factory TasksState.initial() => const TasksState(tasks: {});

  factory TasksState.fromJson(Map<String, dynamic> json) =>
      _$TasksStateFromJson(json);

  int indexOf(String uid) =>
      tasks.entries.toList().indexWhere((t) => t.key == uid);
}
