import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/repository/auth_repo.dart';
import 'package:wavebitex/data/core/failure/failure.dart';
import 'package:wavebitex/data/core/dao/dao.dart';
import 'package:wavebitex/presentation/auth/helpers/auth_helpers.dart';
import 'package:wavebitex/utils/Toast/toast_helper.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(const AuthState.initial());

  void signUp({
    required String email,
    required String password,
    required String userName,
    required String phone,
  }) async {
    emit(const AuthState.signUpInProgress());

    try {
      User? user = await _authRepo.signUp(
          email: email, password: password, phone: phone, userName: userName);

      emit(AuthState.signUpSuccess(user));
      await Dao().saveUserObj(user!);
      await AuthHelpers.setSuccessAuthStatus();
      WBToast.showSuccess(title: '', message: 'Account created successfuly');
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
      await AuthHelpers.setSuccessAuthStatus();
      await AuthHelpers.setSuccessAuthStatus();
      await Dao().saveUserObj(user!);

      WBToast.showSuccess(title: '', message: 'Sign in successfuly');
    } on Failure catch (e) {
      emit(AuthState.signInError(e.errorMessage));
      WBToast.showError(title: 'Error', message: e.errorMessage);
    } catch (e) {
      WBToast.showError(
          title: 'Error', message: 'Something went wrong, try again later of contact admin');
    }
  }

  void reset() {
    emit(AuthState.initial());
  }
}
