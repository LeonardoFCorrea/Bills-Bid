import 'package:bills_bid/dashboard.dart';
import 'package:bills_bid/home.dart';
import 'package:bills_bid/profile.dart';
import 'package:flutter/material.dart';

class DownMenuComponent extends StatefulWidget {
  const DownMenuComponent({Key? key}) : super(key: key);

  @override
  State<DownMenuComponent> createState() => _DownMenuComponentState();
}

class _DownMenuComponentState extends State<DownMenuComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class DownMenu extends StatefulWidget {
  const DownMenu({Key? key}) : super(key: key);

  @override
  State<DownMenu> createState() => _DownMenuState();
}

class _DownMenuState extends State<DownMenu> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DashboardPage()),
          );
          break;
        }
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
        break;
    }
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people_rounded),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff7ED936),
        backgroundColor: Colors.white70,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        elevation: 100,
        selectedFontSize: 20,
      ),
    );
  }
}
