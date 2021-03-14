import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/application/runner/cubit/task_progress.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_progress.dart';

part 'runner_state.dart';
part 'runner_cubit.freezed.dart';

class RunnerCubit extends Cubit<RunnerState> {
  RunnerCubit() : super(RunnerState.initial());

  void setTaskProgress({
    @required Task task,
    @required String message,
  }) {
    emit(
      state.copyWith(
        tasksProgress: {
          ...state.tasksProgress,
          task: TaskProgress(
            message: message,
            action: TaskAction.inProgress,
          ),
        },
      ),
    );
  }

  void startTasks(List<Task> tasks) {
    final tasksProgress = <Task, TaskProgress>{};

    for (final task in tasks) {
      tasksProgress[task] = const TaskProgress(
        message: 'Started',
        action: TaskAction.inProgress,
      );
    }

    emit(
      RunnerState(
        tasksProgress: tasksProgress,
        visibleTask: none(),
      ),
    );
  }

  void setVisibleTask(Task task) {
    emit(
      state.copyWith(
        visibleTask: optionOf(task),
      ),
    );
  }

  void setCaptcha(Task task) {
    emit(
      state.copyWith(
        tasksProgress: {
          ...state.tasksProgress,
          task: const TaskProgress(
            message: 'Waiting for captcha',
            action: TaskAction.captcha,
          ),
        },
      ),
    );
  }

  void closeVisibleTask() {
    emit(
      state.copyWith(
        visibleTask: none(),
      ),
    );
  }
}
