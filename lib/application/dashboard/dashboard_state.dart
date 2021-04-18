part of 'dashboard_cubit.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @required GeneralInfo generalInfo,
    DroplistCollection droplists,
  }) = _DashboardState;
  factory DashboardState.initial() => const DashboardState(
        generalInfo: GeneralInfo(
          news:
              'Finally an open beta is here! We would be thankful for your feedback. Please be aware that some errors may occur, we will try to fix them as fast as possible. Make sure that you have the latest version installed. Thank you for participating.',
          tips:
              'Remember to login into your google account before running any tasks to decrease the chance of captcha, which can slow you significantly during a drop.',
          version: '0.0.0',
        ),
      );

  factory DashboardState.fromJson(Map<String, dynamic> json) =>
      _$DashboardStateFromJson(json);
}
