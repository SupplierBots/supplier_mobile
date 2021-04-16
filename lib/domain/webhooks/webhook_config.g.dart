// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WebhookConfig _$_$_WebhookConfigFromJson(Map<String, dynamic> json) {
  return _$_WebhookConfig(
    url: json['url'] as String,
    successOnly: json['successOnly'] as bool,
  );
}

Map<String, dynamic> _$_$_WebhookConfigToJson(_$_WebhookConfig instance) =>
    <String, dynamic>{
      'url': instance.url,
      'successOnly': instance.successOnly,
    };
