import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Task;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/application/runner/cubit/task_progress.dart';
import 'package:supplier_mobile/domain/tasks/task.dart';
import 'package:supplier_mobile/domain/tasks/task_action.dart';

part 'runner_state.dart';
part 'runner_cubit.freezed.dart';

class RunnerCubit extends Cubit<RunnerState> {
  RunnerCubit() : super(RunnerState.initial());

  void setTaskProgress({
    @required String uid,
    @required String message,
  }) {
    emit(
      state.copyWith(
        tasksProgress: {
          ...state.tasksProgress,
          uid: TaskProgress(
            message: message,
            action: TaskAction.inProgress,
          ),
        },
      ),
    );
  }

  void startTasks(List<String> tasksUids) {
    final tasksProgress = <String, TaskProgress>{};

    for (final uid in tasksUids) {
      tasksProgress[uid] = const TaskProgress(
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

  void setVisibleTask(String uid) {
    emit(
      state.copyWith(
        visibleTask: optionOf(uid),
      ),
    );
  }

  void setCaptcha(String uid) {
    emit(
      state.copyWith(
        tasksProgress: {
          ...state.tasksProgress,
          uid: const TaskProgress(
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
