import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';
part 'tasks_bloc.g.dart';

class TasksBloc extends HydratedBloc<TasksEvent, TasksState> {
  TasksBloc() : super(TasksState.initial());

  @override
  Stream<TasksState> mapEventToState(
    TasksEvent event,
  ) async* {
    yield* event.map(
      setTask: (e) async* {
        yield TasksState(
          tasks: {
            ...state.tasks,
            e.uid: e.task,
          },
        );
      },
      deletedTask: (e) async* {
        final copiedTasks = {...state.tasks};
        copiedTasks.remove(e.uid);
        yield state.copyWith(
          tasks: copiedTasks,
        );
      },
    );
  }

  @override
  TasksState fromJson(Map<String, dynamic> json) {
    return TasksState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(TasksState state) {
    return state.toJson();
  }
}
