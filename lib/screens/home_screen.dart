import 'package:airplane_shamo/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/themes.dart';
import '../widgets/home_content.dart';
import 'sign_up_screen.dart';
import 'splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _unSelectedIndex = false;

  static const List<Widget> _wOptions = [
    HomeContent(),
    DetailScreen(),
    SignUpScreen(),
    SplashScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _unSelectedIndex = !_unSelectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg2,
      body: _wOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icons/icon-globe.png',
                width: 24,
                color: _selectedIndex == 0 ? colorBg : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icons/icon-book.png',
                width: 24,
                color: _selectedIndex == 1 ? colorBg : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icons/icon-credit.png',
                width: 24,
                color: _selectedIndex == 2 ? colorBg : Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/icons/icon-settings.png',
                width: 24,
                color: _selectedIndex == 3 ? colorBg : Colors.grey,
              ),
            ),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
