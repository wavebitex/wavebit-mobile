import 'package:wavebitex/data/auth/model/user.dart';

abstract class AuthRepo {
  Future<User?> signUp({
    required String fullName,
    required String email,
    required String password,
    required String phone,
  });

  Future<User?> signIn({
    required String email,
    required String password,
  });
}
