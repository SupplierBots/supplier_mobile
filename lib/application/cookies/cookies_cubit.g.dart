// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookies_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CookiesState _$_$_CookiesStateFromJson(Map<String, dynamic> json) {
  return _$_CookiesState(
    gmailCookies: (json['gmailCookies'] as List)
        ?.map((e) => e == null
            ? null
            : SerializableCookie.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CookiesStateToJson(_$_CookiesState instance) =>
    <String, dynamic>{
      'gmailCookies': instance.gmailCookies,
    };
