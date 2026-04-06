import 'package:firebase_auth/firebase_auth.dart';
import 'package:nti_task5/features/auth/data/datasources/auth_remote_datasource.dart';

class AuthRepository {
  final AuthRemoteDatasource authDataSource;

  AuthRepository({required this.authDataSource, required authRemoteDatasource});

  //* ===== Sign Up =====
  Future<void> signUp(String name, String email, String password) {
    return authDataSource.signUp(name, email, password);
  }

  //* ===== Sign In =====
  Future<void> signIn(String email, String password) {
    return authDataSource.signIn(email, password);
  }
}
