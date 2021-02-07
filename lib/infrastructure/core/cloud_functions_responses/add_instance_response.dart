import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_instance_response.freezed.dart';
part 'add_instance_response.g.dart';

@freezed
abstract class AddInstanceResponse with _$AddInstanceResponse {
  const factory AddInstanceResponse({
    @required bool success,
    @required int maxInstances,
    @required String error,
  }) = _AddInstanceResponse;
  factory AddInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AddInstanceResponseFromJson(json);
}
