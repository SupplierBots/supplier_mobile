import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';

part 'tasks_state.dart';
part 'tasks_cubit.freezed.dart';
part 'tasks_cubit.g.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksState.initial());

  void setTask(String uid, Task task) {
    emit(TasksState(
      tasks: {
        ...state.tasks,
        uid: task,
      },
    ));
  }

  void deletedTask(String uid) {
    final copiedTasks = {...state.tasks};
    copiedTasks.remove(uid);
    emit(TasksState(tasks: copiedTasks));
  }
}
