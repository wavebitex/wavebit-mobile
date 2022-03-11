import 'package:flutter/material.dart';
import 'package:wavebitex/ui/auth/sign_up.dart';
import 'package:wavebitex/ui/landing_page/index.dart';
import 'package:wavebitex/ui/wallet/wallet.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleBottomNavigation(int i) {
  switch (i) {
    case 0:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
      break;
    case 1:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Wallet()));
      break;
    case 2:
      () {};
      break;
    case 3:
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
      break;
    default:
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
  }
}
    return BottomNavigationBar(
        onTap: (i) {
          handleBottomNavigation(i);
        },
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                color: Colors.black.withOpacity(0.5),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.view_in_ar,
                color: Colors.black.withOpacity(0.5),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.compare_arrows,
                color: Colors.black.withOpacity(0.5),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.perm_identity,
                color: Colors.black.withOpacity(0.5),
              )),
        ],
      );
  }
}


