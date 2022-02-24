import 'package:flutter/material.dart';

class WBCard extends Container {
  final double height;
  final Widget? child;
  WBCard({Key? key, this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 3.0, spreadRadius: 0.05)
          ]),
      child: child,
    );
  }
}
