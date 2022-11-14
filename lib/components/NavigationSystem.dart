import 'package:bills_bid/dashboard.dart';
import 'package:bills_bid/groups.dart';
import 'package:bills_bid/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavigationSystem extends StatefulWidget {
  const NavigationSystem({Key? key}) : super(key: key);

  @override
  State<NavigationSystem> createState() => _NavigationSystemState();
}

class _NavigationSystemState extends State<NavigationSystem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class NavigationSystemC extends StatefulWidget {
  const NavigationSystemC({Key? key}) : super(key: key);

  @override
  State<NavigationSystemC> createState() => _NavigationSystemCState();
}

class _NavigationSystemCState extends State<NavigationSystemC> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style7,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    GroupsPage(),
    DashboardPage(),
    ProfilePage(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.group),
      title: ("Groups"),
      textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      activeColorSecondary: Colors.white,
      activeColorPrimary: Color(0xff72CB2C),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.house),
      title: ("Dashboard"),
      textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      activeColorSecondary: Colors.white,
      activeColorPrimary: Color(0xff72CB2C),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.person_crop_circle_fill),
      title: ("Profile"),
      textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      activeColorSecondary: Colors.white,
      activeColorPrimary: Color(0xff72CB2C),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
