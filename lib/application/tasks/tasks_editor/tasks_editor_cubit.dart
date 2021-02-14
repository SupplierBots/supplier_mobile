import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_editor_state.dart';
part 'tasks_editor_cubit.freezed.dart';

class TasksEditorCubit extends Cubit<TasksEditorState> {
  TasksEditorCubit() : super(TasksEditorState.initial());

  void startedEditing(Option<String> uid) {
    emit(TasksEditorState(
      isEditing: true,
      editedTaskUid: uid,
    ));
  }

  void finishedEditing() => emit(TasksEditorState.initial());
}
