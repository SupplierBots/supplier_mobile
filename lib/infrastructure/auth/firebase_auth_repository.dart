import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:supplier_mobile/domain/auth/auth_failure.dart';
import 'package:supplier_mobile/domain/auth/auth_repository.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/domain/auth/register_response.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';
import 'package:supplier_mobile/domain/auth/user.dart';
import 'package:supplier_mobile/infrastructure/auth/instances_check_response.dart';
import 'package:supplier_mobile/infrastructure/auth/remove_instance_response.dart';
import 'package:supplier_mobile/infrastructure/core/cloud_functions_helpers.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: AuthRepository)
class FirebaseAuthRepository implements AuthRepository {
  FirebaseAuthRepository(this._firebaseAuth, this._cloudFunctions);

  final FirebaseAuth _firebaseAuth;
  final FirebaseFunctions _cloudFunctions;

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> register(
      RegisterCredentials credentials) async {
    const url =
        'https://us-central1-safedrop-83b20.cloudfunctions.net/createAccount';

    try {
      final response = await Dio().post(url, data: credentials.toJson());
      final parsedResponse =
          RegisterResponse.fromJson(response.data as Map<String, dynamic>);
      if (parsedResponse.success) {
        return signIn(SignInCredentials(
          email: credentials.email,
          password: credentials.password,
        ));
      }
      switch (parsedResponse.message) {
        case 'Email already used':
          return left(const AuthFailure.emailAlreadyInUse());
        case 'Incorrect license key':
          return left(const AuthFailure.incorrectLicense());
        default:
          return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(
      SignInCredentials credentials) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: credentials.email,
        password: credentials.password,
      );
      final response =
          await _cloudFunctions.httpsCallable('checkMobileInstances')();
      final instancesCheck = InstancesCheckResponse.fromJson(response.toJson());
      if (instancesCheck.success) {
        return right(unit);
      }
      await _firebaseAuth.signOut();
      if (instancesCheck.error == 'max-instances-exceeded') {
        return left(AuthFailure.maxInstancesNumberExceeded(
            instancesCheck.maxInstances));
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final response =
          await _cloudFunctions.httpsCallable('removeMobileInstance')();

      final removeInstanceResponse =
          RemoveInstanceResponse.fromJson(response.toJson());

      if (!removeInstanceResponse.success) {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
    await _firebaseAuth.signOut();
    return right(unit);
  }
}
