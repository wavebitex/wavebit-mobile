part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.signUpInProgress() = _SignUPInProgress;
  const factory AuthState.signUpSuccess(User? user) = _SignUpSuccess;
  const factory AuthState.signUpError(String errorMessage) = _SignUpError;
  const factory AuthState.signInInProgress() = _SignInInProgress;
  const factory AuthState.signInSuccess(User? user) = _SignInSuccess;
  const factory AuthState.signInError(String errorMessage) = _SignInError;
}
