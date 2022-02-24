import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wavebitex/ui/auth/sign_up.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _onScreenReady() async {
    Timer( const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
    });
  }

  @override
  void initState() {
    _onScreenReady();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WBColors.primary,
      body: const Center(
        child: Text(
          'Wavebit Exchange',
          style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
