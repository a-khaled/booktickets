import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget>_widgetOptions = <Widget>[
    const Text('Home'),
    const Text('Search'),
    const Text('Tickets'),
    const Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My tickets'),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: 'Home'),
        ],
      ),
    );
  }
}
