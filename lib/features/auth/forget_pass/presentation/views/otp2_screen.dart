import 'package:flutter/material.dart';
import 'package:hammam_app/theme/app_theme.dart';
import '../../../../../../core/route/routes.dart';

class Otp2Screen extends StatefulWidget {
  const Otp2Screen({super.key});

  @override
  State<Otp2Screen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<Otp2Screen> {
  List<String> otp = List.filled(6, "");
  List<TextEditingController> controllers = List.generate(
    6,
        (index) => TextEditingController(),
  );

  bool get isComplete => otp.every((e) => e.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF3F4F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black87, size: 18),
          onPressed: () =>
              Navigator.pushReplacementNamed(context, PageRouteName.signup),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Verify your Email",
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColor.gray900,
                  ),
                ),
              ),
              SizedBox(height: 30),
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
                  children: [
                    Text(
                      "Enter The Confirmation Code We Sent to\nb****3z@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15,
                          fontFamily: "Arial",
                          fontWeight: FontWeight.w400,

                          color: AppColor.gray500),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resent Code",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: "Arial",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(6, (index) {
                        return SizedBox(
                          width: 45,
                          height: 50,
                          child: TextField(
                            controller: controllers[index],
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.isNotEmpty && index < 5) {
                                FocusScope.of(context).nextFocus();
                              }
                              otp[index] = value;
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),

                    SizedBox(height: 40),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: isComplete
                                ? Colors.blueAccent.withOpacity(0.4)
                                : Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isComplete
                              ? Colors.lightBlueAccent
                              : Colors.grey.shade300,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          elevation: 0,
                        ),
                        onPressed: isComplete
                            ? () {
                          Navigator.pushNamed(context, PageRouteName.newpass
                          );
                        }
                            : null,
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontFamily: "Arial",
                            fontSize: 16,
                            color: isComplete ? Colors.white : Colors.black87,
                            fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
