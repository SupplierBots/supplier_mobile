part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @required Personalization personalization,
    @required WebhookConfig webhookConfig,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        personalization: Personalization(
          enableVibrations: true,
          enableWarnings: true,
        ),
        webhookConfig: WebhookConfig(
          url: '',
          successOnly: false,
        ),
      );

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}
