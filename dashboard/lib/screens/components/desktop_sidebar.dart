import 'package:flutter/material.dart';

class DesktopSidebar extends StatelessWidget {
  const DesktopSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            const SizedBox(height: 20),
            // line
            SizedBox(
              height: 2,
              width: 120,
              child: Container(color: Colors.grey),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              selectedColor: Colors.grey,
              selected: true,
              leading: const Icon(Icons.dashboard),
              title: const Text(
                ("Desktop"),
              ),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.analytics),
              title: const Text(
                ("Analysis"),
              ),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.forest),
              title: const Text(
                ("Prediction"),
              ),
              onTap: () {},
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.cast_for_education),
              title: const Text(
                ("Forecast"),
              ),
              onTap: () {},
            ),
            const Spacer(),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: const Icon(Icons.power_settings_new),
              title: const Text(
                ("Sign Out"),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
