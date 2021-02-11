part of 'tasks_bloc.dart';

@freezed
abstract class TasksEvent with _$TasksEvent {
  const factory TasksEvent.added(Task task) = _Added;
  const factory TasksEvent.deleted(Task task) = _Deleted;
}
