import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';
import 'package:wavebitex/widgets/bottom_nav.dart';

import 'app_search_delegate.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  Widget _buildPinButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      decoration:
          BoxDecoration(color: const Color(0xffDEEDFA), borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Set your withdrawal pin here',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }

  Widget _buildBallanceSection() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [Colors.blue, WBColors.primary],
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Total wallet ballance',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '3000 USD',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    Widget _buildTokenCard() {
      return Column(
        children: [
          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(image: AssetImage('assets/img/bitcoin_logo.png'))),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Ethereum',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                '\$2.653',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.7)),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '\$2.653',
                                style: TextStyle(fontSize: 12, color: Colors.red.withOpacity(0.7)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '0.091 ETH',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$200',
                          style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
        ],
      );
    }

    return Container(
        height: _size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 70),
            _buildPinButton(),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: _size.height - 260,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'My Assets',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Manage your asset activities here',
                        style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildBallanceSection(),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Tokens',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const AppSearchDelegate(),
                    const SizedBox(height: 30),
                    ...List.generate(8, (index) => _buildTokenCard())
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
