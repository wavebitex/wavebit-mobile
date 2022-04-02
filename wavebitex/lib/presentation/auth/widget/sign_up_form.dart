import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wavebitex/data/auth/repository/auth_repo.dart';
import 'package:wavebitex/data/core/di/service_locator.dart';
import 'package:wavebitex/presentation/auth/auth_switch.dart';
import 'package:wavebitex/presentation/auth/cubit/auth_cubit.dart';
import 'package:wavebitex/utils/Toast/toast_helper.dart';
import 'package:wavebitex/utils/validator/form_utils.dart';
import 'package:wavebitex/widgets/action_button.dart';
import 'package:wavebitex/widgets/agreement_checkbox.dart';
import 'package:wavebitex/widgets/form_widgets/app_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final SizedBox _spacer = const SizedBox(height: 20);
  bool _isUserAgreed = false;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void _handleAgreement() {
    setState(() {
      _isUserAgreed = !_isUserAgreed;
    });
  }

  void onSubmit(BuildContext innerContext) async {
    if (_formKey.currentState!.validate()) {
      String _email = emailController.text;
      String _fullName = fullNameController.text;
      String _password = passwordController.text;

      if (_isUserAgreed == true) {
        innerContext
            .read<AuthCubit>()
            .signUp(fullName: _fullName, email: _email, password: _password, phone: '070');
      } else {
        WBToast.showError(title: 'Error', message: 'Kindly accept terms and condition to proceed');
      }
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final AuthRepo _authReop = sl.get<AuthRepo>();

    return Form(
      key: _formKey,
      child: Column(
        children: [
          _spacer,
          AppTextField(
            controller: fullNameController,
            title: 'Full Name',
            suffixIcon: Icons.password,
            autovalidateMode: autovalidateMode,
            validator: (val) {
              return (FormUtils.hasMinLength(val, minLength: 2))
                  ? null
                  : 'Full name lenght must be greater than 2';
            },
          ),
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
          AppTextField(
            controller: confirmPasswordController,
            title: 'Confirm Password',
            suffixIcon: Icons.password,
            autovalidateMode: autovalidateMode,
            validator: (val) {
              if (passwordController.text != confirmPasswordController.text) {
                return 'Passwords do not match';
              } else {
                return null;
              }
            },
          ),
          _spacer,
          _spacer,
          AgreementCheckbox(
            onChange: (_isUserAgreed) => _handleAgreement(),
            value: _isUserAgreed,
          ),
          _spacer,
          BlocBuilder<AuthCubit, AuthState>(
            builder: (innerContext, state) {
              final state = innerContext.watch<AuthCubit>().state;
              return state.maybeWhen(
                  signUpInProgress: () {
                    return ActionButton(
                      title: 'Create Account',
                      onTap: () => onSubmit(innerContext),
                      isLoading: true,
                    );
                  },
                  signUpSuccess: (user) {
                    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthSwitch(user: user!)));
                    });
                    return const SizedBox();
                  },
                  orElse: () => ActionButton(
                        title: 'Create Account',
                        onTap: () => onSubmit(innerContext),
                      ));
            },
          )
        ],
      ),
    );
  }
}
