import 'package:flutter/material.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/presentation/auth/sign_up.dart';
import 'package:wavebitex/presentation/landing_page/index.dart';

import 'helpers/auth_helpers.dart';

class AuthSwitch extends StatefulWidget {
  final User? user;
  const AuthSwitch({Key? key, this.user}) : super(key: key);

  @override
  State<AuthSwitch> createState() => _AuthSwitchState();
}

class _AuthSwitchState extends State<AuthSwitch> {
  void checkAuth() async {
    bool? isAuthenticated = await AuthHelpers.getAuthStatus();

    if (isAuthenticated != null && isAuthenticated) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Home(
                    user: widget.user!,
                  )));
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
    }
  }

  @override
  void initState() {
    checkAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
