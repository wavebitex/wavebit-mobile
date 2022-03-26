import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class CircleTick extends StatelessWidget {
  const CircleTick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(color: WBColors.primary, borderRadius: BorderRadius.circular(10)),
      child: Icon(Icons.check, color: Colors.white, size: 14),
    );
  }
}
