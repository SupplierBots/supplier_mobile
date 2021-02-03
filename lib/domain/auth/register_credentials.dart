import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_credentials.freezed.dart';
part 'register_credentials.g.dart';

@freezed
abstract class RegisterCredentials with _$RegisterCredentials {
  const factory RegisterCredentials({
    @required String email,
    @required String password,
    @required String key,
  }) = _RegisterCredentials;
  factory RegisterCredentials.fromJson(Map<String, dynamic> json) =>
      _$RegisterCredentialsFromJson(json);
}
