import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/auth/auth_failure.dart';
import 'package:supplier_mobile/domain/auth/auth_repository.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';

part 'auth_forms_state.dart';
part 'auth_forms_cubit.freezed.dart';

@injectable
class AuthFormsCubit extends Cubit<AuthFormsState> {
  AuthFormsCubit(this._authRepository) : super(AuthFormsState.initial());
  final AuthRepository _authRepository;

  Future<void> _performAuthAction(
    Future<Either<AuthFailure, Unit>> forwardedCall,
  ) async {
    emit(state.copyWith(
      isSubmitting: true,
    ));
    final failureOrSuccess = await forwardedCall;
    emit(state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  void signInOrRegisterToggled() {
    emit(AuthFormsState.initial().copyWith(
      isCreatingAccount: !state.isCreatingAccount,
    ));
  }

  void signInPressed(SignInCredentials credentials) =>
      _performAuthAction(_authRepository.signIn(credentials));

  void createAccountPressed(RegisterCredentials credentials) =>
      _performAuthAction(_authRepository.register(credentials));
}
