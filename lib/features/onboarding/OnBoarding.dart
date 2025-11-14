import 'package:flutter/material.dart';
import 'package:hammam_app/core/resources/app_assets_manager.dart';
import 'package:hammam_app/core/route/routes.dart';
import 'package:hammam_app/theme/app_theme.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ====== Language Switch Button (تم إيقافه بالكامل) ======
            const SizedBox(height: 20),

            // ====== PageView ======
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                children: [
                  _buildPage(
                    context: context,
                    image: AssetsManager.onboard1,
                    title: "Find your destination",
                    description: "Discover and explore your best trips.",
                    pageIndex: 0,
                  ),
                  _buildPage(
                    context: context,
                    image: AssetsManager.onboard2,
                    title: "Book your seat",
                    description: "Choose your seat easily and quickly.",
                    pageIndex: 1,
                  ),
                  _buildPage(
                    context: context,
                    image: AssetsManager.onboard3,
                    title: "Enjoy your trip",
                    description: "Have a comfortable and safe experience.",
                    pageIndex: 2,
                  ),
                ],
              ),
            ),

            // ====== Button ======
            Padding(
              padding: EdgeInsets.only(
                bottom: height * 0.05, // 40
                top: height * 0.03,    // 24
              ),
              child: SizedBox(
                width: width * 0.95,
                height: height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    if (_currentPage < 2) {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      Navigator.pushReplacementNamed(context, PageRouteName.login);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.03),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ====== Page Builder ======
  Widget _buildPage({
    required BuildContext context,
    required String image,
    required String title,
    required String description,
    required int pageIndex,
  }) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ====== Image ======
            Container(
              width: width * 0.9,
              height: height * 0.42,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.03),
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(image),
              ),
            ),

            SizedBox(height: height * 0.015),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppColor.textblack.copyWith(fontSize: width * 0.05),

            ),
            SizedBox(height: height * 0.015),

            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: width * 0.038,
                color: Colors.grey,
                height: 1.4,
              ),
            ),

            SizedBox(height: height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                  width: width * 0.025,
                  height: width * 0.025,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? AppColor.primary
                        : Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
