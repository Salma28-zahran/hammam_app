import 'package:flutter/material.dart';
import 'package:hammam_app/features/tabs/presentations/widgets/bottom_nav_bar.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Orders Screen")),
    Center(child: Text("Saved Screen")),
    Center(child: Text("Account Screen")),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
