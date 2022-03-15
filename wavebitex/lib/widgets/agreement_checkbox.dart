import 'package:flutter/material.dart';

class AgreementCheckbox extends StatelessWidget {
  final void Function(bool?) onChange;
  final bool value;
  const AgreementCheckbox({Key? key, required this.onChange, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChange),
        const SizedBox(width: 5),
        SizedBox(
            width: _size.width - 135,
            child: const Text(
                'I agree that I am 18 years of age or older and agree to the User Agreeement Policy')),
      ],
    );
  }
}
