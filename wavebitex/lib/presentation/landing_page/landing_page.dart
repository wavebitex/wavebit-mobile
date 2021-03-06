import 'package:flutter/material.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/presentation/kyc/index.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';
import 'package:wavebitex/widgets/credit_card.dart';
import 'package:wavebitex/widgets/wavebit_card.dart';

class LandingPage extends StatelessWidget {
   final User user;
   final Function drawerHandler;
  const LandingPage({ Key? key, required this.user, required this.drawerHandler }) : super(key: key);

  Widget _buildWelcomeBar(Function onAvatartClick) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'welcome'.toUpperCase(),
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        user.fullName?.toUpperCase() ?? 'User name',
                        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('@abcdef')
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  onAvatartClick();
                },
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      border: Border.all(color: WBColors.primary, width: 2),
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: AssetImage('assets/img/profile_avater1.png'))),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReferAFriend(double width) {
    return WBCard(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 90,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/img/referal_image.png')),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Refer a friend',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 15),
              SizedBox(
                  width: width,
                  child: const Text(
                      'You can copy directly the referal link or share directly with your contacts')),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCheckListCard(
      {required String title,
      required String subTitle,
      required String content,
      required Function onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: WBCard(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Row(children: [
                  Text(subTitle),
                  const SizedBox(width: 5),
                  Text(
                    content,
                    style: const TextStyle(fontSize: 12),
                  ),
                ])
              ],
            ),
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }

  Widget _buildChartCard({required String coin, required num percent}) {
    return Column(
      children: [
        WBCard(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                        image: AssetImage('assets/img/bitcoin_logo.png'), fit: BoxFit.cover)),
              ),
              Column(
                children: [
                  Text(coin.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(coin, style: const TextStyle(color: Colors.red)),
                ],
              ),
              const Text('.............'),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    '\$38,769',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

   

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(children: [
          const SizedBox(height: 40),
          _buildWelcomeBar(() {
            drawerHandler();
          }),
          const SizedBox(height: 10),
          Container(
            height: _size.height - 220,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AppCreditCard(),
                  const SizedBox(height: 20),
                  _buildReferAFriend(_size.width - 170),
                  const SizedBox(height: 30),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Wavebit Checklist',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      )),
                  const SizedBox(height: 15),
                  _buildCheckListCard(
                      title: 'Verify KYC',
                      subTitle: 'Tier 1',
                      content: 'Unlimited crypto swaps and withdrawals',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KYCPage()));
                      }),
                  const SizedBox(height: 2),
                  _buildCheckListCard(
                      onTap: () async {},
                      title: 'Enable 2FA',
                      subTitle: '',
                      content: 'Enable two Factor Authentication for more security'),
                  const SizedBox(height: 30),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Chart',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      )),
                  const SizedBox(height: 15),
                  Column(
                      children:
                          List.generate(5, (index) => _buildChartCard(coin: 'btc', percent: 13.3))
                              .toList()),
                ],
              ),
            ),
          ),
        ]),
    );
  }
}