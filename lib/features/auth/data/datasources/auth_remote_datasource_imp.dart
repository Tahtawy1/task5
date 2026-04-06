import 'package:firebase_auth/firebase_auth.dart';
import 'package:nti_task5/features/core/errors/firebase_error_mapper.dart';
import 'auth_remote_datasource.dart';

class AuthRemoteDatasourceImp implements AuthRemoteDatasource {
  final FirebaseAuth auth;

  AuthRemoteDatasourceImp({required this.auth});

  @override
  Future<void> signUp(String? name, String email, String password) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final firebaseUser = userCredential.user;

      if (firebaseUser == null) return;
    } catch (e) {
      if (e is FirebaseAuthException) {
        throw Exception(FirebaseErrorMapper.map(e.code));
      }
      throw Exception("Unexpected error occurred");
    }
  }

  @override
  Future<void> signIn(String email, String password) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final firebaseUser = userCredential.user;

      if (firebaseUser == null) return;
    } catch (e) {
      if (e is FirebaseAuthException) {
        throw Exception(FirebaseErrorMapper.map(e.code));
      }
      throw Exception("Unexpected error occurred");
    }
  }
}
