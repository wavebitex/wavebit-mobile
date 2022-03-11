import 'package:wavebitex/data/auth/service/auth_service.dart';
import 'package:wavebitex/data/core/remote/endpoints.dart';
import 'package:wavebitex/data/core/remote/http_client.dart';

class AuthServiceImpl extends AuthService {
  final HttpClient _client;

  AuthServiceImpl(this._client);
  @override
  Future signUp({
    required String fullName,
    required String email,
    required String password,
    required String phone,
  }) async {
    try {
      Map<String, dynamic> _data = {
        'fullName': fullName,
        'email': email,
        'password': password,
        'phone': phone,
      };

      var res = await _client.post(Endpoints.signUp, _data);
      print('Signup success =============================>$res');
      return res;
    } catch (e) {
      print('An Error occured during account creation =======> $e');
      return null;
    }
  }

  @override
  Future signIn({
    required String email,
    required String password,
    required String phone,
  }) async {}
}
