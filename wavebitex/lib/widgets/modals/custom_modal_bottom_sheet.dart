import 'package:flutter/material.dart';

class AppModal {
  static void showMaterialModalBottomSheet(
      {required BuildContext context,
      bool isActionModal = false,
      required String title,
      Function? action}) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          action!();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Text(
                            "Yes",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red, borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: Text(
                            "No",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green, borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
  }
}
