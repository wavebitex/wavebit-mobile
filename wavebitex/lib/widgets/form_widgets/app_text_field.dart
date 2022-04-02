import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class AppTextField extends StatelessWidget {
  final AutovalidateMode autovalidateMode;
  final TextEditingController? controller;
  final String? Function(String? val)? validator;
  final String title;
  final IconData? suffixIcon;
  const AppTextField(
      {Key? key, required this.title,  this.suffixIcon, this.controller, this.validator, this.autovalidateMode = AutovalidateMode.disabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: validator,
        autovalidateMode: autovalidateMode,
        decoration: InputDecoration(
            hintText: title,
            suffixIcon: Icon(suffixIcon, color: WBColors.inputBorderColor),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: WBColors.inputBorderColor)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: WBColors.inputBorderColor))));
  }
}
