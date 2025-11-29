import 'package:flutter/material.dart';
import 'package:hammam_app/core/resources/app_assets_manager.dart';
import 'package:hammam_app/theme/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return SafeArea(

      child: Container(
        color: AppColor.white,
        alignment: Alignment.centerLeft,
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: Image.asset(
          AssetsManager.login,
          height: h * 0.05,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
