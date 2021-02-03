import 'package:dartz/dartz.dart';
import 'package:supplier_mobile/domain/auth/auth_failure.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';
import 'package:supplier_mobile/domain/auth/user.dart';

abstract class AuthRepository {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> register(RegisterCredentials credentials);

  Future<Either<AuthFailure, Unit>> signIn(SignInCredentials credentials);

  Future<void> signOut();
}
