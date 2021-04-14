import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_failure.freezed.dart';

@freezed
abstract class RemoteFailure with _$RemoteFailure {
  const factory RemoteFailure.unexpected() = _Unexpected;
}
