part of 'auth_forms_bloc.dart';

@freezed
abstract class AuthFormsState implements _$AuthFormsState {
  const factory AuthFormsState({
    @required bool isSubmitting,
    @required bool isCreatingAccount,
    @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _AuthFormsState;

  const AuthFormsState._();

  factory AuthFormsState.initial() => AuthFormsState(
        isSubmitting: false,
        isCreatingAccount: false,
        failureOrSuccessOption: none(),
      );

  bool get isSuccess => failureOrSuccessOption.fold(
        () => false,
        (either) => either.isRight(),
      );
}
