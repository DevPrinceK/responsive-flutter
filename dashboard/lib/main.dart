import 'package:dashboard/responsive_layout.dart';
import 'package:dashboard/screens/desktop/desktop_home.dart';
import 'package:dashboard/screens/phone/mobile_home.dart';
import 'package:dashboard/screens/tablet/tablet_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ENERGIA AI PLATFORM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobile: MobileHomeScreen(),
        tablet: TabletHomeScreen(),
        desktop: DesktopHomeScreen(),
      ),
    );
  }
}
