import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:supplier_mobile/application/cookies/serializable_cookie.dart';

part 'cookies_state.dart';
part 'cookies_cubit.freezed.dart';
part 'cookies_cubit.g.dart';

class CookiesCubit extends HydratedCubit<CookiesState> {
  CookiesCubit() : super(CookiesState.initial());

  void setGoogleCookies(List<Cookie> cookies) {
    emit(state.copyWith(
      googleCookies: cookies.map((c) => c.toSerializable()).toList(),
    ));
  }

  void setGoogleAccount(String email) {
    emit(state.copyWith(
      googleAccountEmail: email,
    ));
  }

  void clearGoogleCookies() {
    emit(CookiesState.initial());
  }

  @override
  CookiesState fromJson(Map<String, dynamic> json) {
    return CookiesState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CookiesState state) {
    return state.toJson();
  }
}
