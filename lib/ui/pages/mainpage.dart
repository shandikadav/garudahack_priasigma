import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';
import 'package:garudahack_priasigmas/ui/pages/daily_page.dart';
import 'package:garudahack_priasigmas/ui/pages/home_page.dart';
import 'package:garudahack_priasigmas/ui/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    DailyPage(),
    ProfilePage(),
    Text('Home Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: const Color.fromRGBO(0, 0, 0, 1),
        notchMargin: 2.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.food_bank),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }
}
