import 'package:flutter/material.dart';
import 'package:myfirstproject/bottom_screen/about.dart';
import 'package:myfirstproject/bottom_screen/cart.dart';
import 'package:myfirstproject/bottom_screen/home.dart';
import 'package:myfirstproject/bottom_screen/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  List<Widget> lstbottomScreen = [
    const HomeScreen(),
    const CartScreen(),
    const AboutScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom navigation bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.man), label: "profile"),
        ],
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: lstbottomScreen[_selectedIndex],
    );
  }
}
