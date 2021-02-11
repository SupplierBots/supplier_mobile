part of 'tasks_editor_bloc.dart';

@freezed
abstract class TasksEditorEvent with _$TasksEditorEvent {
  const factory TasksEditorEvent.startedEditing(Option<Task> task) =
      _StartedEditing;
  const factory TasksEditorEvent.finishedEditing() = _FinishedEditing;
}