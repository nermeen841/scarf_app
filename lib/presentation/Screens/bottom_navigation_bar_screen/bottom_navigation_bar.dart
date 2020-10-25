import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/cart_screen.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/home_screen.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/more_screen.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/profile_Screen.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/search_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
    MoreScreen()
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        labelStyle: bmnav.LabelStyle(
            visible: true ,
            onSelectTextStyle: TextStyle( color: Colors.pinkAccent),
          textStyle: TextStyle(
              fontWeight: FontWeight.w400 ,
              fontSize: 14,
              color: Colors.black54)
        ),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          bmnav.BottomNavItem(Icons.notifications_none, label: 'Search'),
          bmnav.BottomNavItem(Icons.shopping_cart, label: 'Cart'),
          bmnav.BottomNavItem(Icons.perm_identity, label: 'Profile'),
          bmnav.BottomNavItem( Icons.dehaze, label: "More")
        ],
         iconStyle: bmnav.IconStyle( color: Colors.black54 ,onSelectColor: Colors.pinkAccent),
        elevation: 0,

      ),
    );
  }

  }

