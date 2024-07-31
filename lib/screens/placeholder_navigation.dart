import 'package:flutter/material.dart';
import 'listado_post.dart';
import 'listado_to_do.dart';
import 'profile.dart';

class PlaceholderNavigation extends StatefulWidget {
  const PlaceholderNavigation({super.key});

  @override
  _PlaceholderNavigationState createState() => _PlaceholderNavigationState();
}
//agregamos el placeholder para usar mejor la funcionalidad de navegacion
class _PlaceholderNavigationState extends State<PlaceholderNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PostListScreen(),
    TodoListScreen(), 
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Todo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
