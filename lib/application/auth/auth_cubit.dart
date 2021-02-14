import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/auth/auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepository) : super(const AuthState.initial());

  final AuthRepository _authRepository;

  Future<void> authCheckRequested() async {
    final userOption = await _authRepository.getSignedInUser();
    final state = userOption.fold(
      () => const AuthState.unauthenticated(),
      (user) => const AuthState.authenticated(),
    );
    emit(state);
  }

  Future<void> pressedSignOutButton() async {
    emit(const AuthState.signOutAttempt());
    final succesOrFailure = await _authRepository.signOut();
    final state = succesOrFailure.fold(
      (f) => const AuthState.authenticated(),
      (s) => const AuthState.unauthenticated(),
    );
    emit(state);
  }
}
