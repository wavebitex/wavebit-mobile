import 'package:shared_preferences/shared_preferences.dart';
import 'package:wavebitex/utils/constants.dart';

class AuthHelpers {
  static setSuccessAuthStatus() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(Constants.IS_AUTHENTICATED, true);
  }

  static getAuthStatus() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isAuthenticated = await prefs.getBool(Constants.IS_AUTHENTICATED);
    return isAuthenticated;
  }

  static logOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(Constants.IS_AUTHENTICATED);
  }
}
