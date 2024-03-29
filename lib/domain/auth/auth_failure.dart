import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.incorrectLicense() = IncorrectLicense;
  const factory AuthFailure.maxInstancesNumberExceeded(int maxInstances) =
      MaxInstancesNumberExceeded;
}
