import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDatasource {
  /// Login with email and password
  Future<void> signIn(String email, String password);

  /// Create new account with email and password
  Future<void> signUp(String? name, String email, String password);
}
