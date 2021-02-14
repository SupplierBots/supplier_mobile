part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.signOutAttempt() = SignOutAttempt;
  const factory AuthState.unauthenticated() = Unauthenticated;
}
