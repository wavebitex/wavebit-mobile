import 'package:flutter/material.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/service/auth_service.dart';
import 'package:wavebitex/data/core/di/service_locator.dart';
import 'package:wavebitex/ui/landing_page/index.dart';
import 'package:wavebitex/utils/Toast/toast_helper.dart';
import 'package:wavebitex/utils/validator/form_utils.dart';
import 'package:wavebitex/widgets/action_button.dart';
import 'package:wavebitex/widgets/agreement_checkbox.dart';
import 'package:wavebitex/widgets/app_text_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final SizedBox _spacer = const SizedBox(height: 20);
  bool _isUserAgreed = false;
  bool _isLoading = false;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final AuthService _authService = sl.get<AuthService>();

  void _handleAgreement() {
    setState(() {
      _isUserAgreed = !_isUserAgreed;
    });
  }

  void onSubmit() async {
    if (_formKey.currentState!.validate()) {
      // String _email = emailController.text;
      // String _password = passwordController.text;

      // if (_isUserAgreed == true) {
      //   setState(() {
      //     _isLoading = true;
      //   });
      //   User? _user = await _authService.signUp(
      //       fullName: _fullName, email: _email, password: _password, phone: '070');
      //   setState(() {
      //     _isLoading = false;
      //   });

      //   _user == null
      //       ? () {}
      //       : Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(user: _user,)));
      // } else {
      //   WBToast.showError(title: 'Error', message: 'Kindly accept terms and condition to proceed');
      // }
      print('This form is valid for sign in ');
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _spacer,
          AppTextField(
            controller: emailController,
            title: 'Email',
            suffixIcon: Icons.email,
            autovalidateMode: autovalidateMode,
            validator: (val) {
              if (FormUtils.isValidEmail(val)) {
                return null;
              } else {
                return 'Invalid Email';
              }
              ;
            },
          ),
          _spacer,
          AppTextField(
            controller: passwordController,
            title: 'Password',
            suffixIcon: Icons.password,
            autovalidateMode: autovalidateMode,
            validator: (val) {
              return (FormUtils.hasMinLength(val, minLength: 6))
                  ? null
                  : 'Password lenght must be greater than 5';
            },
          ),
          _spacer,
          _spacer,
       
          ActionButton(
            title: 'Log In',
            onTap: () => onSubmit(),
            isLoading: _isLoading,
          )
        ],
      ),
    );
  }
}
