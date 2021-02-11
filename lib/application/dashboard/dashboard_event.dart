part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.startedWatchingGeneralInfo() =
      _StartedWatchingGeneralInfo;
  const factory DashboardEvent.startedWatchingDroplists() =
      _StartedWatchingDroplists;
}
