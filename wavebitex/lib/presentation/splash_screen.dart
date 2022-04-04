import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wavebitex/presentation/auth/auth_switch.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _onScreenReady() async {
    Timer( const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AuthSwitch()));
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Center(child: Image.asset('assets/img/logo.png', height: 70,)),
          const SizedBox(height: 15),
         const  Text(
            'Wavebit Exchange',
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
