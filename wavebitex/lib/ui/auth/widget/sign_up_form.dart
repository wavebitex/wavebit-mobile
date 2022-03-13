import 'package:flutter/material.dart';
import 'package:wavebitex/data/auth/service/auth_service.dart';
import 'package:wavebitex/data/core/di/service_locator.dart';
import 'package:wavebitex/ui/landing_page/index.dart';
import 'package:wavebitex/widgets/action_button.dart';
import 'package:wavebitex/widgets/agreement_checkbox.dart';
import 'package:wavebitex/widgets/app_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final SizedBox _spacer = const SizedBox(height: 20);
  bool _isUserAgreed = false;

  void _handleAgreement() {
    setState(() {
      _isUserAgreed = !_isUserAgreed;
    });
  }

  void onSubmit() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          _spacer,
          const AppTextField(
            title: 'Email',
            suffixIcon: Icons.email,
          ),
          _spacer,
          const AppTextField(
            title: 'Password',
            suffixIcon: Icons.password,
          ),
          _spacer,
          const AppTextField(
            title: 'Confirm Password',
            suffixIcon: Icons.password,
          ),
          _spacer,
          _spacer,
          AgreementCheckbox(
            onChange: (_isUserAgreed) => _handleAgreement(),
            value: _isUserAgreed,
          ),
          _spacer,
          ActionButton(title: 'Create Account', onTap: () => onSubmit())
        ],
      ),
    );
  }
}
