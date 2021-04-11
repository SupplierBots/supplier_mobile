part of 'dashboard_cubit.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @required GeneralInfo generalInfo,
    DroplistCollection droplists,
  }) = _DashboardState;
  factory DashboardState.initial() => const DashboardState(
        generalInfo: GeneralInfo(
          //TODO: Set init info
          news: 'init news',
          tips: 'init tips',
          version: '0.0.0',
        ),
      );

  factory DashboardState.fromJson(Map<String, dynamic> json) =>
      _$DashboardStateFromJson(json);
}
