import 'package:flutter/material.dart';
import 'package:wavebitex/utils/splash/wavebit_colors.dart';

class AppBottomNav extends StatefulWidget {
  final Function(int i) onTap;
  const AppBottomNav({Key? key, required this.onTap}) : super(key: key);

  @override
  State<AppBottomNav> createState() => _AppBottomNavState();
}

class _AppBottomNavState extends State<AppBottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: WBColors.primary,
      onTap: (i) {
        widget.onTap(i);
        setState(() {
          _currentIndex = i;
        });
      },
      items: [
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.view_in_ar,
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.compare_arrows,
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.perm_identity,
            )),
      ],
    );
  }
}
