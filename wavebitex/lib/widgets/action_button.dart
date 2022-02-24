import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class ActionButton extends StatefulWidget {
  final String title;
  final  Function() onTap;
  const ActionButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        child: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(color: WBColors.primary, borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
