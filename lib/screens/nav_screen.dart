import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/screens/home_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Search': Icons.search,
    'Coming Soon': Icons.queue_play_next,
    'Downloads': Icons.file_download,
    'More': Icons.menu,
  };

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){setState(() {
          _selectedIndex = index;
        });},
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 11.0,
        unselectedFontSize: 11.0,
        items: _icons
            .map(
              (title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                  icon: Icon(icon, size: 30.0),
                  title: Text(title)
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}
