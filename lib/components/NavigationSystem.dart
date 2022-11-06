import 'package:bills_bid/dashboard.dart';
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
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [
    DashboardPage(),
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
