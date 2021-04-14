// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delays.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Delays _$_$_DelaysFromJson(Map<String, dynamic> json) {
  return _$_Delays(
    minCheckout: json['minCheckout'] as int,
    maxCheckout: json['maxCheckout'] as int,
    restocksCheckout: json['restocksCheckout'] as int,
    refresh: json['refresh'] as int,
  );
}

Map<String, dynamic> _$_$_DelaysToJson(_$_Delays instance) => <String, dynamic>{
      'minCheckout': instance.minCheckout,
      'maxCheckout': instance.maxCheckout,
      'restocksCheckout': instance.restocksCheckout,
      'refresh': instance.refresh,
    };
