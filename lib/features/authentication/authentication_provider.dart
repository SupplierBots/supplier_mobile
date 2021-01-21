import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/features/authentication/user_details_model.dart';

class AuthenticationProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _waitingForResponse = false;
  bool get waitingForResponse => _waitingForResponse;

  void _setResponseStatus(bool status) {
    _waitingForResponse = status;
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
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
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
