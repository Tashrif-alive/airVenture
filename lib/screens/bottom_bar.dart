import 'package:airventure/screens/home_screen.dart';
import 'package:airventure/screens/search_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:airventure/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'notification_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    NotificationScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(

        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar (
        backgroundColor: Colors.white70,

        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange.shade900,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label:"Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label:"Search"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
              activeIcon: Icon(Icons.notifications),label:"Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"Profile"),
        ],
      ),
    );
  }
}



