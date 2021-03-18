// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_cookie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SerializableCookie _$_$_SerializableCookieFromJson(
    Map<String, dynamic> json) {
  return _$_SerializableCookie(
    name: json['name'] as String,
    value: json['value'],
    expiresDate: json['expiresDate'] as int,
    isSessionOnly: json['isSessionOnly'] as bool,
    domain: json['domain'] as String,
    sameSite: json['sameSite'] as String,
    isSecure: json['isSecure'] as bool,
    isHttpOnly: json['isHttpOnly'] as bool,
    path: json['path'] as String,
  );
}

Map<String, dynamic> _$_$_SerializableCookieToJson(
        _$_SerializableCookie instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'expiresDate': instance.expiresDate,
      'isSessionOnly': instance.isSessionOnly,
      'domain': instance.domain,
      'sameSite': instance.sameSite,
      'isSecure': instance.isSecure,
      'isHttpOnly': instance.isHttpOnly,
      'path': instance.path,
    };
