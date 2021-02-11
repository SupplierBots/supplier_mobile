import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_failure.freezed.dart';

@freezed
abstract class DashboardFailure with _$DashboardFailure {
  const factory DashboardFailure.unexpected() = _Unexpected;
}
