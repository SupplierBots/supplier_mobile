import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:package_info/package_info.dart';
import 'package:supplier_mobile/domain/remote/checkout_report_payload/checkout_report_payload.dart';
import 'package:supplier_mobile/domain/webhooks/webhook_config.dart';
import 'package:supplier_mobile/domain/webhooks/webhooks_repository.dart';
import 'package:supplier_mobile/infrastructure/webhooks/embed_field.dart';
import 'package:supplier_mobile/infrastructure/webhooks/message_embed.dart';
import 'package:supplier_mobile/infrastructure/webhooks/message_embed_footer.dart';
import 'package:supplier_mobile/infrastructure/webhooks/message_embed_thumbnail.dart';
import 'package:supplier_mobile/domain/core/string_extensions.dart';

@LazySingleton(as: WebhooksRepository)
class DiscordWebhooksRepository implements WebhooksRepository {
  static const String _successColor = '#9253C1';
  static const String _failColor = '#D20000';
  static const String _logoUrl = 'https://i.imgur.com/fUUYrFx.png';

  @override
  Future<void> sendCheckoutWebhook(
    CheckoutReportPayload payload,
    WebhookConfig config,
  ) async {}

  @override
  Future<void> sendTestWebhook(WebhookConfig config) async {
    final message = MessageEmbed(
      title: 'Successfully configured mobile webhook!',
      color: _successColor,
      footer: await _getFooter(),
      thumbnail: MessageEmbedThumbnail(url: _logoUrl),
      fields: [
        EmbedField(
          name: 'Success Only',
          value: config.successOnly.toString().capitalize(),
        ),
        EmbedField(
          name: 'Message',
          value: config.successOnly
              ? 'If you want to receive all checkout messages, please disable ` Success Only ` option'
              : 'If you only want to receive notifications about successful checkouts, please enable ` Success Only ` option',
        ),
        EmbedField(
          name: 'Date',
          value: Jiffy(DateTime.now()).format('do MMM yyyy | HH:mm:ss'),
        )
      ],
      timestamp: DateTime.now(),
    );

    await Dio().post<String>(
      config.url,
      data: {
        'username': 'Supplier',
        'avatar_url': _logoUrl,
        'embeds': [message.toJson()],
      },
      options: Options(
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      ),
    );
    return Future.value();
  }

  Future<MessageEmbedFooter> _getFooter() async {
    final info = await PackageInfo.fromPlatform();

    return MessageEmbedFooter(
      text: 'Supplier Mobile ${info.version}',
      icon_url: _logoUrl,
    );
  }
}
