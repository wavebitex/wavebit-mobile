import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final IconData suffixIcon;
  const AppTextField({Key? key,required this.title, required this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          decoration: InputDecoration(
              hintText: title,
              suffixIcon: Icon(suffixIcon, color: WBColors.inputBorderColor),
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: WBColors.inputBorderColor)),
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: WBColors.inputBorderColor)))),
    );
  }
}
