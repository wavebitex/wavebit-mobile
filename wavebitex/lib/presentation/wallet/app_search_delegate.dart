import 'package:flutter/material.dart';

class AppSearchDelegate extends StatelessWidget {
  const AppSearchDelegate({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
 Expanded(
   child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search token',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
 ),
         const  Icon(Icons.search)
        ],
      ),
    );
  }
}