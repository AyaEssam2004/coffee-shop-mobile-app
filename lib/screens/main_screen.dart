import 'package:flutter/material.dart';
import 'package:my_project/screens/home.dart';

class MainScreen extends StatefulWidget {
  static String id = "mainscreen";
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Home(),
    Center(child: Text("Favorites Page", style: TextStyle(fontSize: 22))),
    Center(child: Text("Profile Page", style: TextStyle(fontSize: 22))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFC67C4E),
        shape: const CircleBorder(),
        child: const Icon(Icons.shopping_cart, color: Colors.white),
        onPressed: () {
          print("Cart Button Pressed");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home,
                    color: _selectedIndex == 0 ? Colors.brown : Colors.grey),
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: Icon(Icons.favorite,
                    color: _selectedIndex == 1 ? Colors.brown : Colors.grey),
                onPressed: () => _onItemTapped(1),
              ),
              const SizedBox(width: 50),
              IconButton(
                icon: Icon(Icons.person,
                    color: _selectedIndex == 2 ? Colors.brown : Colors.grey),
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.grey),
                onPressed: () {
                  print("Settings Pressed");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
