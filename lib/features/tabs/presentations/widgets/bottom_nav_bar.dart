import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hammam_app/theme/app_theme.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.white,
      selectedItemColor:AppColor.primary ,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      elevation: 10,
      items:  [
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: 'My trips',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Marketplace',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_rounded),
          label:'Menu',

        ),
      ],
    );
  }
}
