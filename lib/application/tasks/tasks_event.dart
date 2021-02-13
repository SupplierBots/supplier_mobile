part of 'tasks_bloc.dart';

@freezed
abstract class TasksEvent with _$TasksEvent {
  const factory TasksEvent.setTask(String uid, Task task) = _SetTask;
  const factory TasksEvent.deletedTask(String uid) = _DeletedTask;
}
