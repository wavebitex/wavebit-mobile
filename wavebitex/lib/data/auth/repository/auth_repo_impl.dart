import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/repository/auth_repo.dart';
import 'package:wavebitex/data/auth/service/auth_service.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthService _authService;
  AuthRepoImpl(this._authService);

  @override
  Future<User?> signUp({
    required String fullName,
    required String email,
    required String password,
    required String phone,
  }) async {
    return await _authService.signUp(
        fullName: fullName, email: email, password: password, phone: phone);
  }

  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    return await _authService.signIn(email: email, password: password);
  }
}
