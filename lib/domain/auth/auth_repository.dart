import 'package:flutter/material.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';
import 'package:supplier_mobile/domain/auth/user.dart';

abstract class AuthRepository {
  Future<User> getSignedInUser();

  Future<void> register(RegisterCredentials credentials);

  Future<void> signIn(SignInCredentials credentials);

  Future<void> signOut();
}
