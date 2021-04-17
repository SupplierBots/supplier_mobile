import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/presentation/runner/widgets/message_bridge/item_details.dart';
import 'package:supplier_mobile/presentation/runner/widgets/message_bridge/task_result.dart';

part 'checkout_report_payload.freezed.dart';
part 'checkout_report_payload.g.dart';

@freezed
abstract class CheckoutReportPayload with _$CheckoutReportPayload {
  const factory CheckoutReportPayload({
    @required int attempt,
    @required int checkoutDelay,
    @required String region,
    @required String profileName,
    @required TaskResult result,
  }) = _CheckoutReportPayload;
  factory CheckoutReportPayload.fromJson(Map<String, dynamic> json) =>
      _$CheckoutReportPayloadFromJson(json);
}
