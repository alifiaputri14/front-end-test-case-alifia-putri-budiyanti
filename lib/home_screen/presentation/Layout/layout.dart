import 'package:apotecth/home_screen/presentation/screen/home_page_screen.dart';
import 'package:apotecth/profile_screen/presentation/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<homeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePageScreen(),
    Text('Notification'),
    Text('Add'),
    Text('wishlist'),
    profileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color activeColor = Color.fromRGBO(65, 87, 255, 1.0);
    Color unactiveColor = Color.fromRGBO(9, 15, 71, 0.45);
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/add.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: activeColor,
        unselectedItemColor: unactiveColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
