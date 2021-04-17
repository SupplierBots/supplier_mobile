// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_report_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckoutReportPayload _$_$_CheckoutReportPayloadFromJson(
    Map<String, dynamic> json) {
  return _$_CheckoutReportPayload(
    attempt: json['attempt'] as int,
    checkoutDelay: json['checkoutDelay'] as int,
    region: json['region'] as String,
    profileName: json['profileName'] as String,
    result: json['result'] == null
        ? null
        : TaskResult.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CheckoutReportPayloadToJson(
        _$_CheckoutReportPayload instance) =>
    <String, dynamic>{
      'attempt': instance.attempt,
      'checkoutDelay': instance.checkoutDelay,
      'region': instance.region,
      'profileName': instance.profileName,
      'result': instance.result,
    };
