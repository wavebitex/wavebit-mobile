import 'package:flutter/material.dart';
import 'package:wavebitex/ui/auth/sign_in.dart';
import 'package:wavebitex/ui/auth/sign_up.dart';

class HaveAccount extends StatelessWidget {
  final bool alreadyHaveAccount;
  const HaveAccount({Key? key, this.alreadyHaveAccount = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           Text(
            alreadyHaveAccount
            ? 'Already have an account?'
            : ' Don\'t have an account?'),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              alreadyHaveAccount
                  ? Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => SignUpPage()))
                  : Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => SignInPage()));
            },
            child: Text(
              alreadyHaveAccount ? 'Sign Up' : 'Sign In',
              style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
