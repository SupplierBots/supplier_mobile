import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'serializable_cookie.freezed.dart';
part 'serializable_cookie.g.dart';

@freezed
abstract class SerializableCookie implements _$SerializableCookie {
  const factory SerializableCookie({
    String name,
    dynamic value,
    int expiresDate,
    bool isSessionOnly,
    String domain,
    String sameSite,
    bool isSecure,
    bool isHttpOnly,
    String path,
  }) = _SerializableCookie;
  factory SerializableCookie.fromJson(Map<String, dynamic> json) =>
      _$SerializableCookieFromJson(json);

  const SerializableCookie._();

  Cookie toWebviewFormat() => Cookie(
        name: name,
        value: value,
        expiresDate: expiresDate,
        domain: domain,
        sameSite: HTTPCookieSameSitePolicy.fromValue(sameSite),
        isSecure: isSecure,
        isHttpOnly: isHttpOnly,
        path: path,
      );
}

extension CookieExtension on Cookie {
  SerializableCookie toSerializable() {
    return SerializableCookie(
      name: name,
      value: value,
      expiresDate: expiresDate,
      domain: domain,
      sameSite: sameSite?.toValue(),
      isSecure: isSecure,
      isHttpOnly: isHttpOnly,
      path: path,
    );
  }
}
