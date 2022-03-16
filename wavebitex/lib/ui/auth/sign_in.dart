import 'package:flutter/material.dart';
import 'package:wavebitex/ui/auth/widget/have_account.dart';
import 'package:wavebitex/ui/auth/widget/sign_in_form.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              child: const Text('Login to Wavebit Exchange', style: TextStyle(fontWeight: FontWeight.bold),)),
            const SignInForm(),
            const SizedBox(height: 10),
            const HaveAccount(alreadyHaveAccount: true,),
          ],
        ),
      ),
    );
  }
}
