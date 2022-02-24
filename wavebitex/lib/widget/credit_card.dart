import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class AppCreditCard extends StatefulWidget {
  const AppCreditCard({ Key? key }) : super(key: key);

  @override
  _AppCreditCardState createState() => _AppCreditCardState();
}

class _AppCreditCardState extends State<AppCreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      decoration: BoxDecoration(
        color: WBColors.primary,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Wallet balance', style:TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
               Icon(Icons.visibility, color: Colors.white,)
            ],
          ),
          const SizedBox(height: 15,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
             const  Text('\$15,322', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(0.8),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: const Text('My profile', style: TextStyle(fontWeight: FontWeight.bold), ),
               )
            ],
          ),
          const SizedBox(height: 45,),
           Row(
            children:  [
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                 decoration: BoxDecoration(
                   color: WBColors.secondary,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: const Text('Withdraw', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white), ),
               ),
               const SizedBox(width: 20),
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                 decoration: BoxDecoration(
                   color: WBColors.secondary,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: const Text('Swap', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white), ),
               )
            ],
          ),
        ],),
      ),
    );
  }
}