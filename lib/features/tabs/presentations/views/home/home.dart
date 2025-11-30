import 'package:flutter/material.dart';
import 'package:hammam_app/core/resources/app_assets_manager.dart';
import 'package:hammam_app/theme/app_theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to Hammam",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 16,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                   SizedBox(height: 3),

                   Text(
                    "Home",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 32,
                      color: AppColor.gray900,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                   SizedBox(height: 3),

                   Text(
                    "View your trip updates",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Image.asset(
                  AssetsManager.homePicture,
                  height: height * 0.22,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  left: 12,
                  bottom: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hammam",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.7),
                              offset: Offset(1, 2),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Let's make your journey easier.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          shadows: [
                            Shadow(
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.7),
                              offset: Offset(1, 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 22),

              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics:  NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.12,
                children: [
                  _homeCard(
                    title: "Good Afternoon, Mohamed Mostafa",
                    subtitle: "Welcome back to Hammam",
                    arrow: false,
                  ),

                  _homeCard(
                    title: "Chair Waiting Times",
                    subtitle: "View the average wait times in your airport",
                  ),

                  _homeCard(
                    title: "Tours and Activities",
                    subtitle: "Let us help plan your trip",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Custom Card  widget
  Widget _homeCard({
    required String title,
    required String subtitle,
    bool arrow = true,
  }) {
    return Container(
      padding:  EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset:  Offset(0, 4),
            color: AppColor.primary.withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: "Arial",
                    color: AppColor.primary,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),

           SizedBox(height: 8),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  subtitle,
                  style: TextStyle(color: AppColor.gray500, fontSize: 14),
                ),
              ),
              if (arrow)
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  weight: 900,
                  color: Colors.blue.shade600,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
