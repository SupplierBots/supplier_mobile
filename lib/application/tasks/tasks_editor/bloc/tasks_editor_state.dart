part of 'tasks_editor_bloc.dart';

@freezed
abstract class TasksEditorState with _$TasksEditorState {
  const factory TasksEditorState({
    @required bool isEditing,
    @required Option<String> editedTaskUid,
  }) = _TasksEditorState;

  factory TasksEditorState.initial() => TasksEditorState(
        isEditing: false,
        editedTaskUid: none(),
      );
}
