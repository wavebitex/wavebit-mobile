import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/service/auth_service.dart';
import 'package:wavebitex/data/core/model/api_response.dart';
import 'package:wavebitex/data/core/remote/endpoints.dart';
import 'package:wavebitex/data/core/remote/http_client.dart';

class AuthServiceImpl extends AuthService {
  final HttpClient _client;

  AuthServiceImpl(this._client);
  @override
  Future<User?> signUp({
    required String fullName,
    required String email,
    required String password,
    required String phone,
  }) async {
    Map<String, dynamic> _data = {
      'fullName': fullName,
      'email': email,
      'password': password,
      'phone': phone,
    };

    var res = await _client.post(Endpoints.signUp, _data);
    if (res != null) {
      ApiResponse apiResponse = ApiResponse.fromJson(res.data);
      User user = User.fromJson(apiResponse.data);
      
      return user;
    }
  }

  @override
  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> _data = {
      'email': email,
      'password': password,
    };

    var res = await _client.post(Endpoints.signIn, _data);
    if (res != null) {
      ApiResponse apiResponse = ApiResponse.fromJson(res.data);
      User user = User.fromJson(apiResponse.data);

      return user;
    }
  }
}
