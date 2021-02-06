import 'package:freezed_annotation/freezed_annotation.dart';

part 'instances_check_response.freezed.dart';
part 'instances_check_response.g.dart';

@freezed
abstract class InstancesCheckResponse with _$InstancesCheckResponse {
  const factory InstancesCheckResponse({
    @required bool success,
    @required int maxInstances,
    @required String error,
  }) = _InstancesCheckResponse;
  factory InstancesCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$InstancesCheckResponseFromJson(json);
}
