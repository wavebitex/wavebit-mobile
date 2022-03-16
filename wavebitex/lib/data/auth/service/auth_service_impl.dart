import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/service/auth_service.dart';
import 'package:wavebitex/data/core/failure/failure.dart';
import 'package:wavebitex/data/core/model/api_response.dart';
import 'package:wavebitex/data/core/remote/endpoints.dart';
import 'package:wavebitex/data/core/remote/http_client.dart';
import 'package:wavebitex/utils/Toast/toast_helper.dart';

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
    try {
      Map<String, dynamic> _data = {
        'fullName': fullName,
        'email': email,
        'password': password,
        'phone': phone,
      };

      var res = await _client.post(Endpoints.signUp, _data);
      if (res != null) {
        ApiResponse apiResponse = ApiResponse.fromJson(res.data);
        WBToast.showSuccess(title: 'Sign up', message: apiResponse.message);
        User user = User.fromJson(apiResponse.data);

        print('This is the user ============> ${user.toJson()}');

        return user;
      }
    } on Failure catch (e) {
      WBToast.showError(title: 'Error', message: e.errorMessage);
    } catch (e) {
      print('An Error occured during account creation =======> $e');
      return null;
    }
  }

  @override
  Future<User?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      Map<String, dynamic> _data = {
        'email': email,
        'password': password,
      };

      var res = await _client.post(Endpoints.signIn, _data);
      if (res != null) {
        ApiResponse apiResponse = ApiResponse.fromJson(res.data);
        WBToast.showSuccess(title: 'Sign up', message: apiResponse.message);
        User user = User.fromJson(apiResponse.data);

        print('Signed in user ============> ${user.toJson()}');

        return user;
      }
    } on Failure catch (e) {
      WBToast.showError(title: 'Error', message: e.errorMessage);
      print('An Error occured during sign in =======> $e');
      return null;
    }
  }
}
