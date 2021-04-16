import 'package:supplier_mobile/domain/remote/checkout_report_payload/checkout_report_payload.dart';
import 'package:supplier_mobile/domain/webhooks/webhook_config.dart';

abstract class WebhooksRepository {
  Future<void> sendCheckoutWebhook(
      CheckoutReportPayload payload, WebhookConfig config);
  Future<void> sendTestWebhook(WebhookConfig config);
}
