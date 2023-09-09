import 'package:flutter/material.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.deepPurple,
      child: const Column(
        children: [
          Text(
            "Copyright @ 2023",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 18),
          ),
          Text(
            "EnergiaAI",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}
