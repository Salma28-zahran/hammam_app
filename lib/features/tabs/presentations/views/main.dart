import 'package:flutter/material.dart';
import 'package:hammam_app/features/tabs/presentations/views/home/home.dart';
import 'package:hammam_app/features/tabs/presentations/views/marketplace/marketplace.dart';
import 'package:hammam_app/features/tabs/presentations/views/menu/menu.dart';
import 'package:hammam_app/features/tabs/presentations/views/my%20trips/my_trip.dart';
import 'package:hammam_app/features/tabs/presentations/widgets/app_bar.dart';
import 'package:hammam_app/features/tabs/presentations/widgets/bottom_nav_bar.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
   const MyTrip(),
    const Home(),
    const Marketplace(),
    const Menu(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
