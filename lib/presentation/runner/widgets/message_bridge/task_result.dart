import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/presentation/runner/widgets/message_bridge/timestamps.dart';

part 'task_result.freezed.dart';
part 'task_result.g.dart';

@freezed
abstract class TaskResult with _$TaskResult {
  const factory TaskResult({
    @required String reason,
    @required List<String> modifiedButtons,
    @required Timestamps timestamps,
  }) = _TaskResult;
  factory TaskResult.fromJson(Map<String, dynamic> json) =>
      _$TaskResultFromJson(json);
}
