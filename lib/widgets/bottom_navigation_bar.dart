import 'package:flutter/material.dart';
import 'package:movieapp/movies_list_screen.dart';
import 'package:movieapp/searchscreen.dart';

class BottomNavigationBarWidegt extends StatefulWidget {
  const BottomNavigationBarWidegt({super.key});

  @override
  State<BottomNavigationBarWidegt> createState() =>
      _BottomNavigationBarWidegtState();
}

class _BottomNavigationBarWidegtState extends State<BottomNavigationBarWidegt> {
  int _currentIndex = 0;

  final List<Widget> body = [
    MovieListScreen(),
    Searchscreen(), // Make sure this is the correct name of your Search screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background for the whole screen

      // White icons

      body: body[_currentIndex], // Display the respective screen
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Dark background for BottomNavBar
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white, // White color for selected item
        unselectedItemColor: Colors.grey, // Grey color for unselected items
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
        ],
      ),
    );
  }
}
