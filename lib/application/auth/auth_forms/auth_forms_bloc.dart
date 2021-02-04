import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/auth/auth_failure.dart';
import 'package:supplier_mobile/domain/auth/auth_repository.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';

part 'auth_forms_event.dart';
part 'auth_forms_state.dart';
part 'auth_forms_bloc.freezed.dart';

@injectable
class AuthFormsBloc extends Bloc<AuthFormsEvent, AuthFormsState> {
  AuthFormsBloc(this._authRepository) : super(AuthFormsState.initial());

  final AuthRepository _authRepository;

  Stream<AuthFormsState> _performAuthAction(
    Future<Either<AuthFailure, Unit>> forwardedCall,
  ) async* {
    yield state.copyWith(
      isSubmitting: true,
    );
    final failureOrSuccess = await forwardedCall;
    yield state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  @override
  Stream<AuthFormsState> mapEventToState(
    AuthFormsEvent event,
  ) async* {
    yield* event.map(signInOrRegisterToggled: (e) async* {
      yield AuthFormsState.initial().copyWith(
        isCreatingAccount: !state.isCreatingAccount,
      );
    }, signInPressed: (e) async* {
      yield* _performAuthAction(_authRepository.signIn(e.credentials));
    }, createAccountPressed: (e) async* {
      yield* _performAuthAction(_authRepository.register(e.credentials));
    });
  }
}
