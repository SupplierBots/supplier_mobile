class AuthException implements Exception {
  AuthException(this.message);
  String message;

  static const String incorrectCredentials = 'INCORRECT_CREDENTIALS';
  static const String unknown = 'UNKNOWN';
}
