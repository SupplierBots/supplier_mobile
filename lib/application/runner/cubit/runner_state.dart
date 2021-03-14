part of 'runner_cubit.dart';

@freezed
abstract class RunnerState with _$RunnerState {
  const factory RunnerState({
    @required Map<Task, TaskProgress> tasksProgress,
    @required Option<Task> visibleTask,
  }) = _RunnerState;

  factory RunnerState.initial() => RunnerState(
        tasksProgress: {},
        visibleTask: none(),
      );
}
