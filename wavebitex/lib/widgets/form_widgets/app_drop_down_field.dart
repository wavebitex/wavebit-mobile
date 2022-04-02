import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class AppDropDwonField extends StatefulWidget {
  final List<String> items;
  final String? hint;
  const AppDropDwonField({Key? key, required this.items, this.hint}) : super(key: key);

  @override
  State<AppDropDwonField> createState() => _AppDropDwonFieldState();
}

class _AppDropDwonFieldState extends State<AppDropDwonField> {
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(color:WBColors.inputBorderColor),
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            value: selectedItem,
            elevation: 0,
            isExpanded: true,
            hint: Text(widget.hint!),
            items:
                widget.items.map((item) => DropdownMenuItem(value: item, child: Text(item))).toList(),
            onChanged: (val) {
              print(val);
              setState(() {
                selectedItem = val;
              });
            }),
      ),
    );
  }
}
