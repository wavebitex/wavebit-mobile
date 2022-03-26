import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class VerificationBadge extends StatelessWidget {
  const VerificationBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 30,
          width: 100,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    color: WBColors.inActiveColor.withOpacity(.3),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Verified',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Positioned(
                top: -5,
                right: -15,
                child: Icon(
                  Icons.brightness_5,
                  size: 35,
                  color: WBColors.inActiveColor.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 3,
                right: -7,
                child: Icon(
                  Icons.check,
                  size: 18,
                  color: WBColors.inActiveColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
