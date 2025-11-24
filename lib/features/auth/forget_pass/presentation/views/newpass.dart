import 'package:flutter/material.dart';
import 'package:hammam_app/core/resources/app_assets_manager.dart';
import 'package:hammam_app/core/route/routes.dart';
import 'package:hammam_app/theme/app_theme.dart';

class Newpass extends StatefulWidget {
  const Newpass({super.key});

  @override
  State<Newpass> createState() => _NewpassState();
}

class _NewpassState extends State<Newpass> {
  bool showNewPass = false;
  bool showConfirmPass = false;

  String newPass = "";
  String confirmPass = "";
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    bool isValid = newPass.isNotEmpty &&
        confirmPass.isNotEmpty &&
        newPass == confirmPass;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),

            SizedBox(
              height: 190,
              child: Image.asset(
                AssetsManager.logo,
                fit: BoxFit.contain,
              ),
            ),

            Text(
              "Please enter your new password\nand confirm it",
              style: AppColor.textgrey,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            // ------------------ New Password ------------------
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "New Password",
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: AppColor.gray900,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2),

            SizedBox(
              height: 75,
              width: 370,
              child: TextField(
                obscureText: !showNewPass,
                onChanged: (value) {
                  setState(() {
                    newPass = value;
                    showError = confirmPass.isNotEmpty && newPass != confirmPass;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: Icon(
                      showNewPass ? Icons.visibility : Icons.visibility_off,
                      color: AppColor.gray500,
                    ),
                    onPressed: () {
                      setState(() {
                        showNewPass = !showNewPass;
                      });
                    },
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide:
                    const BorderSide(color: Color(0xFFE5E7EB), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide:
                    const BorderSide(color: Color(0xFFE5E7EB), width: 1),
                  ),
                  hintText: "Enter new password",
                  hintStyle: TextStyle(
                    fontFamily: "Arial",
                    color: AppColor.gray500,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            // ------------------ Confirm Password ------------------
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: AppColor.gray900,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2),

            SizedBox(
              width: 370,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 75,
                    child: TextField(
                      obscureText: !showConfirmPass,
                      onChanged: (value) {
                        setState(() {
                          confirmPass = value;
                          showError = confirmPass.isNotEmpty &&
                              newPass != confirmPass;
                        });
                      },
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: Icon(
                            showConfirmPass
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColor.gray500,
                          ),
                          onPressed: () {
                            setState(() {
                              showConfirmPass = !showConfirmPass;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(
                              color: Color(0xFFE5E7EB), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(
                              color: Color(0xFFE5E7EB), width: 1),
                        ),
                        hintText: "Re-enter password",
                        hintStyle: TextStyle(
                          fontFamily: "Arial",
                          color: AppColor.gray500,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),

                  // -------- Error Message ----------
                  if (showError)
                    const Padding(
                      padding: EdgeInsets.only(left: 5, top: 2),
                      child: Text(
                        "Passwords do not match",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 13,
                          fontFamily: "Arial",
                        ),
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 3),

            // ------------------ Continue Button ------------------
            Container(
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  if (isValid)
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  isValid ? Colors.lightBlueAccent : Colors.grey.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  elevation: 0,
                ),
                onPressed: isValid
                    ? () {
                  Navigator.pushNamed(context, PageRouteName.login);
                }
                    : null,
                child: const Text(
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
    );
  }
}
