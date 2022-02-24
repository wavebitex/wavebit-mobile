import 'package:flutter/material.dart';

class WBColors {
  static Color primary = hexToColor("#3150A7");
  static Color inputBorderColor = hexToColor("#B4B4B4");
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
