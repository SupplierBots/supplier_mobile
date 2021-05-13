// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProcessingDetails _$_$_ProcessingDetailsFromJson(Map<String, dynamic> json) {
  return _$_ProcessingDetails(
    billingErrors: json['billingErrors'] as String,
    slug: json['slug'] as String,
    processingAttempt: json['processingAttempt'] as int,
    highTraffic: json['highTraffic'] as bool,
    bParameter: json['bParameter'] as bool,
    queued: json['queued'] as bool,
    cca: json['cca'] as bool,
    orderNumber: json['orderNumber'] as String,
    waitedForCaptchaLoad: json['waitedForCaptchaLoad'] as bool,
    captchaToken: json['captchaToken'] as String,
    lastStatus: json['lastStatus'] as String,
  );
}

Map<String, dynamic> _$_$_ProcessingDetailsToJson(
        _$_ProcessingDetails instance) =>
    <String, dynamic>{
      'billingErrors': instance.billingErrors,
      'slug': instance.slug,
      'processingAttempt': instance.processingAttempt,
      'highTraffic': instance.highTraffic,
      'bParameter': instance.bParameter,
      'queued': instance.queued,
      'cca': instance.cca,
      'orderNumber': instance.orderNumber,
      'waitedForCaptchaLoad': instance.waitedForCaptchaLoad,
      'captchaToken': instance.captchaToken,
      'lastStatus': instance.lastStatus,
    };
