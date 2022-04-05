import 'package:flutter/material.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/core/dao/dao.dart';
import 'package:wavebitex/presentation/auth/sign_up.dart';
import 'package:wavebitex/presentation/landing_page/home.dart';

class AuthSwitch extends StatefulWidget {
  const AuthSwitch({Key? key}) : super(key: key);

  @override
  State<AuthSwitch> createState() => _AuthSwitchState();
}

class _AuthSwitchState extends State<AuthSwitch> {
  void checkAuth() async {
    User? saveUser = await Dao().getUserObj();
    print("This is the authUser ======> $saveUser");

    if (saveUser != null) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Home(
                    user: saveUser,
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
