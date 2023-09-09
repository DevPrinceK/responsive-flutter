import 'package:flutter/material.dart';

class DesktopMainContent extends StatelessWidget {
  const DesktopMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to the Dashboard"),
          ],
        ),
      ),
    );
  }
}
