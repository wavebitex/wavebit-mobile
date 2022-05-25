import 'package:wavebitex/data/auth/model/user.dart';

abstract class AuthRepo {
  Future<User?> signUp({
    required String email,
    required String password,
    required String phone,
    required String userName,
  });

  Future<User?> signIn({
    required String email,
    required String password,
  });
}
