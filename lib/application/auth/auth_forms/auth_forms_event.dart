part of 'auth_forms_bloc.dart';

@freezed
abstract class AuthFormsEvent with _$AuthFormsEvent {
  const factory AuthFormsEvent.signInOrRegisterToggled() =
      SignInOrRegisterToggled;

  const factory AuthFormsEvent.signInPressed(SignInCredentials credentials) =
      SignInPressed;

  const factory AuthFormsEvent.createAccountPressed(
      RegisterCredentials credentials) = CreateAccountPressed;
}
