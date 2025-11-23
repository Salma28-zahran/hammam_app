import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hammam_app/core/resources/app_assets_manager.dart';
import 'package:hammam_app/theme/app_theme.dart';

import '../../../../../core/route/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF3F4F6),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.06,
          vertical: height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: height * 0.1,
                width: height * 0.1,
                decoration: BoxDecoration(
                  color: Color(0xFFE8F5FF),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.asset("assets/images/png/login_icon.png"),
              ),
            ),

            SizedBox(height: height * 0.02),

            Text(
              "Welcome to Hammam",
              style: TextStyle(
                fontFamily: "Arial",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColor.gray900,
              ),
            ),
            SizedBox(height: height * 0.008),
            Text(
              "Sign in to continue",
              style: TextStyle(
                fontFamily: "Arial",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.gray500,
              ),
            ),

            SizedBox(height: height * 0.045),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE5E7EB), width: 1.4),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColor.gray900,
                    ),
                  ),
                  SizedBox(height: height * 0.011),
                  Text(
                    "Enter your phone number to receive a verification code",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.gray500,
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColor.gray900,
                    ),
                  ),
                  SizedBox(height: height * 0.009),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColor.gray500,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "john@example.com",
                      hintStyle: TextStyle(
                        fontFamily: "Arial",
                        color: AppColor.gray500,

                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF3F4F6),
                    ),
                  ),
                  SizedBox(height: height * 0.001),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PageRouteName.email);

                    },
                    child: Text(
                      "forgot_password?",
                      style: GoogleFonts.montserrat(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                  ),




                  SizedBox(height: height * 0.025),



                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueAccent.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontFamily: "Arial",
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.18,
                          indent: 4,
                          endIndent: 10,
                          color: Color(0xFFE5E7EB),
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          fontFamily: "Arial",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.gray500,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1.18,
                          indent: 10,
                          endIndent: 4,
                          color: Color(0xFFE5E7EB),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.045),

                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF3F4F6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(
                            color: Color(0xFFE5E7EB),
                            width: 1.4,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          PageRouteName.signup,
                        );
                      },
                      child: Text(
                        "Create New Account",
                        style: TextStyle(
                          fontFamily: "Arial",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AppColor.gray900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Text(
              "🚀 Quick Demo Mode (Skip Auth)",
              style: TextStyle(
                fontFamily: "Arial",
                fontWeight: FontWeight.w400,
                color: AppColor.gray900,
              ),
            ),

            SizedBox(height: 35),

            Column(
              children: [
                Text(
                  "By continuing, you agree to our",
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontWeight: FontWeight.w400,
                    color: AppColor.gray500,
                  ),
                ),
                Text(
                  "Terms of Service & Privacy Policy",
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontWeight: FontWeight.w400,
                    color: AppColor.gray500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
