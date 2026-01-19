import 'package:flutter/material.dart';
import 'package:login_app_design/src/pages/slash_page/models/nav_item_model.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../home_page.dart';
import '../../likes_screen.dart';
import '../../profile_screen.dart';
import '../../search_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  // List of actual widgets to display for each tab
  final List<Widget> _pages = [
    const HomeScreen(),
    const LikesScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: navBarItems, // Imported from step 2
      ),
    );
  }
}
