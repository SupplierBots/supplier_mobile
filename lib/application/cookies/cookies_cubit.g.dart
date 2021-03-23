// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookies_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CookiesState _$_$_CookiesStateFromJson(Map<String, dynamic> json) {
  return _$_CookiesState(
    googleCookies: (json['googleCookies'] as List)
        ?.map((e) => e == null
            ? null
            : SerializableCookie.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    googleAccountEmail: json['googleAccountEmail'] as String,
  );
}

Map<String, dynamic> _$_$_CookiesStateToJson(_$_CookiesState instance) =>
    <String, dynamic>{
      'googleCookies': instance.googleCookies,
      'googleAccountEmail': instance.googleAccountEmail,
    };
