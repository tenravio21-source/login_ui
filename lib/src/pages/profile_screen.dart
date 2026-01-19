// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const themeColor = Color(0xff4e54c8);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: 50,
            backgroundColor: themeColor,
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
          const SizedBox(height: 10),
          const Text(
            "User Name",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text("user@example.com", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notifications"),
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text("Logout"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
