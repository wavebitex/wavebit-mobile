import 'package:flutter/material.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/core/dao/dao.dart';
import 'package:wavebitex/presentation/Account/account_page.dart';
import 'package:wavebitex/presentation/landing_page/landing_page.dart';
import 'package:wavebitex/presentation/wallet/wallet.dart';
import 'package:wavebitex/widgets/bottom_nav.dart';

class Home extends StatefulWidget {
  final User user;
  const Home({Key? key, required this.user}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();
  late User? _user;

  void getSavedUserObject() async {
    _user = await Dao().getUserObj();
  }

  void handleBottomNavigation(int clickeBottomNavIndex) {
    setState(() {
      _selectedIndex = clickeBottomNavIndex;
    });
  }

  Widget sectionToShow(int i) {
    switch (i) {
      case 0:
        return LandingPage(
            user: widget.user,
            drawerHandler: () {
              _scaffoldState.currentState!.openDrawer();
            },
          );
      case 1:
       return  Wallet();
      case 2:
        return LandingPage(
            user: widget.user,
            drawerHandler: () {
              _scaffoldState.currentState!.openDrawer();
            },
          );
      case 3:
        return LandingPage(
            user: widget.user,
            drawerHandler: () {
              _scaffoldState.currentState!.openDrawer();
            },
          );
      default:
        return LandingPage(
            user: widget.user,
            drawerHandler: () {
              _scaffoldState.currentState!.openDrawer();
            },
          );
    }
  }

  @override
  void initState() {
    getSavedUserObject();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldState,
      drawer: const AccountPage(),
      body: Container(
          height: _size.height,
          child: sectionToShow(_selectedIndex)),
      bottomNavigationBar: AppBottomNav(
        onTap: (index) {
          handleBottomNavigation(index);
        },
      ),
    );
  }
}
