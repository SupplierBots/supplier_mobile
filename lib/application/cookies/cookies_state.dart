part of 'cookies_cubit.dart';

@freezed
abstract class CookiesState implements _$CookiesState {
  const factory CookiesState({
    @required List<SerializableCookie> gmailCookies,
  }) = _CookiesState;

  factory CookiesState.initial() => const CookiesState(gmailCookies: []);
  factory CookiesState.fromJson(Map<String, dynamic> json) =>
      _$CookiesStateFromJson(json);

  const CookiesState._();

  List<Cookie> getGmailCookies() {
    return gmailCookies.map((c) => c.toWebviewFormat()).toList();
  }
}
