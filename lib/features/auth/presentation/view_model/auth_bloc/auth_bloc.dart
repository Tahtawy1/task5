import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:nti_task5/features/auth/data/datasources/auth_remote_datasource_imp.dart';
import 'package:nti_task5/features/auth/data/repositories/auth_repository.dart';
import 'package:nti_task5/features/core/errors/firebase_error_mapper.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc()
    : authRepository = AuthRepository(
        authDataSource: AuthRemoteDatasourceImp(auth: FirebaseAuth.instance),
        authRemoteDatasource: AuthRemoteDatasourceImp(
          auth: FirebaseAuth.instance,
        ),
      ),
      super(AuthInitial()) {
    on<SignInEvent>(_signIn);
    on<SignUpEvent>(_signUp);
  }

  //* ===== Sign In =====
  Future<void> _signIn(SignInEvent event, Emitter<AuthState> emit) async {
    try {
      emit(SignInLoading());

      await authRepository.signIn(event.email, event.password);

      emit(SignInSuccess());
    } catch (e) {
      if (e is FirebaseAuthException) {
        emit(SignInFailure(errMessage: FirebaseErrorMapper.map(e.code)));
      } else {
        emit(SignInFailure(errMessage: e.toString()));
      }
    }
  }

  //* ===== Sign Up =====
  Future<void> _signUp(SignUpEvent event, Emitter<AuthState> emit) async {
    try {
      emit(SignUpLoading());

      await authRepository.signUp(event.name, event.email, event.password);

      emit(SignUpSuccess());
    } catch (e) {
      if (e is FirebaseAuthException) {
        emit(SignUpFailure(errMessage: FirebaseErrorMapper.map(e.code)));
      } else {
        log(e.toString());
        emit(SignUpFailure(errMessage: e.toString()));
      }
    }
  }
}
