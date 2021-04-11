part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @required Settings settings,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        settings: Settings(
          enableVibrations: true,
          enableWarnings: true,
        ),
      );

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}
