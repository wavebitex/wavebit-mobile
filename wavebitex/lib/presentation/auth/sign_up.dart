import 'package:flutter/material.dart';
import 'package:wavebitex/presentation/auth/widget/have_account.dart';
import 'package:wavebitex/presentation/auth/widget/sign_up_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: ListView(
          children: [
            SizedBox(height: _size.height * 0.1),
             Center(child: Image.asset('assets/img/logo.png', height: 70,)),
            SizedBox(height: _size.height * 0.075,),
            Container(
              alignment: Alignment.center,
              child: const Text('Create your account', style: TextStyle(fontWeight: FontWeight.bold),)),
            const SignUpForm(),
            const SizedBox(height: 10),
            const HaveAccount(),
          ],
        ),
      ),
    );
  }
}
