import 'package:flutter/material.dart';
import 'katalog_screen.dart';
import 'racik_ai_screen.dart';
import 'about_screen.dart';

class HomeNavScreen extends StatefulWidget {
  const HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    KatalogScreen(),
    RacikAiScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Katalog Resep'),
          BottomNavigationBarItem(icon: Icon(Icons.auto_awesome), label: 'Racik AI'),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'About'),
        ],
      ),
    );
  }
}