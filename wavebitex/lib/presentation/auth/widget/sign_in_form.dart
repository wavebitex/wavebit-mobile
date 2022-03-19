import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/service/auth_service.dart';
import 'package:wavebitex/data/core/di/service_locator.dart';
import 'package:wavebitex/presentation/auth/cubit/auth_cubit.dart';
import 'package:wavebitex/presentation/landing_page/index.dart';
import 'package:wavebitex/utils/validator/form_utils.dart';
import 'package:wavebitex/widgets/action_button.dart';
import 'package:wavebitex/widgets/app_text_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final SizedBox _spacer = const SizedBox(height: 20);
  bool _isLoading = false;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthService _authService = sl.get<AuthService>();

  void onSubmit(BuildContext innerContext) async {
    if (_formKey.currentState!.validate()) {
      String _email = emailController.text;
      String _password = passwordController.text;

      innerContext.read<AuthCubit>().signIn(email: _email, password: _password);
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
          BlocBuilder<AuthCubit, AuthState>(
            builder: (innerContext, state) {
              final state = innerContext.watch<AuthCubit>().state;

              return state.maybeWhen(
                  signInInProgress: () {
                    return ActionButton(
                      title: 'Log In',
                      onTap: () => onSubmit(innerContext),
                      isLoading: true,
                    );
                  },
                  signInSuccess: (user) {
                    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => Home(user: user!)));
                    });
                    return const SizedBox();
                  },
                  orElse: () => ActionButton(
                        title: 'Log In',
                        onTap: () => onSubmit(innerContext),
                      ));
            },
          )
        ],
      ),
    );
  }
}
