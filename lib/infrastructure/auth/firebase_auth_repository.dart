import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/auth/auth_exception.dart';
import 'package:supplier_mobile/domain/auth/auth_repository.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';
import 'package:supplier_mobile/domain/auth/user.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: AuthRepository)
class FirebaseAuthRepository implements AuthRepository {
  FirebaseAuthRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<User> getSignedInUser() async => _firebaseAuth.currentUser?.toDomain();

  @override
  Future<void> register(RegisterCredentials credentials) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<void> signIn(SignInCredentials credentials) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: credentials.email,
        password: credentials.password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        throw AuthException(AuthException.incorrectCredentials);
      } else {
        throw AuthException(AuthException.unknown);
      }
    } on Exception {
      throw AuthException(AuthException.unknown);
    }
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();
}
