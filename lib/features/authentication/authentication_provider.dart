import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/features/authentication/user_details_model.dart';

class AuthenticationProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _waitingForResponse = false;
  bool get waitingForResponse => _waitingForResponse;

  String _errorMessage;
  String get errorMessage => _errorMessage;
  bool get hasError => errorMessage != null;

  void _setResponseStatus(bool status) {
    _waitingForResponse = status;
    notifyListeners();
  }

  void _setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  UserDetails _setUserFromFirebase(User user) {
    if (user == null) {
      return null;
    }
    return UserDetails(
      uid: user.uid,
      email: user.email,
    );
  }

  Stream<UserDetails> get onAuthStateChanged {
    return _auth.authStateChanges().map(_setUserFromFirebase);
  }

  Future<void> signIn(String email, String password) async {
    _setResponseStatus(true);
    _setErrorMessage(null);
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        _setErrorMessage('Invalid email or password.');
      } else {
        _setErrorMessage('Something went wrong. Try again later.');
      }
    }
    _setResponseStatus(false);
  }

  UserDetails getCurrentUser() {
    return _setUserFromFirebase(_auth.currentUser);
  }

  Future<void> signOut() async {
    return _auth.signOut();
  }
}
