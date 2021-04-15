import 'package:freezed_annotation/freezed_annotation.dart';

part 'processing_details.freezed.dart';
part 'processing_details.g.dart';

@freezed
abstract class ProcessingDetails with _$ProcessingDetails {
  const factory ProcessingDetails({
    @required String billingErrors,
    @required String slug,
    @required int processingAttempt,
    @required bool highTraffic,
    @required bool bParameter,
    @required bool queued,
    @required bool cca,
  }) = _ProcessingDetails;
  factory ProcessingDetails.fromJson(Map<String, dynamic> json) =>
      _$ProcessingDetailsFromJson(json);
}
