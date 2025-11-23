import 'package:flutter/material.dart';
import '../../../../../../core/route/routes.dart';
import '../../../../../../theme/app_theme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();

}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF3F4F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black87, size: 18),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, PageRouteName.login),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Account",
              style: TextStyle(
                fontFamily: "Arial",
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColor.gray900,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Enter your details to get started",
              style: TextStyle(
                fontFamily: "Arial",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.gray500,
              ),
            ),
            SizedBox(height: 40),

            // Input container
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE5E7EB), width: 1.4),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full Name",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.gray900,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "John Doe",
                      hintStyle: TextStyle(
                        fontFamily: "Arial",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColor.gray500,
                      ),
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: AppColor.gray500,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF3F4F6),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.gray900,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "john@example.com",
                      hintStyle: TextStyle(
                        fontFamily: "Arial",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColor.gray500,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColor.gray500,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF3F4F6),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  Text(
                    "Phone Number (Optional)",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.gray900,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "+1 (555) 000-0000",
                      hintStyle: TextStyle(
                        fontFamily: "Arial",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColor.gray500,
                      ),
                      prefixIcon: Icon(
                        Icons.phone_outlined,
                        color: AppColor.gray500,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF3F4F6),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: "Arial",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.gray900,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    obscureText: _obscurePassword,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        fontFamily: "Arial",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColor.gray500,
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColor.gray500,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColor.gray500,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),

                      filled: true,
                      fillColor: const Color(0xFFF3F4F6),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),

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
                      onPressed: () => Navigator.pushReplacementNamed(
                        context,
                        PageRouteName.otp,
                      ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
