import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';

part 'tasks_editor_event.dart';
part 'tasks_editor_state.dart';
part 'tasks_editor_bloc.freezed.dart';

class TasksEditorBloc extends Bloc<TasksEditorEvent, TasksEditorState> {
  TasksEditorBloc() : super(TasksEditorState.initial());

  @override
  Stream<TasksEditorState> mapEventToState(
    TasksEditorEvent event,
  ) async* {
    yield* event.map(
      startedEditing: (e) async* {
        yield TasksEditorState(
          isEditing: true,
          editedTask: e.task,
        );
      },
      finishedEditing: (e) async* {
        yield TasksEditorState.initial();
      },
    );
  }
}
