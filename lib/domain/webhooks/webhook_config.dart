import 'package:freezed_annotation/freezed_annotation.dart';

part 'webhook_config.freezed.dart';
part 'webhook_config.g.dart';

@freezed
abstract class WebhookConfig with _$WebhookConfig {
  const factory WebhookConfig({
    @required String url,
    @required bool successOnly,
  }) = _WebhookConfig;
  factory WebhookConfig.fromJson(Map<String, dynamic> json) =>
      _$WebhookConfigFromJson(json);
}

final webhookUrlRegex = RegExp(r'\/webhooks\/.+\/.+$');
