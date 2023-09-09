import 'package:dashboard/screens/components/desktop_footer.dart';
import 'package:dashboard/screens/components/desktop_main_content.dart';
import 'package:dashboard/screens/components/desktop_sidebar.dart';
import 'package:flutter/material.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("EnergiaAI Desktop"),
        actions: [
          const Text(
            "prince@gmail.com",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          PopupMenuButton<String>(
            icon: const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.amber,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            onSelected: (String choice) {
              if (choice == 'Profile') {
              } else if (choice == 'Settings') {}
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Profile',
                  child: Text('Profile'),
                ),
                const PopupMenuItem<String>(
                  value: 'Sign Out',
                  child: Text('Settings'),
                ),
                // Add more menu items as needed
              ];
            },
          )
        ],
      ),
      body: const Row(
        children: [
          // sidebae
          DesktopSidebar(),
          // main content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DesktopMainContent(),
                Spacer(),
                DesktopFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
