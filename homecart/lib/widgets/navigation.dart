import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:homecart/screens/authenticate/login_page.dart';
import 'package:homecart/screens/daily/dailyList_page.dart';
import 'package:homecart/screens/home/home_screen.dart';
import 'package:homecart/screens/profile_page.dart';

import 'appbar.dart';
import 'drawer.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedIndex = 0;
  final tabs = [Home(), DailyListPage(), Profile(), Login()];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      drawer: MainDrawer(),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_outlined),
              title: Text('Daily List')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.orange[700],
        onTap: _onItemTapped,
      ),
    );
  }
}
