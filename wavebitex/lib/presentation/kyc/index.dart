import 'package:flutter/material.dart';
import 'package:wavebitex/presentation/kyc/kyc_personal_info.dart';
import 'package:wavebitex/presentation/kyc/widgets/kyc_item_row.dart';
import 'package:wavebitex/presentation/kyc/widgets/verification_badge.dart';
import 'package:wavebitex/widgets/circle_tick.dart';

class KYCPage extends StatelessWidget {
  const KYCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KYC Verification',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black.withOpacity(0.5)),
      ),
      body: Container(
        height: _size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            VerificationBadge(),
            Container(
              height: _size.height - 165,
              child: ListView(
                children: [
                  SizedBox(height: 40),
                  KYCItmeRow(
                    title: 'Personal Information',
                    icon: Icons.person_add_alt_1,
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => PersonalInfoKyc()));
                    },
                  ),
                  SizedBox(height: 20),
                  KYCItmeRow(
                    title: 'Government issued ID',
                    icon: Icons.file_upload_outlined,
                  ),
                  SizedBox(height: 20),
                  KYCItmeRow(
                    title: 'Facial recognition',
                    icon: Icons.center_focus_strong_outlined,
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Features and Limits',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black.withOpacity(.15)),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleTick(),
                            SizedBox(width: 10),
                            Text(
                              "Flat Limits",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "       Deposit",
                              style: TextStyle(color: Colors.black.withOpacity(.7)),
                            ),
                            Text(
                              "\$50k daily",
                              style: TextStyle(color: Colors.black.withOpacity(.7)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "       Withdrawal",
                              style: TextStyle(color: Colors.black.withOpacity(.7)),
                            ),
                            Text(
                              "\$50k daily",
                              style: TextStyle(color: Colors.black.withOpacity(.7)),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            CircleTick(),
                            SizedBox(width: 10),
                            Text(
                              "P2P",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "       P2p",
                              style: TextStyle(color: Colors.black.withOpacity(.7)),
                            ),
                            Text(
                              "\$50k daily",
                              style: TextStyle(color: Colors.black.withOpacity(.7)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Requirments',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 125,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(.15)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleTick(),
                            SizedBox(width: 10),
                            Text(
                              "Personal Information",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            CircleTick(),
                            SizedBox(width: 10),
                            Text(
                              "Government ID",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            CircleTick(),
                            SizedBox(width: 10),
                            Text(
                              "Face ID",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
