// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$_$_SettingsStateFromJson(Map<String, dynamic> json) {
  return _$_SettingsState(
    personalization: json['personalization'] == null
        ? null
        : Personalization.fromJson(
            json['personalization'] as Map<String, dynamic>),
    webhookConfig: json['webhookConfig'] == null
        ? null
        : WebhookConfig.fromJson(json['webhookConfig'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'personalization': instance.personalization,
      'webhookConfig': instance.webhookConfig,
    };
