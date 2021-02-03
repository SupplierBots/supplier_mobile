part of 'auth_forms_bloc.dart';

@freezed
abstract class AuthFormsState with _$AuthFormsState {
  const factory AuthFormsState({
    @required String error,
    @required bool hasError,
    @required bool isSubmitting,
    @required bool isCreatingAccount,
    @required bool success,
  }) = _AuthFormsState;

  factory AuthFormsState.initial() => const AuthFormsState(
        error: '',
        hasError: false,
        isSubmitting: false,
        isCreatingAccount: false,
        success: false,
      );
}
