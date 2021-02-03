import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:supplier_mobile/domain/auth/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      uid: uid,
      email: email,
    );
  }
}
