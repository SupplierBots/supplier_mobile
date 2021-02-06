import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/auth/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const Initial());

  final AuthRepository _authRepository;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authRepository.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) => const AuthState.authenticated(),
        );
      },
      pressedSignOutButton: (e) async* {
        yield const AuthState.signOutAttempt();
        final succesOrFailure = await _authRepository.signOut();
        yield succesOrFailure.fold(
          (f) => const AuthState.authenticated(),
          (s) => const AuthState.unauthenticated(),
        );
      },
    );
  }
}
