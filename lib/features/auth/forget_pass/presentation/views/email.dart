import 'package:flutter/material.dart';
import 'package:hammam_app/core/resources/app_assets_manager.dart';
import 'package:hammam_app/core/route/routes.dart';
import 'package:hammam_app/theme/app_theme.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            SizedBox(
              height: 190,
              child: Image.asset(
                AssetsManager.logo,
                fit: BoxFit.contain,
              ),
            ),
           // SizedBox(height: 1),
          Text(
            "Please enter your email to receive\nthe verification code",
            style: AppColor.textgrey,
            textAlign: TextAlign.center,
          ),
            SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 100,
              width: 370,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: AppColor.gray500,
                  ),

                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      color: Color(0xFFE5E7EB),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      color: Color(0xFFE5E7EB),
                      width: 1,
                    ),
                  ),

                  hintText: "john@example.com",
                  hintStyle: TextStyle(
                    fontFamily: "Arial",
                    color: AppColor.gray500,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              width: 390,
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
                onPressed: () {
                  Navigator.pushNamed(context, PageRouteName.otp2);
                },
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
      )


    );
  }
}
