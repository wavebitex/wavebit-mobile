import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/repository/auth_repo.dart';
import 'package:wavebitex/data/core/failure/failure.dart';
import 'package:wavebitex/utils/Toast/toast_helper.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(const AuthState.initial());

  void signUp({
    required String fullName,
    required String email,
    required String password,
    required String phone,
  }) async {
    emit(const AuthState.signUpInProgress());

    try {
      User? user = await _authRepo.signUp(
          fullName: fullName, email: email, password: password, phone: phone);

      emit(AuthState.signUpSuccess(user));
      WBToast.showSuccess(title: 'Error', message: 'Account created successfuly');
    } on Failure catch (e) {
      emit(AuthState.signUpError(e.errorMessage));
      WBToast.showError(title: 'Error', message: e.errorMessage);
    } catch (e) {
      WBToast.showError(
          title: 'Error', message: 'Something went wrong, try again later of contact admin');
    }
  }

  void signIn({
    required String email,
    required String password,
  }) async {
    emit(const AuthState.signInInProgress());

    try {
      User? user = await _authRepo.signIn(email: email, password: password);

      emit(AuthState.signInSuccess(user));
      WBToast.showSuccess(title: 'Error', message: 'Sign in successfuly');
    } on Failure catch (e) {
      emit(AuthState.signInError(e.errorMessage));
      WBToast.showError(title: 'Error', message: e.errorMessage);
    } catch (e) {
      WBToast.showError(
          title: 'Error', message: 'Something went wrong, try again later of contact admin');
    }
  }
}
