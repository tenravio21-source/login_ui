import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

final List<SalomonBottomBarItem> navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.home),
    title: const Text("Home"),
    // Matches 'Fast, Fluid and Secure' page
    selectedColor: const Color(0xff8f94fb),
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.favorite_border),
    title: const Text("Likes"),
    // Matches 'Connect with your friends' page
    selectedColor: const Color(0xff7367f0),
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.search),
    title: const Text("Search"),
    // Matches 'Bookmark your favourites' page
    selectedColor: Colors.indigo.shade400,
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.person),
    title: const Text("Profile"),
    // Matches 'Follow creators' page
    selectedColor: const Color(0xff4e54c8),
  ),
];
