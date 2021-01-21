import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/features/authentication/user_details_model.dart';

class FirebaseAuthService with ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  UserDetails _userFromFirebase(User user) {
    if (user == null) {
      return null;
    }
    return UserDetails(
      uid: user.uid,
      email: user.email,
    );
  }

  Stream<UserDetails> get onAuthStateChanged {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<UserDetails> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      return _userFromFirebase(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }

      return null;
    }
  }

  Future<UserDetails> currentUser() async {
    return _userFromFirebase(_firebaseAuth.currentUser);
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }
}
