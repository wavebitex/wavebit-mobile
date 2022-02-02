import 'package:flutter/material.dart';

class WBColors {
  static Color primary() {
    return hexToColor("#3150A7");
  }
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
