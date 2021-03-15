part of 'runner_cubit.dart';

@freezed
abstract class RunnerState with _$RunnerState {
  const factory RunnerState({
    @required Map<String, TaskProgress> tasksProgress,
    @required Option<String> visibleTask,
  }) = _RunnerState;

  factory RunnerState.initial() => RunnerState(
        tasksProgress: {},
        visibleTask: none(),
      );
}
