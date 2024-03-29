import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_credentials.freezed.dart';
part 'sign_in_credentials.g.dart';

@freezed
abstract class SignInCredentials with _$SignInCredentials {
  const factory SignInCredentials({
    @required String email,
    @required String password,
  }) = _SignInCredentials;
  factory SignInCredentials.fromJson(Map<String, dynamic> json) =>
      _$SignInCredentialsFromJson(json);
}
