part of 'cookies_cubit.dart';

@freezed
abstract class CookiesState implements _$CookiesState {
  const factory CookiesState({
    @required List<SerializableCookie> googleCookies,
    String googleAccountEmail,
  }) = _CookiesState;

  factory CookiesState.initial() => const CookiesState(
        googleCookies: [],
        googleAccountEmail: '',
      );
  factory CookiesState.fromJson(Map<String, dynamic> json) =>
      _$CookiesStateFromJson(json);

  const CookiesState._();

  List<Cookie> getGoogleCookies() {
    return googleCookies.map((c) => c.toWebViewFormat()).toList();
  }

  bool get isLoggedIntoGoogleAccount => googleAccountEmail.isNotEmpty;
}
