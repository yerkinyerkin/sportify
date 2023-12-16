import 'package:flutter/material.dart';
import 'package:sportify/core/custom/utils/constants.dart';
import 'package:sportify/screens/competition/screens/competition_screen.dart';
import 'package:sportify/screens/profile/screens/profile_screen.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  int index;
  MainScreen({super.key, required this.index});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _widgetOptions = <Widget>[
    const CompetitionScreen(),
    const Center(
      child: Text("News"),
    ),
    const Center(
      child: Text("Favorites"),
    ),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: _widgetOptions.elementAt(widget.index)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppConst.kDarkPurple),
        selectedIconTheme: const IconThemeData(color: AppConst.kDarkPurple),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Басты бет",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Жаңалықтар",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Таңдаулы",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Басқа",
          ),
        ],
        currentIndex: widget.index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
