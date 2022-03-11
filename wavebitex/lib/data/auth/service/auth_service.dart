abstract class AuthService {
  Future signUp({
    required String fullName,
    required String email,
    required String password,
    required String phone,
  });

  Future signIn({
    required String email,
    required String password,
    required String phone,
  });
}
