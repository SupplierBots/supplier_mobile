import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    @required String product,
    @required String profileName,
    @required String size,
    @required bool anyColor,
    @required bool anySize,
    @required List<String> colors,
    String anySizeOption,
  }) = _Task;
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
