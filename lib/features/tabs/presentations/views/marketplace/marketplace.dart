import 'package:flutter/material.dart';
import 'package:hammam_app/core/resources/app_assets_manager.dart';
import 'package:hammam_app/theme/app_theme.dart';

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.white,

      body: Expanded(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Marketplace",
                  style: TextStyle(
                    fontFamily: 'Arial',
                    color: AppColor.gray900,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset(
                AssetsManager.chair,
                height: h * 0.25,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Introducing our chairs to make \nyour journey easier",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: w * 0.045,
                  color: AppColor.gray500,
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              width: w * 0.5,
              height: h * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Text(
                  "Order Now",
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Spacer(),
            TextButton(
              onPressed: () {
                // Action here
              },
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.help_outline, color: AppColor.primary),
                  SizedBox(width: 6),
                  Text(
                    "Need Help?",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: AppColor.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.primary,
                      decorationThickness: 1,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
