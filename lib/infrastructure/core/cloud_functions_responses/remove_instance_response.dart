import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_instance_response.freezed.dart';
part 'remove_instance_response.g.dart';

@freezed
abstract class RemoveInstanceResponse with _$RemoveInstanceResponse {
  const factory RemoveInstanceResponse({
    @required bool success,
    @required int activeInstances,
  }) = _RemoveInstanceResponse;
  factory RemoveInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoveInstanceResponseFromJson(json);
}
