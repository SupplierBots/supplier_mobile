import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/presentation/runner/widgets/message_bridge/processing_details.dart';
import 'package:supplier_mobile/presentation/runner/widgets/message_bridge/timestamps.dart';

part 'task_result.freezed.dart';
part 'task_result.g.dart';

@freezed
abstract class TaskResult with _$TaskResult {
  const factory TaskResult({
    @required String status,
    @required String message,
    @required List<String> modifiedButtons,
    @required Timestamps timestamps,
    @required ProcessingDetails processingDetails,
  }) = _TaskResult;
  factory TaskResult.fromJson(Map<String, dynamic> json) =>
      _$TaskResultFromJson(json);
}
