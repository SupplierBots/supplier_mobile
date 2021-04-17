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
  ) async {
    if (!webhookUrlRegex.hasMatch(config.url)) return;

    final success = payload.result.status == 'paid';
    final title =
        success ? 'Successful checkout!' : 'Failed - ${payload.result.message}';

    final message = MessageEmbed(
      title: title,
      color: success ? _successColor : _failColor,
      footer: await _getFooter(),
      thumbnail: MessageEmbedThumbnail(url: payload.item.image),
      fields: [
        EmbedField(
          name: 'Date',
          value: Jiffy(DateTime.now()).format('do MMM yyyy | HH:mm:ss'),
        ),
        EmbedField(
          name: 'Product',
          value: payload.item.name,
          inline: true,
        ),
        EmbedField(
          name: 'Style',
          value: payload.item.style,
          inline: true,
        ),
        EmbedField(
          name: 'Size',
          value: payload.item.size,
          inline: true,
        ),
        EmbedField(
          name: 'Version',
          value: 'Mobile',
          inline: true,
        ),
        EmbedField(
          name: 'Profile',
          value: '|| ${payload.profileName} ||',
          inline: true,
        ),
        EmbedField(
          name: 'Order number',
          value: '|| ${payload.result.processingDetails.orderNumber} ||',
          inline: true,
        )
      ],
      timestamp: DateTime.now(),
    );
    await _sendWebhook(config.url, message);
  }

  @override
  Future<void> sendTestWebhook(WebhookConfig config) async {
    if (!webhookUrlRegex.hasMatch(config.url)) return;

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
              ? 'If you want to receive notifications about all checkout messages disable ` Success Only ` option'
              : 'If you want to receive notifications only about successful checkouts enable ` Success Only ` option',
        ),
        EmbedField(
          name: 'Date',
          value: Jiffy(DateTime.now()).format('do MMM yyyy | HH:mm:ss'),
        )
      ],
      timestamp: DateTime.now(),
    );
    await _sendWebhook(config.url, message);
  }

  Future<void> _sendWebhook(String url, MessageEmbed message) async {
    try {
      await Dio().post<String>(
        url,
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
    } catch (e) {
      //Ignore webhook errors
    }
  }

  Future<MessageEmbedFooter> _getFooter() async {
    final info = await PackageInfo.fromPlatform();

    return MessageEmbedFooter(
      text: 'Supplier Mobile ${info.version}',
      icon_url: _logoUrl,
    );
  }
}
