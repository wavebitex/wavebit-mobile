import 'package:flutter/material.dart';

class KYCItmeRow extends StatelessWidget {
  final String title;
  final IconData icon;
  const KYCItmeRow({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.4)),
              borderRadius: BorderRadius.circular(5)),
          child: Icon(icon),
        ),
      ],
    );
  }
}
