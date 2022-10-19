import 'package:flutter/material.dart';
import 'package:lozi/screens/homepage.dart';
import 'package:lozi/screens/favorites.dart';
import 'package:lozi/screens/settings.dart';

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), favorites(), settings()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        // unselectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 14),
        backgroundColor: Color.fromARGB(255, 203, 215, 222),
        fixedColor: Color.fromARGB(255, 0, 0, 0),
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.green,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.scatter_plot,
              color: Colors.green,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
