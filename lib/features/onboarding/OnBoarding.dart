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
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ====== Skip Button ======
                if (_currentPage < 2)
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.02,
                        right: width * 0.04,
                      ),
                      child: TextButton(
                        onPressed: () {
                          _controller.jumpToPage(2);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),

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
                        title: "Fast & Reliable Service",
                        description:
                        "Get wheelchair assistance at the airport within minutes",
                        pageIndex: 0,
                      ),
                      _buildPage(
                        context: context,
                        image: AssetsManager.onboard2,
                        title: "Professional Assistants",
                        description:
                        "Trained staff ready to help with your journey",
                        pageIndex: 1,
                      ),
                      _buildPage(
                        context: context,
                        image: AssetsManager.onboard3,
                        title: "Easy Payment",
                        description:
                        "Secure wallet system with Apple Pay and more",
                        pageIndex: 2,
                      ),
                    ],
                  ),
                ),

                // ====== Page Indicator ======
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    bool isActive = _currentPage == index;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                      height: 8,
                      width: isActive ? 22 : 8,
                      decoration: BoxDecoration(
                        color: isActive
                            ? AppColor.primary
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
                ),

                // ====== Buttons Section ======
                Padding(
                  padding: EdgeInsets.only(
                    bottom: height * 0.05,
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05,
                  ),
                  child: _currentPage == 0
                      ? SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration:
                          const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primary,
                        padding: EdgeInsets.symmetric(
                          vertical: height * 0.02,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(width * 0.08),
                        ),
                        elevation: 6,
                        shadowColor:
                        AppColor.primary.withOpacity(0.4),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                      : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            if (_currentPage > 0) {
                              _controller.previousPage(
                                duration:
                                const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 16,
                          ),
                          label: const Text("Back"),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.018),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(width * 0.08),
                            ),
                            side: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                            foregroundColor: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.04),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            if (_currentPage < 2) {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            }
                            /*
                            else {
                              Navigator.pushReplacementNamed(
                                  context, Routes.signup);
                            }

                             */
                          },
                          icon: Text(
                            _currentPage == 2
                                ? "Get Started"
                                : "Next",
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          label: const Icon(Icons.arrow_forward_ios,
                              size: 16),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary,
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.018),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(width * 0.08),
                            ),
                            foregroundColor: Colors.white,
                            elevation: 6,
                            shadowColor:
                            AppColor.primary.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
