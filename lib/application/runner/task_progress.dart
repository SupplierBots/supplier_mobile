import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/domain/tasks/task_action.dart';

part 'task_progress.freezed.dart';

@freezed
abstract class TaskProgress with _$TaskProgress {
  const factory TaskProgress({
    @required String message,
    @required TaskAction action,
  }) = _TaskProgress;
}
