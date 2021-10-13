import 'package:clickfy/navbar_key.dart';
import 'package:clickfy/screen/account.dart';
import 'package:clickfy/screen/cart.dart';
import 'package:clickfy/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int selectedIndex = 0;
  final screen = [HomeScreen(), AccountScreen(), CartScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: selectedIndex,
        key: NavbarKey.getKey(),
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.qr_code, size: 30),
          Icon(Icons.search, size: 30)
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: screen[selectedIndex],
    );
  }
}
